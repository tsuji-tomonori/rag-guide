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
from collections import Counter, defaultdict
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
    "appropriateness_verdict", "verdict_reason", "external_truth_level",
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
        writer = csv.DictWriter(handle, fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)


def split_values(value: str) -> list[str]:
    return [item.strip() for item in value.split(";") if item.strip()]


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


def gold_rows(queue: list[dict[str, object]]) -> list[dict[str, object]]:
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
    return [{
        "fixture_id": f"GOLD-{index:02d}",
        "sentence_id": row["sentence_id"],
        "source_state": row["current_logical_status"],
        "claim_type": row["claim_type"],
        "logical_operator": row["logical_operator"],
        "risk_flags": row["risk_flags"],
        "calibration_status": "PENDING_TWO_REVIEWER_CALIBRATION",
        "agreed_verdict": "",
        "disagreement_reason": "",
    } for index, row in enumerate(selected, 1)]


def summary_rows(queue: list[dict[str, object]], decisions: list[dict[str, str]]) -> list[dict[str, object]]:
    verdicts = Counter(row["appropriateness_verdict"] for row in decisions)
    independent = [row for row in decisions if row["independent_reviewer"] and row["independent_review_date"]]
    polarity_scope = [row for row in queue if row["source_projection_adequacy"] == POLARITY_REQUIRED]
    decision_by_id = {row["sentence_id"]: row for row in decisions}
    polarity_done = [
        row for row in polarity_scope
        if decision_by_id[str(row["sentence_id"])]["source_claim_role"] in SOURCE_ROLES
        and decision_by_id[str(row["sentence_id"])]["independent_reviewer"]
    ]
    final = [row for row in decisions if row["appropriateness_verdict"] != "BLOCKED"]
    complete = len(final) == len(queue) and len(independent) == len(queue) and len(polarity_done) == len(polarity_scope)
    metrics = [
        ("APR-001", "未証明レビュー対象", len(queue), EXPECTED_UNRESOLVED),
        ("APR-002", "BLOCKED以外の最終判定", len(final), len(queue)),
        ("APR-003", "独立レビュー完了", len(independent), len(queue)),
        ("APR-004", "主張極性レビュー完了", len(polarity_done), len(polarity_scope)),
        ("APR-005", "BLOCKED", verdicts["BLOCKED"], len(queue)),
        ("APR-006", "Issue #35完了ゲート", int(complete), 1),
    ]
    return [{
        "metric_id": metric_id,
        "metric": name,
        "numerator": numerator,
        "denominator": denominator,
        "coverage_percent": round(numerator * 100 / denominator, 2) if denominator else 0.0,
    } for metric_id, name, numerator, denominator in metrics]


def generate_lean(decisions: list[dict[str, str]]) -> None:
    verdict_id = {name: index for index, name in enumerate(sorted(FINAL_VERDICTS), 1)}
    entries = []
    queue_by_id = {str(row["sentence_id"]): row for row in queue_rows(read_csv(PROOFS))}
    for row in decisions:
        number = int(row["sentence_id"].split("-")[1])
        polarity_required = queue_by_id[row["sentence_id"]]["source_projection_adequacy"] == POLARITY_REQUIRED
        polarity_reviewed = row["source_claim_role"] in SOURCE_ROLES and bool(row["independent_reviewer"])
        entries.append(
            "  { sentenceId := %d, verdict := %d, independentReviewed := %s, polarityRequired := %s, polarityReviewed := %s }"
            % (
                number,
                verdict_id[row["appropriateness_verdict"]],
                "true" if row["independent_reviewer"] else "false",
                "true" if polarity_required else "false",
                "true" if polarity_reviewed else "false",
            )
        )
    blocked_id = verdict_id["BLOCKED"]
    content = f"""-- Generated by tools/formal_review/generate_appropriateness_review.py.
-- Human verdicts remain data; Lean proves ledger/count/gate consistency only.

namespace RagEvidence.AppropriatenessGenerated

structure ReviewRow where
  sentenceId : Nat
  verdict : Nat
  independentReviewed : Bool
  polarityRequired : Bool
  polarityReviewed : Bool
  deriving Repr, DecidableEq

def reviewRows : List ReviewRow := [
{','.join(chr(10) + entry for entry in entries)}
]

def blockedVerdict : Nat := {blocked_id}
def blockedCount : Nat := (reviewRows.filter (fun row => row.verdict == blockedVerdict)).length
def independentlyReviewedCount : Nat := (reviewRows.filter (fun row => row.independentReviewed)).length
def polarityComplete : Bool := reviewRows.all (fun row => !row.polarityRequired || row.polarityReviewed)
def completionGate : Bool := blockedCount == 0 && independentlyReviewedCount == reviewRows.length && polarityComplete

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
    args = parser.parse_args()

    queue = queue_rows(read_csv(PROOFS))
    write_csv(QUEUE, queue, QUEUE_FIELDS)
    write_csv(GOLD, gold_rows(queue), [
        "fixture_id", "sentence_id", "source_state", "claim_type",
        "logical_operator", "risk_flags", "calibration_status",
        "agreed_verdict", "disagreement_reason",
    ])
    if args.initialize_decisions:
        initialize_decisions(queue)
    if not DECISIONS.exists():
        raise SystemExit("manual decisions ledger is absent; run once with --initialize-decisions")
    decisions = read_csv(DECISIONS)
    summary = summary_rows(queue, decisions)
    write_csv(SUMMARY, summary, list(summary[0]))
    generate_lean(decisions)

    files = [QUEUE, DECISIONS, GOLD, SUMMARY, LEAN_OUT]
    manifest = {
        "method_version": 1,
        "authoritative_docs_commit": AUTHORITATIVE_DOCS_COMMIT,
        "unresolved_sentence_count": len(queue),
        "decision_count": len(decisions),
        "controlled_projection_sentence_count": sum(
            row["source_projection_adequacy"] == POLARITY_REQUIRED for row in queue
        ),
        "completion_gate": summary[-1]["numerator"] == 1,
        "assurance_boundary": {
            "proved": "Lean and Python check row identity, counts, and fail-closed completion state.",
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
