#!/usr/bin/env python3
"""Generate the Issue #35 appropriateness-review queue and audit artifacts.

This generator never turns a machine classification into a human approval.  It
projects the 678 inconclusive sentence proofs into a stable work queue, keeps
manual decisions in a separate ledger, and emits summary/Lean data that make a
false completion claim fail closed.
"""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
import subprocess
import unicodedata
from collections import Counter, defaultdict
from datetime import date
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "formal" / "review-data"
LEAN_OUT = ROOT / "formal" / "lean" / "RagEvidence" / "AppropriatenessGenerated.lean"
PROOFS = OUT / "sentence_logical_proofs.csv"
QUEUE = OUT / "appropriateness_review_queue.csv"
DECISIONS = OUT / "appropriateness_review_decisions.csv"
GOLD = OUT / "appropriateness_gold_fixture.csv"
SUMMARY = OUT / "appropriateness_review_summary.csv"
MANIFEST = OUT / "appropriateness_review_manifest.json"
CONFIG = OUT / "appropriateness_review_config.json"
APPLICATIONS = OUT / "appropriateness_review_application_map.csv"
RELATIONS = OUT / "appropriateness_relation_evidence.csv"
SHEET_EXPORT = OUT / "appropriateness_sheet_export.csv"
SHEET_EXPORT_MANIFEST = OUT / "appropriateness_sheet_export_manifest.json"
SHEET_READBACK = OUT / "appropriateness_sheet_readback.json"
POST_REVIEW = OUT / "appropriateness_post_review_recalculation.json"
CLASSIFICATION_OVERRIDES = OUT / "appropriateness_classification_overrides.csv"

AUTHORITATIVE_DOCS_COMMIT = "52bebecfb2a435d0e7ff2efea557c5799674ded6"
EXPECTED_UNRESOLVED = 678
POLARITY_REQUIRED = "CONTROLLED_TERM_PROJECTION_REQUIRES_CLAIM_POLARITY_REVIEW"
FINAL_VERDICTS = {
    "APPROPRIATE_SUPPORTED",
    "APPROPRIATE_NORMATIVE",
    "APPROPRIATE_AFTER_QUALIFICATION",
    "REWRITE_REQUIRED",
    "REMOVE_OR_REPLACE",
    "CONTRADICTED",
    "BLOCKED",
}
SOURCE_ROLES = {
    "AUTHOR_CLAIM",
    "DEFINITION_OR_SPEC",
    "EMPIRICAL_RESULT",
    "COMPARATOR_DESCRIPTION",
    "BACKGROUND_CITATION",
    "LIMITATION",
    "HYPOTHESIS",
}

ACTIONABLE_VERDICTS = {
    "APPROPRIATE_AFTER_QUALIFICATION",
    "REWRITE_REQUIRED",
    "REMOVE_OR_REPLACE",
    "CONTRADICTED",
}


def action_required(row: dict[str, str]) -> bool:
    # NORMATIVE changes the evidence classification even when prose is kept.
    return row["appropriateness_verdict"] in ACTIONABLE_VERDICTS or (
        row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE"
    )

GOLD_FIELDS = [
    "fixture_id", "sentence_id", "source_state", "claim_type",
    "logical_operator", "risk_flags", "calibration_status",
    "agreed_verdict", "disagreement_reason", "primary_reviewer",
    "primary_review_date", "independent_reviewer", "independent_review_date",
]

APPLICATION_FIELDS = [
    "sentence_id", "baseline_docs_commit", "target_docs_commit", "file",
    "action_kind", "source_text_sha256", "target_sentence_ids",
    "target_text_sha256", "target_file_sha256", "application_status",
    "applied_by", "applied_date", "notes",
]

RELATION_FIELDS = [
    "sentence_id", "logical_operator", "relation_disposition",
    "evidence_source_ids", "evidence_locator", "spec_contract",
    "relation_reviewer", "relation_review_date", "relation_status", "notes",
]

SHEET_FIELDS = [
    "sentence_id", "baseline_docs_commit", "target_docs_commit", "file", "line_start", "review_priority",
    "required_review", "original_sentence", "revised_sentence",
    "appropriateness_verdict", "verdict_reason", "primary_source_ids",
    "source_locator", "source_claim_role", "external_truth_level", "action",
    "primary_reviewer", "primary_review_date", "independent_reviewer",
    "independent_review_date", "review_status", "remaining",
]

QUEUE_FIELDS = [
    "sentence_id", "unit_id", "file", "line_start", "sentence",
    "current_logical_status", "claim_type", "logical_operator",
    "guide_formula", "guide_atoms", "candidate_source_ids",
    "candidate_source_urls", "source_mapping_basis",
    "source_projection_adequacy", "unsupported_atoms", "risk_flags",
    "review_priority", "required_review",
]

DECISION_FIELDS = [
    "sentence_id", "docs_commit", "original_sentence", "revised_sentence",
    "semantic_proposition", "logical_operator", "claim_type", "modality",
    "scope", "primary_source_ids", "source_locator", "source_claim_role",
    "supported_atoms", "unsupported_atoms", "unsupported_relation",
    "appropriateness_verdict", "verdict_reason", "normative_criteria",
    "exceptions", "external_truth_level",
    "action", "owner", "due_date", "unblock_condition", "lean_theorem",
    "lean_assurance", "axiom_audit", "primary_reviewer",
    "primary_review_date", "independent_reviewer", "independent_review_date",
    "review_status",
]


def read_csv(path: Path) -> list[dict[str, str]]:
    with path.open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def write_csv(path: Path, rows: list[dict[str, object]], fields: list[str]) -> None:
    with path.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def split_values(value: str) -> list[str]:
    return [item.strip() for item in value.split(";") if item.strip()]


def canonical_reviewer(value: str) -> str:
    return unicodedata.normalize("NFKC", value).strip().casefold()


def iso_date(value: str) -> bool:
    try:
        date.fromisoformat(value)
    except (TypeError, ValueError):
        return False
    return True


def read_json(path: Path, default: dict[str, object]) -> dict[str, object]:
    if not path.exists():
        return default
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise SystemExit(f"expected JSON object: {path}")
    return value


def empty_csv(path: Path, fields: list[str]) -> None:
    if not path.exists():
        write_csv(path, [], fields)


def risk_flags(row: dict[str, str]) -> list[str]:
    text = row["sentence"]
    flags: list[str] = []
    patterns = (
        ("SECURITY_OR_PRIVACY", r"認証|認可|権限|tenant|テナント|個人情報|機密|削除|副作用"),
        ("NUMERIC_OR_PERFORMANCE", r"\d+(?:\.\d+)?[%％倍]?|性能|精度|レイテンシ|高速|上回"),
        ("STRONG_MODALITY", r"常に|必ず|必要です|禁止|できません|有効です|推奨します"),
        ("RELATION", r"場合|なら|ため|ない|ません|せず"),
        ("OFFICIAL_PRODUCT", r"Amazon|AWS|Bedrock|OpenSearch|Aurora|MongoDB|API"),
    )
    for name, pattern in patterns:
        if re.search(pattern, text, re.I):
            flags.append(name)
    return flags


def priority(row: dict[str, str], flags: list[str]) -> str:
    if set(flags) & {"SECURITY_OR_PRIVACY", "NUMERIC_OR_PERFORMANCE", "STRONG_MODALITY"}:
        return "P0"
    if row["logical_operator"] in {"NOT", "IMPLIES"} or row["claim_type"] == "official_product_contract":
        return "P0"
    if row["source_mapping_basis"] == "existing_direct_paragraph_or_technology_mapping":
        return "P1"
    return "P2"


def required_review(row: dict[str, str]) -> str:
    needs = ["PRIMARY_SOURCE", "JAPANESE_SEMANTICS", "DOMAIN"]
    if row["source_projection_adequacy"] == POLARITY_REQUIRED:
        needs.append("CLAIM_POLARITY")
    if row["logical_operator"] in {"NOT", "IMPLIES"}:
        needs.append("RELATION")
    return ";".join(needs)


def queue_rows(proofs: list[dict[str, str]]) -> list[dict[str, object]]:
    unresolved = [row for row in proofs if row["logical_proof_assurance"] != "MODEL_PROVED"]
    if len(unresolved) != EXPECTED_UNRESOLVED:
        raise SystemExit(f"expected {EXPECTED_UNRESOLVED} unresolved sentences, got {len(unresolved)}")
    rows: list[dict[str, object]] = []
    for row in unresolved:
        flags = risk_flags(row)
        rows.append({
            "sentence_id": row["sentence_id"],
            "unit_id": row["unit_id"],
            "file": row["file"],
            "line_start": row["line_start"],
            "sentence": row["sentence"],
            "current_logical_status": row["logical_proof_status"],
            "claim_type": row["claim_type"],
            "logical_operator": row["logical_operator"],
            "guide_formula": row["guide_formula"],
            "guide_atoms": row["guide_atoms"],
            "candidate_source_ids": row["candidate_source_ids"],
            "candidate_source_urls": row["candidate_source_urls"],
            "source_mapping_basis": row["source_mapping_basis"],
            "source_projection_adequacy": row["source_projection_adequacy"],
            "unsupported_atoms": row["unsupported_atoms"],
            "risk_flags": ";".join(flags),
            "review_priority": priority(row, flags),
            "required_review": required_review(row),
        })
    return rows


def modality(text: str) -> str:
    matches = re.findall(r"常に|必ず|必要|推奨|できる|できます|有効|禁止|場合がある|可能", text)
    return ";".join(dict.fromkeys(matches)) or "UNCLASSIFIED"


def initial_action(row: dict[str, object]) -> str:
    status = str(row["current_logical_status"])
    if status == "INCONCLUSIVE_UNSUPPORTED_ATOMS":
        return "一次資料の直接locatorを確認し、不足atomへ根拠を追加するか本文を限定・分割する"
    if status == "INCONCLUSIVE_RELATION_NOT_SUPPORTED_BY_POSITIVE_SOURCE_FACTS":
        return "NOTまたはIMPLIESの関係自体を支持する箇所を確認し、なければ関係を弱めて書き換える"
    return "主体・対象・条件・例外・極性・modalityを意味保存して分解し、再形式化する"


def initialize_wave4_ledgers(
    queue: list[dict[str, object]],
    decisions: list[dict[str, str]],
    baseline_commit: str,
    target_commit: str,
) -> None:
    queue_by_id = {str(row["sentence_id"]): row for row in queue}
    applications = read_csv(APPLICATIONS) if APPLICATIONS.exists() else []
    application_ids = {row["sentence_id"] for row in applications}
    for decision in decisions:
        if (
            not action_required(decision)
            or decision["sentence_id"] in application_ids
        ):
            continue
        source = queue_by_id[decision["sentence_id"]]
        applications.append({
            "sentence_id": decision["sentence_id"],
            "baseline_docs_commit": baseline_commit,
            "target_docs_commit": target_commit,
            "file": source["file"],
            "action_kind": decision["appropriateness_verdict"],
            "source_text_sha256": hashlib.sha256(
                decision["original_sentence"].encode("utf-8")
            ).hexdigest(),
            "target_sentence_ids": "",
            "target_text_sha256": "",
            "target_file_sha256": "",
            "application_status": "PENDING_APPLICATION",
            "applied_by": "",
            "applied_date": "",
            "notes": "",
        })
    write_csv(APPLICATIONS, applications, APPLICATION_FIELDS)

    relations = read_csv(RELATIONS) if RELATIONS.exists() else []
    relation_ids = {row["sentence_id"] for row in relations}
    for decision in decisions:
        if (
            decision["appropriateness_verdict"] == "BLOCKED"
            or decision["logical_operator"] not in {"NOT", "IMPLIES"}
            or decision["sentence_id"] in relation_ids
        ):
            continue
        relations.append({
            "sentence_id": decision["sentence_id"],
            "logical_operator": decision["logical_operator"],
            "relation_disposition": "",
            "evidence_source_ids": "",
            "evidence_locator": "",
            "spec_contract": "",
            "relation_reviewer": "",
            "relation_review_date": "",
            "relation_status": "PENDING_RELATION_REVIEW",
            "notes": "",
        })
    write_csv(RELATIONS, relations, RELATION_FIELDS)


def initialize_decisions(queue: list[dict[str, object]]) -> None:
    if DECISIONS.exists():
        raise SystemExit(f"refusing to overwrite manual ledger: {DECISIONS}")
    rows: list[dict[str, object]] = []
    for row in queue:
        unsupported_relation = (
            row["logical_operator"] if row["logical_operator"] in {"NOT", "IMPLIES"} else ""
        )
        rows.append({
            "sentence_id": row["sentence_id"],
            "docs_commit": AUTHORITATIVE_DOCS_COMMIT,
            "original_sentence": row["sentence"],
            "revised_sentence": "",
            "semantic_proposition": row["guide_formula"],
            "logical_operator": row["logical_operator"],
            "claim_type": row["claim_type"],
            "modality": modality(str(row["sentence"])),
            "scope": f"{row['unit_id']} ({row['file']}:{row['line_start']})",
            "primary_source_ids": row["candidate_source_ids"],
            "source_locator": "",
            "source_claim_role": "",
            "supported_atoms": "",
            "unsupported_atoms": row["unsupported_atoms"],
            "unsupported_relation": unsupported_relation,
            "appropriateness_verdict": "BLOCKED",
            "verdict_reason": "一次資料・日本語意味・領域知識の独立レビューが未完了",
            "normative_criteria": "",
            "exceptions": "",
            "external_truth_level": "UNVERIFIED",
            "action": initial_action(row),
            "owner": "rag-guide-maintainers",
            "due_date": "2026-09-30",
            "unblock_condition": "一次レビューと別担当の独立レビューを記録し、直接locator・主張役割・最終判定を確定する",
            "lean_theorem": "",
            "lean_assurance": "INCONCLUSIVE",
            "axiom_audit": "NOT_APPLICABLE_UNPROVED",
            "primary_reviewer": "",
            "primary_review_date": "",
            "independent_reviewer": "",
            "independent_review_date": "",
            "review_status": "PENDING_PRIMARY_REVIEW",
        })
    write_csv(DECISIONS, rows, DECISION_FIELDS)


def gold_rows(
    queue: list[dict[str, object]], existing: list[dict[str, str]]
) -> list[dict[str, object]]:
    groups: dict[str, list[dict[str, object]]] = defaultdict(list)
    for row in queue:
        groups[str(row["current_logical_status"])].append(row)
    selected: list[dict[str, object]] = []
    for status in sorted(groups):
        rows = groups[status]
        rows.sort(key=lambda row: (str(row["review_priority"]), str(row["claim_type"]), str(row["sentence_id"])))
        stride = max(1, len(rows) // 8)
        selected.extend(rows[index] for index in range(0, min(len(rows), stride * 8), stride))
    selected = selected[:24]
    existing_by_id = {row["sentence_id"]: row for row in existing}
    generated = [{
        "fixture_id": f"GOLD-{index:02d}",
        "sentence_id": row["sentence_id"],
        "source_state": row["current_logical_status"],
        "claim_type": row["claim_type"],
        "logical_operator": row["logical_operator"],
        "risk_flags": row["risk_flags"],
        "calibration_status": "PENDING_TWO_REVIEWER_CALIBRATION",
        "agreed_verdict": "",
        "disagreement_reason": "",
        "primary_reviewer": "",
        "primary_review_date": "",
        "independent_reviewer": "",
        "independent_review_date": "",
    } for index, row in enumerate(selected, 1)]
    for row in generated:
        previous = existing_by_id.get(str(row["sentence_id"]))
        if previous is None:
            continue
        for field in (
            "calibration_status", "agreed_verdict", "disagreement_reason",
            "primary_reviewer", "primary_review_date", "independent_reviewer",
            "independent_review_date",
        ):
            row[field] = previous.get(field, "")
    return generated


def review_is_independent(row: dict[str, str]) -> bool:
    primary = canonical_reviewer(row.get("primary_reviewer", ""))
    independent = canonical_reviewer(row.get("independent_reviewer", ""))
    return bool(
        primary
        and independent
        and primary != independent
        and iso_date(row.get("primary_review_date", ""))
        and iso_date(row.get("independent_review_date", ""))
        and row.get("review_status") == "FINAL_TWO_REVIEWER_APPROVED"
    )


def gold_is_complete(rows: list[dict[str, str]]) -> bool:
    if not rows:
        return False
    for row in rows:
        primary = canonical_reviewer(row.get("primary_reviewer", ""))
        independent = canonical_reviewer(row.get("independent_reviewer", ""))
        if not (
            row.get("calibration_status") == "CALIBRATED"
            and row.get("agreed_verdict") in FINAL_VERDICTS - {"BLOCKED"}
            and primary
            and independent
            and primary != independent
            and iso_date(row.get("primary_review_date", ""))
            and iso_date(row.get("independent_review_date", ""))
        ):
            return False
    return True


def applied_sentence_ids(applications: list[dict[str, str]]) -> set[str]:
    return {
        row.get("sentence_id", "")
        for row in applications
        if row.get("application_status") in {"APPLIED_VERIFIED", "REMOVED_VERIFIED"}
    }


def reviewed_relation_ids(relations: list[dict[str, str]]) -> set[str]:
    return {
        row.get("sentence_id", "")
        for row in relations
        if row.get("relation_status") == "VERIFIED"
    }


def sheet_is_verified(export_sha: str, target_commit: str) -> bool:
    value = read_json(SHEET_READBACK, {})
    readback_file = value.get("readback_file")
    readback_path = ROOT / str(readback_file) if readback_file else None
    readback_matches = bool(
        readback_path
        and readback_path.is_file()
        and value.get("readback_sha256") == sha256(readback_path)
        and read_csv(readback_path) == read_csv(SHEET_EXPORT)
    )
    return bool(
        value.get("verification_status") == "VERIFIED"
        and value.get("authoritative_docs_commit") == target_commit
        and value.get("export_sha256") == export_sha
        and value.get("row_count") == EXPECTED_UNRESOLVED
        and value.get("remote_revision_id")
        and iso_date(str(value.get("verified_date", "")))
        and readback_matches
    )


def generate_sheet_export(
    queue: list[dict[str, object]], decisions: list[dict[str, str]], target_commit: str
) -> str:
    queue_by_id = {str(row["sentence_id"]): row for row in queue}
    output: list[dict[str, object]] = []
    for decision in decisions:
        source = queue_by_id[decision["sentence_id"]]
        output.append({
            "sentence_id": decision["sentence_id"],
            "baseline_docs_commit": decision["docs_commit"],
            "target_docs_commit": target_commit,
            "file": source["file"],
            "line_start": source["line_start"],
            "review_priority": source["review_priority"],
            "required_review": source["required_review"],
            "original_sentence": decision["original_sentence"],
            "revised_sentence": decision["revised_sentence"],
            "appropriateness_verdict": decision["appropriateness_verdict"],
            "verdict_reason": decision["verdict_reason"],
            "primary_source_ids": decision["primary_source_ids"],
            "source_locator": decision["source_locator"],
            "source_claim_role": decision["source_claim_role"],
            "external_truth_level": decision["external_truth_level"],
            "action": decision["action"],
            "primary_reviewer": decision["primary_reviewer"],
            "primary_review_date": decision["primary_review_date"],
            "independent_reviewer": decision["independent_reviewer"],
            "independent_review_date": decision["independent_review_date"],
            "review_status": decision["review_status"],
            "remaining": "yes" if decision["appropriateness_verdict"] == "BLOCKED" else "no",
        })
    write_csv(SHEET_EXPORT, output, SHEET_FIELDS)
    export_sha = sha256(SHEET_EXPORT)
    SHEET_EXPORT_MANIFEST.write_text(json.dumps({
        "spreadsheet_id": "1tqA6ExUTT862iqVos-uIsuDzb8pgIPL7lHZ5hJuyroM",
        "sheet_title": "論理未証明",
        "authoritative_docs_commit": target_commit,
        "row_count": len(output),
        "column_count": len(SHEET_FIELDS),
        "export_sha256": export_sha,
        "sync_direction": "repository_csv_to_google_sheets_one_way",
    }, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return export_sha


def git_docs_match(commit: str) -> bool:
    if not commit:
        return False
    result = subprocess.run(
        ["git", "diff", "--quiet", commit, "--", "docs"],
        cwd=ROOT,
        check=False,
    )
    return result.returncode == 0


def generate_post_review_recalculation(
    baseline_commit: str, target_commit: str
) -> bool:
    coverage = read_json(OUT / "coverage_manifest.json", {})
    semantic = read_json(OUT / "semantic_assurance_manifest.json", {})
    literature = read_json(OUT / "literature_entailment_manifest.json", {})
    semantic_summary = {
        row["metric_id"]: row for row in read_csv(OUT / "semantic_assurance_summary.csv")
    }
    literature_summary = {
        row["metric_id"]: row for row in read_csv(OUT / "logical_proof_summary.csv")
    }
    target_pins = {
        "coverage": coverage.get("canonical_commit"),
        "semantic": semantic.get("authoritative_commit"),
        "literature": literature.get("authoritative_commit"),
    }
    changed = False
    if baseline_commit and target_commit and baseline_commit != target_commit:
        result = subprocess.run(
            ["git", "diff", "--quiet", baseline_commit, target_commit, "--", "docs"],
            cwd=ROOT,
            check=False,
        )
        changed = result.returncode == 1
    verified = bool(
        changed
        and git_docs_match(target_commit)
        and all(value == target_commit for value in target_pins.values())
    )
    proofs = read_csv(PROOFS)
    POST_REVIEW.write_text(json.dumps({
        "verification_status": "VERIFIED" if verified else "PENDING",
        "baseline_docs_commit": baseline_commit,
        "target_docs_commit": target_commit,
        "docs_changed": changed,
        "current_docs_match_target": git_docs_match(target_commit),
        "upstream_manifest_commits": target_pins,
        "evidence_required_sentences": len(proofs),
        "conditional_logical_proofs": sum(
            row["logical_proof_assurance"] == "MODEL_PROVED" for row in proofs
        ),
        "end_to_end_assurance_count": int(literature_summary["LIT-COV-008"]["numerator"]),
        "end_to_end_assurance_denominator": int(literature_summary["LIT-COV-008"]["denominator"]),
        "independently_verified_external_truth_count": int(semantic_summary["TRUTH-COV-004"]["numerator"]),
        "independently_verified_external_truth_denominator": int(semantic_summary["TRUTH-COV-004"]["denominator"]),
        "source_files": {
            path.relative_to(ROOT).as_posix(): sha256(path)
            for path in (
                OUT / "coverage_manifest.json",
                OUT / "semantic_assurance_manifest.json",
                OUT / "literature_entailment_manifest.json",
                OUT / "semantic_assurance_summary.csv",
                OUT / "logical_proof_summary.csv",
                PROOFS,
            )
        },
        "assurance_boundary": (
            "Recalculation proves snapshot/count provenance only; human judgments and external truth remain separate."
        ),
    }, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return verified


def summary_rows(
    queue: list[dict[str, object]],
    decisions: list[dict[str, str]],
    gold: list[dict[str, str]],
    applications: list[dict[str, str]],
    relations: list[dict[str, str]],
    sheet_verified: bool,
    recalculation_verified: bool,
) -> list[dict[str, object]]:
    verdicts = Counter(row["appropriateness_verdict"] for row in decisions)
    independent = [row for row in decisions if review_is_independent(row)]
    polarity_scope = [row for row in queue if row["source_projection_adequacy"] == POLARITY_REQUIRED]
    decision_by_id = {row["sentence_id"]: row for row in decisions}
    polarity_done = [
        row for row in polarity_scope
        if decision_by_id[str(row["sentence_id"])]["source_claim_role"] in SOURCE_ROLES
        and review_is_independent(decision_by_id[str(row["sentence_id"])])
    ]
    final = [row for row in decisions if row["appropriateness_verdict"] != "BLOCKED"]
    actionable = [row for row in decisions if action_required(row)]
    applied_ids = applied_sentence_ids(applications)
    applied = [row for row in actionable if row["sentence_id"] in applied_ids]
    relation_scope = [
        row for row in decisions
        if row["appropriateness_verdict"] != "BLOCKED"
        and row["logical_operator"] in {"NOT", "IMPLIES"}
    ]
    relation_ids = reviewed_relation_ids(relations)
    relation_done = [row for row in relation_scope if row["sentence_id"] in relation_ids]
    calibrated = gold_is_complete(gold)
    complete = all((
        len(final) == len(queue),
        len(independent) == len(queue),
        len(polarity_done) == len(polarity_scope),
        calibrated,
        len(applied) == len(actionable),
        len(relation_done) == len(relation_scope),
        sheet_verified,
        recalculation_verified,
    ))
    metrics = [
        ("APR-001", "未証明レビュー対象", len(queue), EXPECTED_UNRESOLVED),
        ("APR-002", "BLOCKED以外の最終判定", len(final), len(queue)),
        ("APR-003", "独立レビュー完了", len(independent), len(queue)),
        ("APR-004", "主張極性レビュー完了", len(polarity_done), len(polarity_scope)),
        ("APR-005", "BLOCKED", verdicts["BLOCKED"], len(queue)),
        ("APR-006", "Issue #35完了ゲート", int(complete), 1),
        ("APR-007", "gold校正完了", int(calibrated), 1),
        ("APR-008", "本文反映完了", len(applied), len(actionable)),
        ("APR-009", "NOT・IMPLIES関係レビュー完了", len(relation_done), len(relation_scope)),
        ("APR-010", "Google Sheets readback一致", int(sheet_verified), 1),
        ("APR-011", "新docs commit再計算", int(recalculation_verified), 1),
    ]
    return [{
        "metric_id": metric_id,
        "metric": name,
        "numerator": numerator,
        "denominator": denominator,
        "coverage_percent": round(numerator * 100 / denominator, 2) if denominator else 0.0,
    } for metric_id, name, numerator, denominator in metrics]


def generate_lean(
    queue: list[dict[str, object]],
    decisions: list[dict[str, str]],
    applications: list[dict[str, str]],
    relations: list[dict[str, str]],
    gold_complete: bool,
    sheet_verified: bool,
    recalculation_verified: bool,
) -> None:
    verdict_id = {name: index for index, name in enumerate(sorted(FINAL_VERDICTS), 1)}
    entries = []
    queue_by_id = {str(row["sentence_id"]): row for row in queue}
    applied_ids = applied_sentence_ids(applications)
    relation_ids = reviewed_relation_ids(relations)
    for row in decisions:
        number = int(row["sentence_id"].split("-")[1])
        polarity_required = queue_by_id[row["sentence_id"]]["source_projection_adequacy"] == POLARITY_REQUIRED
        independent_reviewed = review_is_independent(row)
        polarity_reviewed = row["source_claim_role"] in SOURCE_ROLES and independent_reviewed
        row_action_required = action_required(row)
        relation_required = (
            row["appropriateness_verdict"] != "BLOCKED"
            and row["logical_operator"] in {"NOT", "IMPLIES"}
        )
        entries.append(
            "  { sentenceId := %d, verdict := %d, independentReviewed := %s, polarityRequired := %s, polarityReviewed := %s, actionRequired := %s, actionApplied := %s, relationRequired := %s, relationReviewed := %s }"
            % (
                number,
                verdict_id[row["appropriateness_verdict"]],
                "true" if independent_reviewed else "false",
                "true" if polarity_required else "false",
                "true" if polarity_reviewed else "false",
                "true" if row_action_required else "false",
                "true" if row["sentence_id"] in applied_ids else "false",
                "true" if relation_required else "false",
                "true" if row["sentence_id"] in relation_ids else "false",
            )
        )
    blocked_id = verdict_id["BLOCKED"]
    content = f"""-- Generated by tools/formal_review/generate_appropriateness_review.py.
-- Human verdicts remain data; Lean proves ledger/count/gate consistency only.

namespace RagEvidence.AppropriatenessGenerated

set_option maxRecDepth 100000
set_option maxHeartbeats 0

structure ReviewRow where
  sentenceId : Nat
  verdict : Nat
  independentReviewed : Bool
  polarityRequired : Bool
  polarityReviewed : Bool
  actionRequired : Bool
  actionApplied : Bool
  relationRequired : Bool
  relationReviewed : Bool
  deriving Repr, DecidableEq

def reviewRows : List ReviewRow := [
{','.join(chr(10) + entry for entry in entries)}
]

def blockedVerdict : Nat := {blocked_id}
def blockedCount : Nat := (reviewRows.filter (fun row => row.verdict == blockedVerdict)).length
def independentlyReviewedCount : Nat := (reviewRows.filter (fun row => row.independentReviewed)).length
def polarityComplete : Bool := reviewRows.all (fun row => !row.polarityRequired || row.polarityReviewed)
def applicationComplete : Bool := reviewRows.all (fun row => !row.actionRequired || row.actionApplied)
def relationComplete : Bool := reviewRows.all (fun row => !row.relationRequired || row.relationReviewed)
def goldCalibrationComplete : Bool := {"true" if gold_complete else "false"}
def sheetReadbackVerified : Bool := {"true" if sheet_verified else "false"}
def postReviewRecalculationVerified : Bool := {"true" if recalculation_verified else "false"}
def completionGate : Bool :=
  blockedCount == 0 && independentlyReviewedCount == reviewRows.length &&
  polarityComplete && applicationComplete && relationComplete &&
  goldCalibrationComplete && sheetReadbackVerified && postReviewRecalculationVerified

theorem review_queue_count_exact : reviewRows.length = {len(decisions)} := by decide
theorem completion_not_claimed_while_blocked : blockedCount > 0 -> completionGate = false := by decide

end RagEvidence.AppropriatenessGenerated

#print axioms RagEvidence.AppropriatenessGenerated.review_queue_count_exact
#print axioms RagEvidence.AppropriatenessGenerated.completion_not_claimed_while_blocked
"""
    LEAN_OUT.write_text(content, encoding="utf-8")


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--initialize-decisions", action="store_true")
    parser.add_argument("--initialize-wave4-ledgers", action="store_true")
    args = parser.parse_args()

    config = read_json(CONFIG, {
        "baseline_docs_commit": AUTHORITATIVE_DOCS_COMMIT,
        "target_docs_commit": AUTHORITATIVE_DOCS_COMMIT,
    })
    baseline_commit = str(config.get("baseline_docs_commit", ""))
    target_commit = str(config.get("target_docs_commit", ""))
    if baseline_commit != AUTHORITATIVE_DOCS_COMMIT:
        raise SystemExit("baseline docs commit must remain the Issue #35 review snapshot")

    if target_commit == baseline_commit:
        queue = queue_rows(read_csv(PROOFS))
        write_csv(QUEUE, queue, QUEUE_FIELDS)
    else:
        if not QUEUE.exists():
            raise SystemExit("baseline review queue is absent")
        queue = read_csv(QUEUE)
        if len(queue) != EXPECTED_UNRESOLVED:
            raise SystemExit("baseline review queue must retain all 678 historical rows")
    existing_gold = read_csv(GOLD) if GOLD.exists() else []
    write_csv(GOLD, gold_rows(queue, existing_gold), GOLD_FIELDS)
    empty_csv(APPLICATIONS, APPLICATION_FIELDS)
    empty_csv(RELATIONS, RELATION_FIELDS)
    if args.initialize_decisions:
        initialize_decisions(queue)
    if not DECISIONS.exists():
        raise SystemExit("manual decisions ledger is absent; run once with --initialize-decisions")
    decisions = read_csv(DECISIONS)
    if args.initialize_wave4_ledgers:
        initialize_wave4_ledgers(
            queue, decisions, baseline_commit, target_commit
        )
    gold = read_csv(GOLD)
    applications = read_csv(APPLICATIONS)
    relations = read_csv(RELATIONS)
    export_sha = generate_sheet_export(queue, decisions, target_commit)
    sheet_verified = sheet_is_verified(export_sha, target_commit)
    recalculation_verified = generate_post_review_recalculation(
        baseline_commit, target_commit
    )
    summary = summary_rows(
        queue, decisions, gold, applications, relations,
        sheet_verified, recalculation_verified,
    )
    write_csv(SUMMARY, summary, list(summary[0]))
    generate_lean(
        queue, decisions, applications, relations, gold_is_complete(gold),
        sheet_verified, recalculation_verified,
    )

    files = [
        CONFIG, QUEUE, DECISIONS, GOLD, APPLICATIONS, RELATIONS,
        CLASSIFICATION_OVERRIDES, SUMMARY,
        SHEET_EXPORT, SHEET_EXPORT_MANIFEST, SHEET_READBACK, POST_REVIEW, LEAN_OUT,
    ]
    manifest = {
        "method_version": 2,
        "authoritative_docs_commit": AUTHORITATIVE_DOCS_COMMIT,
        "target_docs_commit": target_commit,
        "unresolved_sentence_count": len(queue),
        "decision_count": len(decisions),
        "controlled_projection_sentence_count": sum(
            row["source_projection_adequacy"] == POLARITY_REQUIRED for row in queue
        ),
        "completion_gate": next(
            row for row in summary if row["metric_id"] == "APR-006"
        )["numerator"] == 1,
        "wave4_gates": {
            "gold_calibration_complete": gold_is_complete(gold),
            "sheet_readback_verified": sheet_verified,
            "post_review_recalculation_verified": recalculation_verified,
        },
        "assurance_boundary": {
            "proved": "Lean and Python check row identity, reviewer/date shape, reviewed application and relation ledgers, snapshot hashes, and fail-closed completion state.",
            "not_proved": "Review verdict correctness, natural-language adequacy, source truth, or production behavior.",
        },
        "sha256": {str(path.relative_to(ROOT)): sha256(path) for path in files},
    }
    MANIFEST.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(
        f"appropriateness review generated: queue={len(queue)}, "
        f"decisions={len(decisions)}, completion={manifest['completion_gate']}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
