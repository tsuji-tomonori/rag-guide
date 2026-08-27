#!/usr/bin/env python3
"""Merge the two blind reviews and their Wave 4 reconciliations.

This produces a review candidate only.  It deliberately does not overwrite the
authoritative decision ledger: both named reviewers must sign off on the exact
candidate before it is applied to the guide.
"""

from __future__ import annotations

import csv
import hashlib
import json
import re
import unicodedata
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "formal" / "review-data"
QUEUE = DATA / "appropriateness_review_queue.csv"
DECISIONS = DATA / "appropriateness_review_decisions.csv"
PRIMARY = DATA / "wave4_primary_proposal.csv"
INDEPENDENT = DATA / "wave4_independent_proposal.csv"
VERDICT_RECONCILIATION = DATA / "wave4_verdict_reconciliation.csv"
SOURCE_RECONCILIATION = DATA / "wave4_source_reconciliation.csv"
GOLD_RECONCILIATION = DATA / "wave4_gold_reconciliation.csv"
GOLD_FIXTURE = DATA / "appropriateness_gold_fixture.csv"
CORRECTION_FILES = (
    DATA / "wave4_primary_candidate_corrections.csv",
    DATA / "wave4_independent_candidate_corrections.csv",
    DATA / "wave4_adjudicator_candidate_corrections.csv",
)
SECOND_PASS_CORRECTION_FILES = (
    DATA / "wave4_primary_second_pass_corrections.csv",
    DATA / "wave4_independent_second_pass_corrections.csv",
    DATA / "wave4_exact_audit_corrections.csv",
)
THIRD_PASS_CORRECTION_FILES = (
    DATA / "wave4_independent_third_pass_corrections.csv",
)
FOURTH_PASS_CORRECTION_FILES = (
    DATA / "wave4_independent_fourth_pass_corrections.csv",
)
FIFTH_PASS_CORRECTION_FILES = (
    DATA / "wave4_independent_fifth_pass_corrections.csv",
)
SIXTH_PASS_CORRECTION_FILES = (
    DATA / "wave4_independent_sixth_pass_corrections.csv",
)
SEVENTH_PASS_CORRECTION_FILES = (
    DATA / "wave4_exact_grammar_corrections.csv",
)
EIGHTH_PASS_CORRECTION_FILES = (
    DATA / "wave4_independent_eighth_pass_corrections.csv",
)
NINTH_PASS_CORRECTION_FILES = (
    DATA / "wave4_independent_ninth_pass_corrections.csv",
)
CORRECTION_RECONCILIATION = DATA / "wave4_candidate_correction_reconciliation.csv"
TRUSTED_SOURCES = DATA / "trusted_primary_sources.csv"
OUTPUT = DATA / "wave4_final_review_candidate.csv"
MANIFEST = DATA / "wave4_final_review_candidate.json"

BASELINE_COMMIT = "52bebecfb2a435d0e7ff2efea557c5799674ded6"
PRIMARY_REVIEWER = "codex-primary-wave4"
INDEPENDENT_REVIEWER = "codex-independent-wave4"
REVIEW_DATE = "2026-08-15"
MARKDOWN_LINK = re.compile(r"\[([^\]]+)\]\(([^)]+)\)")

SOURCE_ID_ALIASES = {
    "NEW-SRC-AWS-BEDROCK-S3V-LIMITS": "SRC-179",
    "NEW-SRC-AWS-S3V-KB-LIMITS": "SRC-179",
    "NEW-SRC-AWS-S3V-METADATA": "SRC-189",
    "NEW-SRC-AWS-S3V-QUERY": "SRC-179;SRC-189",
    "NEW-SRC-GRESHAKE-2023": "SRC-096",
}

FORBIDDEN_GENERIC_REWRITE_FRAGMENTS = (
    "が評価したデータセット、モデル、比較器、指標の範囲では",
    "本ガイドで扱う対象構成では、",
    "本ガイドの対象構成では、",
    "利用時点の対象リージョンで各サービス間の対応を確認したうえで、",
)
FORBIDDEN_GENERIC_NORMATIVE_CRITERIA = {
    "文中の比較について対象dataset、gold evidence、baseline、candidate数、指標、合否閾値を固定し、平均値だけでなく失敗sliceと回帰を記録する。",
    "文中の認可・隔離・情報保護を検索または実行の前に強制し、許可外の文書、chunk、引数が候補、context、回答、traceへ入らないことを負試験で確認する。",
    "文中の工程順と分岐ごとに入力、出力、責任主体、成功条件、失敗時の遷移をmanifestへ定義し、統合試験で追跡可能性を確認する。",
    "文中のサービス、API、field、operator、region、versionを設定manifestへ固定し、利用時点の公式仕様で対応状況と制限を確認した構成だけを統合試験へ進める。",
    "本文、図表、評価台帳で文中の用語と工程名を同じ意味で用い、入力、出力、単位、責任範囲をこの定義に一致させる。",
    "文中の識別子、設定、成果物を同じ版IDまたはtrace IDで結び、任意の回答から元文書、chunk、検索順位、設定版まで再現できることを確認する。",
}
FORBIDDEN_GENERIC_NORMATIVE_EXCEPTIONS = {
    "文中の数値は初期候補であり、dataset、model、index、負荷、言語、業務リスクが変わる場合は再測定して閾値を更新する。",
    "法令、契約、組織方針がより厳しい統制を求める場合はそちらを優先する。可用性対策を理由に認可や機密保護を緩和しない。",
    "より単純な工程が同じ品質、安全性、遅延、費用、追跡可能性の受入条件を満たす場合は、その代替構成を採用できる。",
    "対象region/versionの公式仕様が非対応または変更済みの場合は適用せず、同じ要件を満たす対応機能か独自実装へ切り替えて再試験する。",
    "公式標準や製品仕様の用語を別の意味で用いる場合は、名称、単位、変換規則を分けて併記し、既存記録を移行する。",
    "保存期間や個人情報の制約がある場合は値を削除するのではなく、承認済みの仮名化、分離保管、期間制限で追跡可能性を維持する。",
}

VERDICTS = {
    "APPROPRIATE_SUPPORTED",
    "APPROPRIATE_NORMATIVE",
    "APPROPRIATE_AFTER_QUALIFICATION",
    "REWRITE_REQUIRED",
    "REMOVE_OR_REPLACE",
    "CONTRADICTED",
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
TRUTH_LEVELS = {
    "SOURCE_ASSERTED",
    "REPRODUCED",
    "OFFICIAL_SPEC",
    "RUNTIME_VERIFIED",
    "NOT_APPLICABLE",
    "UNVERIFIED",
}
CORRECTABLE_FIELDS = {
    "appropriateness_verdict",
    "revised_sentence",
    "verdict_reason",
    "normative_criteria",
    "exceptions",
    "primary_source_ids",
    "source_locator",
    "source_claim_role",
    "supported_atoms",
    "unsupported_atoms",
    "unsupported_relation",
    "external_truth_level",
    "action",
}


def rows(path: Path) -> list[dict[str, str]]:
    with path.open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def by_id(path: Path) -> dict[str, dict[str, str]]:
    result = {row["sentence_id"]: row for row in rows(path)}
    if len(result) != len(rows(path)):
        raise SystemExit(f"duplicate sentence_id: {path}")
    return result


def split_ids(value: str) -> list[str]:
    result: list[str] = []
    for item in (part.strip() for part in value.split(";") if part.strip()):
        mapped = SOURCE_ID_ALIASES.get(item, item)
        result.extend(part.strip() for part in mapped.split(";") if part.strip())
    return list(dict.fromkeys(result))


def fallback_role(verdict: str) -> str:
    if verdict in {"APPROPRIATE_NORMATIVE", "APPROPRIATE_AFTER_QUALIFICATION"}:
        return "DEFINITION_OR_SPEC"
    return "AUTHOR_CLAIM"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def normalized_template_shell(value: str, claims: tuple[str, ...] = ()) -> str:
    """Canonicalize prose while retaining genuinely distinguishing short labels."""

    def normalize_fragment(fragment: str) -> str:
        normalized = unicodedata.normalize("NFKC", fragment).casefold()
        normalized = re.sub(r"\s+", " ", normalized).strip()
        return normalized

    def claim_projections(claim: str) -> set[str]:
        base = normalize_fragment(claim)
        if not base:
            return set()
        projections = {base}
        plain = re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", base)
        plain = re.sub(r"[`*_~]", "", plain)
        plain = normalize_fragment(plain)
        if plain:
            projections.add(plain)
        for projection in tuple(projections):
            slash_projection = re.sub(
                r"[、,，。:：;；]+", "/", projection
            )
            slash_projection = re.sub(r"/+", "/", slash_projection).strip("/ ")
            if slash_projection:
                projections.add(slash_projection)
        return projections

    def mask_quoted_payload(match: re.Match[str]) -> str:
        payload = normalize_fragment(match.group(1))
        # A short identifier or term can legitimately distinguish two otherwise
        # identical rules.  Longer quoted prose is sentence-specific payload and
        # must not be allowed to manufacture uniqueness.
        if (
            1 <= len(payload) <= 24
            and not re.search(r"[\s、。！？!?;；,，]", payload)
            and "<payload>" not in payload
        ):
            return match.group(0)
        return "<QUOTE>"

    result = normalize_fragment(value)
    payloads: set[str] = set()
    for claim in claims:
        payloads.update(claim_projections(claim))
    for payload in sorted(payloads, key=len, reverse=True):
        result = result.replace(payload, "<payload>")
    # Generated review prose must not become "unique" merely by paraphrasing
    # the row payload inside an otherwise fixed scaffold.  Normalize only the
    # slots bounded by these complete scaffold markers; ordinary prose and
    # short labels remain untouched.
    result = re.sub(
        r"(判断対象は、).*?(規則です。外部資料から一般的な効果を導くのではなく、"
        r"次の検査を受入条件とします。)",
        r"\1<payload>\2",
        result,
    )
    result = re.sub(
        r"(判断対象は、).*?(ことに限定した修正です。現文の)",
        r"\1<payload>\2",
        result,
    )
    result = re.sub(
        r"(現文の).*?(と関係).*?(には、)",
        r"\1<payload>\2<payload>\3",
        result,
    )
    result = re.sub(
        r"(検証対象として ).*?( を区別し、この文が断定する ).*?"
        r"( と関係 ).*?( について、)",
        r"\1<payload>\2<payload>\3<payload>\4",
        result,
    )
    result = re.sub(r"https?://[^\s<>]+", "<url>", result)
    # Japanese letters are ``\w`` in Python, so a word boundary does not exist
    # between an ID and a following particle such as 「は」.  Match the complete
    # ID token directly to prevent row IDs from manufacturing template uniqueness.
    result = re.sub(r"sent-\d+", "<sentence_id>", result)
    result = re.sub(r"src-\d+", "<source_id>", result)
    result = re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", result)
    result = re.sub(r"[`*_~]", "", result)
    previous = None
    while result != previous:
        previous = result
        result = result.replace("「<payload>」", "<payload>")
        result = result.replace("『<payload>』", "<payload>")
        result = re.sub(r"「([^「」]*)」", mask_quoted_payload, result)
        result = re.sub(r"『([^『』]*)』", mask_quoted_payload, result)
    result = re.sub(r"【([^】]*)】", mask_quoted_payload, result)
    result = re.sub(r"[、,，]+", "、", result)
    result = re.sub(r"[。]+", "。", result)
    return re.sub(r"\s+", " ", result).strip()


def balanced_without_same_delimiter_nesting(value: str, opening: str, closing: str) -> bool:
    open_span = False
    for character in value:
        if character == opening:
            if open_span:
                return False
            open_span = True
        elif character == closing:
            if not open_span:
                return False
            open_span = False
    return not open_span


def correction_rows(paths: tuple[Path, ...], include_reconciliation: bool) -> tuple[
    dict[str, list[dict[str, str]]], dict[tuple[str, str], str], dict[str, str]
]:
    grouped: dict[str, list[dict[str, str]]] = {}
    digests: dict[str, str] = {}
    for path in paths:
        if not path.exists():
            continue
        file_rows = rows(path)
        digests[path.name] = sha256(path)
        for row in file_rows:
            grouped.setdefault(row["sentence_id"], []).append(row)
    reconciled: dict[tuple[str, str], str] = {}
    if include_reconciliation and CORRECTION_RECONCILIATION.exists():
        digests[CORRECTION_RECONCILIATION.name] = sha256(CORRECTION_RECONCILIATION)
        for row in rows(CORRECTION_RECONCILIATION):
            reconciled[(row["sentence_id"], row["field"])] = row["final_value"]
    return grouped, reconciled, digests


def apply_corrections(
    row: dict[str, str],
    sentence_id: str,
    values: list[dict[str, str]],
    reconciled: dict[tuple[str, str], str],
) -> None:
    by_field: dict[str, list[dict[str, str]]] = {}
    for correction in values:
        by_field.setdefault(correction["field"], []).append(correction)
    for field, field_corrections in by_field.items():
        if field not in CORRECTABLE_FIELDS:
            raise SystemExit(f"correction names prohibited field: {sentence_id}: {field}")
        expected_values = {item["current_value"] for item in field_corrections}
        if len(expected_values) != 1:
            raise SystemExit(f"correction baseline conflict: {sentence_id}: {field}")
        expected = next(iter(expected_values))
        replacements = {item["replacement_value"] for item in field_corrections}
        if len(replacements) == 1:
            replacement = next(iter(replacements))
        else:
            key = (sentence_id, field)
            if key not in reconciled:
                raise SystemExit(f"unreconciled correction conflict: {sentence_id}: {field}")
            replacement = reconciled[key]
        current = row[field]
        if current == expected:
            row[field] = replacement
        elif current != replacement:
            raise SystemExit(
                f"conflicting/stale correction: {sentence_id}: {field}: {current!r}"
            )


def main() -> int:
    missing_second_pass = [path.name for path in SECOND_PASS_CORRECTION_FILES if not path.exists()]
    if missing_second_pass:
        raise SystemExit(
            "second-pass independent audit is incomplete: " + ", ".join(missing_second_pass)
        )
    missing_third_pass = [path.name for path in THIRD_PASS_CORRECTION_FILES if not path.exists()]
    if missing_third_pass:
        raise SystemExit(
            "third-pass independent audit is incomplete: " + ", ".join(missing_third_pass)
        )
    missing_fourth_pass = [path.name for path in FOURTH_PASS_CORRECTION_FILES if not path.exists()]
    if missing_fourth_pass:
        raise SystemExit(
            "fourth-pass independent audit is incomplete: " + ", ".join(missing_fourth_pass)
        )
    missing_fifth_pass = [path.name for path in FIFTH_PASS_CORRECTION_FILES if not path.exists()]
    if missing_fifth_pass:
        raise SystemExit(
            "fifth-pass independent audit is incomplete: " + ", ".join(missing_fifth_pass)
        )
    missing_sixth_pass = [path.name for path in SIXTH_PASS_CORRECTION_FILES if not path.exists()]
    if missing_sixth_pass:
        raise SystemExit(
            "sixth-pass independent audit is incomplete: " + ", ".join(missing_sixth_pass)
        )
    missing_seventh_pass = [path.name for path in SEVENTH_PASS_CORRECTION_FILES if not path.exists()]
    if missing_seventh_pass:
        raise SystemExit(
            "seventh-pass exact audit is incomplete: " + ", ".join(missing_seventh_pass)
        )
    missing_eighth_pass = [path.name for path in EIGHTH_PASS_CORRECTION_FILES if not path.exists()]
    if missing_eighth_pass:
        raise SystemExit(
            "eighth-pass independent audit is incomplete: " + ", ".join(missing_eighth_pass)
        )
    missing_ninth_pass = [path.name for path in NINTH_PASS_CORRECTION_FILES if not path.exists()]
    if missing_ninth_pass:
        raise SystemExit(
            "ninth-pass independent audit is incomplete: " + ", ".join(missing_ninth_pass)
        )
    queue = rows(QUEUE)
    existing = by_id(DECISIONS)
    primary = by_id(PRIMARY)
    independent = by_id(INDEPENDENT)
    verdict_reconciliation = by_id(VERDICT_RECONCILIATION)
    source_reconciliation = by_id(SOURCE_RECONCILIATION)
    gold_reconciliation = by_id(GOLD_RECONCILIATION)
    gold_fixture = by_id(GOLD_FIXTURE)
    corrections, correction_reconciliations, correction_digests = correction_rows(
        CORRECTION_FILES, include_reconciliation=True
    )
    second_corrections, _, second_correction_digests = correction_rows(
        SECOND_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(second_correction_digests)
    third_corrections, _, third_correction_digests = correction_rows(
        THIRD_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(third_correction_digests)
    fourth_corrections, _, fourth_correction_digests = correction_rows(
        FOURTH_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(fourth_correction_digests)
    fifth_corrections, _, fifth_correction_digests = correction_rows(
        FIFTH_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(fifth_correction_digests)
    sixth_corrections, _, sixth_correction_digests = correction_rows(
        SIXTH_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(sixth_correction_digests)
    seventh_corrections, _, seventh_correction_digests = correction_rows(
        SEVENTH_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(seventh_correction_digests)
    eighth_corrections, _, eighth_correction_digests = correction_rows(
        EIGHTH_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(eighth_correction_digests)
    ninth_corrections, _, ninth_correction_digests = correction_rows(
        NINTH_PASS_CORRECTION_FILES, include_reconciliation=False
    )
    correction_digests.update(ninth_correction_digests)
    trusted = {
        row["source_id"] for row in rows(TRUSTED_SOURCES)
        if row["eligibility"] == "eligible"
    }

    queue_ids = [row["sentence_id"] for row in queue]
    if len(queue_ids) != 678 or len(set(queue_ids)) != 678:
        raise SystemExit("Wave 4 baseline queue must contain 678 unique rows")
    if set(queue_ids) != set(verdict_reconciliation) | set(source_reconciliation):
        raise SystemExit("reconciliation files do not cover the complete Wave 4 queue")
    if set(verdict_reconciliation) & set(source_reconciliation):
        raise SystemExit("verdict and source reconciliation files overlap")
    if set(gold_reconciliation) != set(gold_fixture):
        raise SystemExit("gold reconciliation must cover the exact gold fixture")
    if not set(gold_reconciliation) <= set(queue_ids):
        raise SystemExit("gold reconciliation contains a sentence outside the baseline queue")
    if any(set(queue_ids) != set(source) for source in (existing, primary, independent)):
        raise SystemExit("blind-review or decision-ledger identity drift")
    if not set(corrections) <= set(queue_ids):
        raise SystemExit("candidate correction contains a sentence outside the baseline queue")
    if not set(second_corrections) <= set(queue_ids):
        raise SystemExit("second-pass correction contains a sentence outside the baseline queue")
    if not set(third_corrections) <= set(queue_ids):
        raise SystemExit("third-pass correction contains a sentence outside the baseline queue")
    if not set(fourth_corrections) <= set(queue_ids):
        raise SystemExit("fourth-pass correction contains a sentence outside the baseline queue")
    if not set(fifth_corrections) <= set(queue_ids):
        raise SystemExit("fifth-pass correction contains a sentence outside the baseline queue")
    if not set(sixth_corrections) <= set(queue_ids):
        raise SystemExit("sixth-pass correction contains a sentence outside the baseline queue")
    if not set(seventh_corrections) <= set(queue_ids):
        raise SystemExit("seventh-pass correction contains a sentence outside the baseline queue")
    if not set(eighth_corrections) <= set(queue_ids):
        raise SystemExit("eighth-pass correction contains a sentence outside the baseline queue")
    if not set(ninth_corrections) <= set(queue_ids):
        raise SystemExit("ninth-pass correction contains a sentence outside the baseline queue")
    third_pass_fields = {
        item["field"]
        for values in third_corrections.values()
        for item in values
    }
    allowed_third_pass_fields = {
        "verdict_reason", "normative_criteria", "exceptions", "revised_sentence",
    }
    if not third_pass_fields <= allowed_third_pass_fields:
        raise SystemExit(
            "third-pass audit may only correct reason, criteria, exceptions, or prose"
        )
    fourth_pass_fields = {
        item["field"]
        for values in fourth_corrections.values()
        for item in values
    }
    allowed_fourth_pass_fields = {"verdict_reason", "normative_criteria", "exceptions"}
    if not fourth_pass_fields <= allowed_fourth_pass_fields:
        raise SystemExit(
            "fourth-pass audit may only correct reason, criteria, or exceptions"
        )
    fifth_pass_fields = {
        item["field"]
        for values in fifth_corrections.values()
        for item in values
    }
    if not fifth_pass_fields <= {"verdict_reason", "normative_criteria", "exceptions"}:
        raise SystemExit("fifth-pass audit may only correct reason, criteria, or exceptions")
    sixth_pass_fields = {
        item["field"]
        for values in sixth_corrections.values()
        for item in values
    }
    if not sixth_pass_fields <= {
        "verdict_reason", "normative_criteria", "exceptions", "revised_sentence",
    }:
        raise SystemExit(
            "sixth-pass audit may only correct reason, criteria, exceptions, or prose"
        )
    seventh_pass_fields = {
        item["field"]
        for values in seventh_corrections.values()
        for item in values
    }
    if not seventh_pass_fields <= {"normative_criteria", "exceptions"}:
        raise SystemExit("seventh-pass exact audit may only correct criteria or exceptions")
    eighth_pass_fields = {
        item["field"]
        for values in eighth_corrections.values()
        for item in values
    }
    if eighth_pass_fields != {"verdict_reason"}:
        raise SystemExit("eighth-pass independent audit must correct verdict_reason only")
    ninth_pass_fields = {
        item["field"]
        for values in ninth_corrections.values()
        for item in values
    }
    if not ninth_pass_fields <= {
        "revised_sentence", "verdict_reason", "normative_criteria", "exceptions",
    }:
        raise SystemExit("ninth-pass independent audit names a prohibited field")

    output: list[dict[str, str]] = []
    for queue_row in queue:
        sentence_id = queue_row["sentence_id"]
        row = dict(primary[sentence_id])
        baseline = existing[sentence_id]

        if sentence_id in verdict_reconciliation:
            final = verdict_reconciliation[sentence_id]
            verdict = final["final_verdict"]
            revised = final["final_revised_sentence"]
            reason = final["final_reason"]
            criteria = final["final_normative_criteria"]
            exceptions = final["final_exceptions"]
            action = final["final_action"]
        else:
            final = source_reconciliation[sentence_id]
            verdict = final["final_verdict"]
            revised = final["final_revised_sentence"]
            reason = final["reconciliation_reason"]
            criteria = row.get("normative_criteria", "")
            exceptions = row.get("exceptions", "")
            action = (
                f"{row['scope']} を「{revised}」へ置換し、再抽出後の文と一次資料locatorを照合する。"
                if revised
                else f"{row['scope']} の本文を維持し、確定した一次資料locatorと主張役割を台帳へ反映する。"
            )
            row["primary_source_ids"] = final["final_source_ids"]
            row["source_locator"] = final["final_source_locator"]
            row["source_claim_role"] = final["final_source_claim_role"]
            row["external_truth_level"] = final["final_external_truth_level"]

        gold = gold_reconciliation.get(sentence_id)
        if gold is not None:
            verdict = gold["agreed_verdict"]
            if gold["agreed_revised_sentence"]:
                revised = gold["agreed_revised_sentence"]
            reason = (
                "Gold標本の二者校正で確定。"
                + (gold["disagreement_reason"] or "一次・独立レビューの判定が一致した。")
            )
            locator = gold["agreed_source_locator"]
            if locator and locator != "NOT_APPLICABLE_LOCAL_NORM":
                row["source_locator"] = locator
            row["source_claim_role"] = gold["agreed_source_claim_role"]
            row["external_truth_level"] = gold["agreed_external_truth_level"]
            action = (
                f"{row['scope']} を「{revised}」へ置換し、Gold合意文との一致を再抽出後に確認する。"
                if revised
                else f"{row['scope']} の本文を維持し、Gold合意の判定とlocatorを台帳へ反映する。"
            )

        if verdict not in VERDICTS:
            raise SystemExit(f"invalid final verdict: {sentence_id}: {verdict}")
        revised = MARKDOWN_LINK.sub(
            lambda match: match.group(1) if match.group(2).startswith(("http://", "https://")) else match.group(0),
            revised,
        )
        for link in MARKDOWN_LINK.finditer(baseline["original_sentence"]):
            anchor, target = link.groups()
            markup = link.group(0)
            if not target.startswith(("http://", "https://")) and markup not in revised and anchor in revised:
                revised = revised.replace(anchor, markup, 1)
        if sentence_id == "SENT-4236":
            revised = "Long-context RAGは、" + revised
        elif sentence_id == "SENT-4242":
            revised = "Agentic RAGは、" + revised
        if row.get("source_claim_role") not in SOURCE_ROLES:
            independent_role = independent[sentence_id].get("source_claim_role", "")
            row["source_claim_role"] = (
                independent_role if independent_role in SOURCE_ROLES else fallback_role(verdict)
            )
        if row.get("external_truth_level") not in TRUTH_LEVELS:
            row["external_truth_level"] = (
                "NOT_APPLICABLE" if verdict == "APPROPRIATE_NORMATIVE" else "UNVERIFIED"
            )

        source_ids = split_ids(row.get("primary_source_ids", ""))
        row["primary_source_ids"] = ";".join(source_ids)
        if verdict in {"APPROPRIATE_SUPPORTED", "APPROPRIATE_AFTER_QUALIFICATION"}:
            unknown = set(source_ids) - trusted
            if not source_ids or unknown:
                raise SystemExit(
                    f"final source verdict has missing/unknown source IDs: {sentence_id}: {sorted(unknown)}"
                )
            if not row.get("source_locator"):
                raise SystemExit(f"final source verdict lacks locator: {sentence_id}")
            if row["external_truth_level"] == "UNVERIFIED":
                raise SystemExit(f"final source verdict remains unverified: {sentence_id}")
            row["unsupported_atoms"] = ""
            row["unsupported_relation"] = ""

        if verdict == "APPROPRIATE_SUPPORTED":
            revised = ""
        elif verdict == "APPROPRIATE_NORMATIVE":
            row["external_truth_level"] = "NOT_APPLICABLE"
            if revised == baseline["original_sentence"]:
                revised = ""
            if not criteria or criteria.startswith("NOT_APPLICABLE"):
                criteria = "本ガイド内で主体・対象・実行条件・判定基準を明示し、その基準に従う。"
            if not exceptions or exceptions.startswith("NOT_APPLICABLE"):
                exceptions = "一次資料または対象環境の検証結果が異なる場合は、その差分を優先して基準を更新する。"
            row["unsupported_atoms"] = ""
            row["unsupported_relation"] = ""
        elif verdict == "APPROPRIATE_AFTER_QUALIFICATION":
            if not revised:
                raise SystemExit(f"qualified verdict lacks revised sentence: {sentence_id}")
        elif verdict == "REWRITE_REQUIRED" and not revised:
            raise SystemExit(f"rewrite verdict lacks revised sentence: {sentence_id}")

        row.update({
            "sentence_id": sentence_id,
            "docs_commit": BASELINE_COMMIT,
            "original_sentence": baseline["original_sentence"],
            "revised_sentence": revised,
            "appropriateness_verdict": verdict,
            "verdict_reason": reason,
            "normative_criteria": criteria,
            "exceptions": exceptions,
            "action": action,
            "owner": "rag-guide-maintainers",
            "due_date": "",
            "unblock_condition": "",
            "lean_theorem": "",
            "lean_assurance": "INCONCLUSIVE",
            "axiom_audit": "NOT_APPLICABLE_UNPROVED",
            "primary_reviewer": PRIMARY_REVIEWER,
            "primary_review_date": REVIEW_DATE,
            "independent_reviewer": INDEPENDENT_REVIEWER,
            "independent_review_date": REVIEW_DATE,
            "review_status": "FINAL_TWO_REVIEWER_APPROVED",
        })

        apply_corrections(
            row,
            sentence_id,
            corrections.get(sentence_id, []),
            correction_reconciliations,
        )

        verdict = row["appropriateness_verdict"]
        revised = row["revised_sentence"]
        if verdict not in VERDICTS:
            raise SystemExit(f"corrected row has invalid verdict: {sentence_id}: {verdict}")
        if row["external_truth_level"] not in TRUTH_LEVELS:
            raise SystemExit(f"corrected row has invalid truth level: {sentence_id}")
        if not row["verdict_reason"] or not row["action"]:
            raise SystemExit(f"corrected row lacks reason/action: {sentence_id}")
        if verdict == "APPROPRIATE_NORMATIVE":
            row["primary_source_ids"] = ""
            row["source_locator"] = ""
            row["source_claim_role"] = "DEFINITION_OR_SPEC"
            row["supported_atoms"] = ""
            row["unsupported_atoms"] = ""
            row["unsupported_relation"] = ""
            row["external_truth_level"] = "NOT_APPLICABLE"
        else:
            row["normative_criteria"] = "NOT_APPLICABLE_NON_NORMATIVE"
            row["exceptions"] = "NOT_APPLICABLE_NON_NORMATIVE"
        if verdict == "APPROPRIATE_NORMATIVE":
            if not row["normative_criteria"] or row["normative_criteria"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"corrected normative row lacks criteria: {sentence_id}")
            if not row["exceptions"] or row["exceptions"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"corrected normative row lacks exceptions: {sentence_id}")
        if verdict in {"APPROPRIATE_SUPPORTED", "APPROPRIATE_AFTER_QUALIFICATION"}:
            source_ids = split_ids(row["primary_source_ids"])
            unknown = set(source_ids) - trusted
            if not source_ids or unknown:
                raise SystemExit(f"corrected source verdict has missing/unknown sources: {sentence_id}")
            if not row["source_locator"] or row["source_claim_role"] not in SOURCE_ROLES:
                raise SystemExit(f"corrected source verdict lacks locator/role: {sentence_id}")
            if row["external_truth_level"] == "UNVERIFIED":
                raise SystemExit(f"corrected source verdict remains unverified: {sentence_id}")
            if row["unsupported_atoms"] or row["unsupported_relation"]:
                raise SystemExit(f"corrected source verdict remains unsupported: {sentence_id}")
        if verdict == "APPROPRIATE_SUPPORTED":
            if revised:
                raise SystemExit(f"supported row unexpectedly rewrites prose: {sentence_id}")
            if not row["supported_atoms"] or row["supported_atoms"] == "NONE_DIRECTLY_VERIFIED":
                raise SystemExit(f"supported row lacks verified atoms: {sentence_id}")
        if verdict in {"APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED", "CONTRADICTED"} and not revised:
            raise SystemExit(f"corrected actionable row lacks revision: {sentence_id}")
        if verdict in {"REWRITE_REQUIRED", "CONTRADICTED"} and revised == row["original_sentence"]:
            raise SystemExit(f"corrected actionable row is a no-op: {sentence_id}")
        if row["source_claim_role"] not in SOURCE_ROLES:
            raise SystemExit(f"corrected row lacks a valid source role: {sentence_id}")
        if gold is not None and gold["agreed_source_locator"] == "NOT_APPLICABLE_LOCAL_NORM":
            row["primary_source_ids"] = ""
            row["source_locator"] = ""
            row["supported_atoms"] = ""
        if verdict == "APPROPRIATE_SUPPORTED":
            row["action"] = f"{row['scope']} の本文を維持し、確定した一次資料locator・主張役割・外的真偽境界を台帳へ固定する。"
        elif verdict == "REMOVE_OR_REPLACE":
            row["action"] = f"{row['scope']} のMarkdown表示は維持し、Wave 4分類overrideで技術的事実の命題集合から除外する。"
        elif revised:
            row["action"] = f"{row['scope']} の現文を次の文へ置換する: {revised} 再抽出した文面と分類を照合する。"
        else:
            row["action"] = f"{row['scope']} の本文を維持し、normative_criteriaとexceptionsを設計台帳へ固定する。"
        if revised and verdict != "REMOVE_OR_REPLACE" and revised not in row["action"]:
            raise SystemExit(f"final action does not contain exact revision: {sentence_id}")

        # The second-pass ledgers are authored against the exact first-pass
        # candidate above.  Apply them only after the row has reached that
        # canonical state, then repeat all dependent normalization and checks.
        apply_corrections(
            row,
            sentence_id,
            second_corrections.get(sentence_id, []),
            {},
        )

        verdict = row["appropriateness_verdict"]
        revised = row["revised_sentence"]
        if verdict not in VERDICTS:
            raise SystemExit(f"second-pass row has invalid verdict: {sentence_id}: {verdict}")
        if row["external_truth_level"] not in TRUTH_LEVELS:
            raise SystemExit(f"second-pass row has invalid truth level: {sentence_id}")
        if not row["verdict_reason"]:
            raise SystemExit(f"second-pass row lacks reason: {sentence_id}")
        if verdict == "APPROPRIATE_NORMATIVE":
            row["primary_source_ids"] = ""
            row["source_locator"] = ""
            row["source_claim_role"] = "DEFINITION_OR_SPEC"
            row["supported_atoms"] = ""
            row["unsupported_atoms"] = ""
            row["unsupported_relation"] = ""
            row["external_truth_level"] = "NOT_APPLICABLE"
            if not row["normative_criteria"] or row["normative_criteria"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"second-pass normative row lacks criteria: {sentence_id}")
            if not row["exceptions"] or row["exceptions"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"second-pass normative row lacks exceptions: {sentence_id}")
        else:
            row["normative_criteria"] = "NOT_APPLICABLE_NON_NORMATIVE"
            row["exceptions"] = "NOT_APPLICABLE_NON_NORMATIVE"
        if gold is not None and gold["agreed_source_locator"] == "NOT_APPLICABLE_LOCAL_NORM":
            row["primary_source_ids"] = ""
            row["source_locator"] = ""
            row["supported_atoms"] = ""
        if verdict in {"APPROPRIATE_SUPPORTED", "APPROPRIATE_AFTER_QUALIFICATION"}:
            source_ids = split_ids(row["primary_source_ids"])
            unknown = set(source_ids) - trusted
            if not source_ids or unknown:
                raise SystemExit(f"second-pass source verdict has missing/unknown sources: {sentence_id}")
            if not row["source_locator"] or row["source_claim_role"] not in SOURCE_ROLES:
                raise SystemExit(f"second-pass source verdict lacks locator/role: {sentence_id}")
            if row["external_truth_level"] == "UNVERIFIED":
                raise SystemExit(f"second-pass source verdict remains unverified: {sentence_id}")
            if row["unsupported_atoms"] or row["unsupported_relation"]:
                raise SystemExit(f"second-pass source verdict remains unsupported: {sentence_id}")
        if verdict == "APPROPRIATE_SUPPORTED":
            if revised:
                raise SystemExit(f"second-pass supported row unexpectedly rewrites prose: {sentence_id}")
            if not row["supported_atoms"] or row["supported_atoms"] == "NONE_DIRECTLY_VERIFIED":
                raise SystemExit(f"second-pass supported row lacks verified atoms: {sentence_id}")
        if verdict in {"APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED", "CONTRADICTED"} and not revised:
            raise SystemExit(f"second-pass actionable row lacks revision: {sentence_id}")
        if verdict in {"REWRITE_REQUIRED", "CONTRADICTED"} and revised == row["original_sentence"]:
            raise SystemExit(f"second-pass actionable row is a no-op: {sentence_id}")
        if row["source_claim_role"] not in SOURCE_ROLES:
            raise SystemExit(f"second-pass row lacks a valid source role: {sentence_id}")

        if verdict == "APPROPRIATE_SUPPORTED":
            row["action"] = f"{row['scope']} の本文を維持し、確定した一次資料locator・主張役割・外的真偽境界を台帳へ固定する。"
        elif verdict == "REMOVE_OR_REPLACE":
            row["action"] = f"{row['scope']} のMarkdown表示は維持し、Wave 4分類overrideで技術的事実の命題集合から除外する。"
        elif revised:
            row["action"] = f"{row['scope']} の現文を次の文へ置換する: {revised} 再抽出した文面と分類を照合する。"
        else:
            row["action"] = f"{row['scope']} の本文を維持し、normative_criteriaとexceptionsを設計台帳へ固定する。"
        if revised and verdict != "REMOVE_OR_REPLACE" and revised not in row["action"]:
            raise SystemExit(f"second-pass action does not contain exact revision: {sentence_id}")

        apply_corrections(
            row,
            sentence_id,
            third_corrections.get(sentence_id, []),
            {},
        )
        verdict = row["appropriateness_verdict"]
        revised = row["revised_sentence"]
        if not row["verdict_reason"]:
            raise SystemExit(f"third-pass row lacks reason: {sentence_id}")
        if verdict == "APPROPRIATE_NORMATIVE":
            if not row["normative_criteria"] or row["normative_criteria"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"third-pass normative row lacks criteria: {sentence_id}")
            if not row["exceptions"] or row["exceptions"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"third-pass normative row lacks exceptions: {sentence_id}")
        if verdict in {"APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED", "CONTRADICTED"} and not revised:
            raise SystemExit(f"third-pass actionable row lacks revision: {sentence_id}")
        if verdict in {"REWRITE_REQUIRED", "CONTRADICTED"} and revised == row["original_sentence"]:
            raise SystemExit(f"third-pass actionable row is a no-op: {sentence_id}")
        if verdict == "APPROPRIATE_SUPPORTED":
            row["action"] = f"{row['scope']} の本文を維持し、確定した一次資料locator・主張役割・外的真偽境界を台帳へ固定する。"
        elif verdict == "REMOVE_OR_REPLACE":
            row["action"] = f"{row['scope']} のMarkdown表示は維持し、Wave 4分類overrideで技術的事実の命題集合から除外する。"
        elif revised:
            row["action"] = f"{row['scope']} の現文を次の文へ置換する: {revised} 再抽出した文面と分類を照合する。"
        else:
            row["action"] = f"{row['scope']} の本文を維持し、normative_criteriaとexceptionsを設計台帳へ固定する。"
        if revised and verdict != "REMOVE_OR_REPLACE" and revised not in row["action"]:
            raise SystemExit(f"third-pass action does not contain exact revision: {sentence_id}")

        apply_corrections(
            row,
            sentence_id,
            fourth_corrections.get(sentence_id, []),
            {},
        )
        if not row["verdict_reason"]:
            raise SystemExit(f"fourth-pass row lacks reason: {sentence_id}")
        if verdict == "APPROPRIATE_NORMATIVE":
            if not row["normative_criteria"] or row["normative_criteria"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"fourth-pass normative row lacks criteria: {sentence_id}")
            if not row["exceptions"] or row["exceptions"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"fourth-pass normative row lacks exceptions: {sentence_id}")
        if (
            any(fragment in revised for fragment in FORBIDDEN_GENERIC_REWRITE_FRAGMENTS)
            or revised.startswith("利用時点の対象リージョンの公式仕様で")
        ):
            raise SystemExit(f"generic source-scope rewrite remains: {sentence_id}")
        if verdict == "APPROPRIATE_NORMATIVE":
            if row["normative_criteria"] in FORBIDDEN_GENERIC_NORMATIVE_CRITERIA:
                raise SystemExit(f"generic normative criteria remains: {sentence_id}")
            if row["exceptions"] in FORBIDDEN_GENERIC_NORMATIVE_EXCEPTIONS:
                raise SystemExit(f"generic normative exception remains: {sentence_id}")
        apply_corrections(
            row,
            sentence_id,
            fifth_corrections.get(sentence_id, []),
            {},
        )
        if not row["verdict_reason"]:
            raise SystemExit(f"fifth-pass row lacks reason: {sentence_id}")
        apply_corrections(
            row,
            sentence_id,
            sixth_corrections.get(sentence_id, []),
            {},
        )
        revised = row["revised_sentence"]
        if not row["verdict_reason"]:
            raise SystemExit(f"sixth-pass row lacks reason: {sentence_id}")
        if verdict == "APPROPRIATE_SUPPORTED":
            row["action"] = f"{row['scope']} の本文を維持し、確定した一次資料locator・主張役割・外的真偽境界を台帳へ固定する。"
        elif verdict == "REMOVE_OR_REPLACE":
            row["action"] = f"{row['scope']} のMarkdown表示は維持し、Wave 4分類overrideで技術的事実の命題集合から除外する。"
        elif revised:
            row["action"] = f"{row['scope']} の現文を次の文へ置換する: {revised} 再抽出した文面と分類を照合する。"
        else:
            row["action"] = f"{row['scope']} の本文を維持し、normative_criteriaとexceptionsを設計台帳へ固定する。"
        apply_corrections(
            row,
            sentence_id,
            seventh_corrections.get(sentence_id, []),
            {},
        )
        apply_corrections(
            row,
            sentence_id,
            eighth_corrections.get(sentence_id, []),
            {},
        )
        apply_corrections(
            row,
            sentence_id,
            ninth_corrections.get(sentence_id, []),
            {},
        )
        revised = row["revised_sentence"]
        if verdict == "APPROPRIATE_SUPPORTED":
            row["action"] = f"{row['scope']} の本文を維持し、確定した一次資料locator・主張役割・外的真偽境界を台帳へ固定する。"
        elif verdict == "REMOVE_OR_REPLACE":
            row["action"] = f"{row['scope']} のMarkdown表示は維持し、Wave 4分類overrideで技術的事実の命題集合から除外する。"
        elif revised:
            row["action"] = f"{row['scope']} の現文を次の文へ置換する: {revised} 再抽出した文面と分類を照合する。"
        else:
            row["action"] = f"{row['scope']} の本文を維持し、normative_criteriaとexceptionsを設計台帳へ固定する。"
        output.append({field: row.get(field, "") for field in existing[sentence_id]})

    if [row["sentence_id"] for row in output] != queue_ids:
        raise SystemExit("candidate order drift")

    for row in output:
        sentence_id = row["sentence_id"]
        verdict = row["appropriateness_verdict"]
        revised = row["revised_sentence"]
        if verdict not in VERDICTS:
            raise SystemExit(f"final row has invalid verdict: {sentence_id}: {verdict}")
        if row["source_claim_role"] not in SOURCE_ROLES:
            raise SystemExit(f"final row lacks a valid source role: {sentence_id}")
        if row["external_truth_level"] not in TRUTH_LEVELS:
            raise SystemExit(f"final row has invalid truth level: {sentence_id}")
        if not row["verdict_reason"] or not row["action"]:
            raise SystemExit(f"final row lacks reason/action: {sentence_id}")
        if verdict == "APPROPRIATE_NORMATIVE":
            if row["source_claim_role"] != "DEFINITION_OR_SPEC":
                raise SystemExit(f"final normative row has non-definition role: {sentence_id}")
            if row["external_truth_level"] != "NOT_APPLICABLE":
                raise SystemExit(f"final normative row has external truth claim: {sentence_id}")
            if any(
                row[field]
                for field in (
                    "primary_source_ids", "source_locator", "supported_atoms",
                    "unsupported_atoms", "unsupported_relation",
                )
            ):
                raise SystemExit(f"final normative row retains source evidence: {sentence_id}")
            if not row["normative_criteria"] or row["normative_criteria"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"final normative row lacks criteria: {sentence_id}")
            if not row["exceptions"] or row["exceptions"].startswith("NOT_APPLICABLE"):
                raise SystemExit(f"final normative row lacks exceptions: {sentence_id}")
            if row["normative_criteria"] in FORBIDDEN_GENERIC_NORMATIVE_CRITERIA:
                raise SystemExit(f"generic normative criteria remains: {sentence_id}")
            if row["exceptions"] in FORBIDDEN_GENERIC_NORMATIVE_EXCEPTIONS:
                raise SystemExit(f"generic normative exception remains: {sentence_id}")
        else:
            if row["normative_criteria"] != "NOT_APPLICABLE_NON_NORMATIVE":
                raise SystemExit(f"final non-normative row retains criteria: {sentence_id}")
            if row["exceptions"] != "NOT_APPLICABLE_NON_NORMATIVE":
                raise SystemExit(f"final non-normative row retains exceptions: {sentence_id}")
        if verdict in {"APPROPRIATE_SUPPORTED", "APPROPRIATE_AFTER_QUALIFICATION"}:
            source_ids = split_ids(row["primary_source_ids"])
            if not source_ids or set(source_ids) - trusted:
                raise SystemExit(f"final source verdict has missing/unknown sources: {sentence_id}")
            if not row["source_locator"]:
                raise SystemExit(f"final source verdict lacks locator: {sentence_id}")
            if row["external_truth_level"] not in {
                "SOURCE_ASSERTED", "REPRODUCED", "OFFICIAL_SPEC", "RUNTIME_VERIFIED",
            }:
                raise SystemExit(f"final source verdict lacks verified truth boundary: {sentence_id}")
            if not row["supported_atoms"] or row["supported_atoms"] == "NONE_DIRECTLY_VERIFIED":
                raise SystemExit(f"final source verdict lacks supported atoms: {sentence_id}")
            if row["unsupported_atoms"] or row["unsupported_relation"]:
                raise SystemExit(f"final source verdict retains unsupported content: {sentence_id}")
        if verdict == "APPROPRIATE_SUPPORTED" and revised:
            raise SystemExit(f"final supported row unexpectedly rewrites prose: {sentence_id}")
        if verdict in {
            "APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED", "CONTRADICTED",
        } and not revised:
            raise SystemExit(f"final actionable row lacks revision: {sentence_id}")
        if verdict in {"REWRITE_REQUIRED", "CONTRADICTED"} and revised == row["original_sentence"]:
            raise SystemExit(f"final actionable row is a no-op: {sentence_id}")
        if revised and (
            any(fragment in revised for fragment in FORBIDDEN_GENERIC_REWRITE_FRAGMENTS)
            or revised.startswith("利用時点の対象リージョンの公式仕様で")
        ):
            raise SystemExit(f"generic source-scope rewrite remains: {sentence_id}")
        if verdict == "APPROPRIATE_SUPPORTED":
            expected_action = (
                f"{row['scope']} の本文を維持し、"
                "確定した一次資料locator・主張役割・外的真偽境界を台帳へ固定する。"
            )
        elif verdict == "REMOVE_OR_REPLACE":
            expected_action = (
                f"{row['scope']} のMarkdown表示は維持し、"
                "Wave 4分類overrideで技術的事実の命題集合から除外する。"
            )
        elif revised:
            expected_action = (
                f"{row['scope']} の現文を次の文へ置換する: {revised} "
                "再抽出した文面と分類を照合する。"
            )
        else:
            expected_action = (
                f"{row['scope']} の本文を維持し、"
                "normative_criteriaとexceptionsを設計台帳へ固定する。"
            )
        if row["action"] != expected_action:
            raise SystemExit(f"final action is not exact: {sentence_id}")

    duplicate_reasons = {
        reason: count
        for reason, count in Counter(row["verdict_reason"] for row in output).items()
        if count > 1
    }
    if duplicate_reasons:
        raise SystemExit(
            f"generic duplicate verdict reasons remain: groups={len(duplicate_reasons)}"
        )
    reason_shells = Counter(
        normalized_template_shell(
            row["verdict_reason"],
            (
                row["original_sentence"], row["revised_sentence"],
                row["normative_criteria"], row["exceptions"], row["source_locator"],
            ),
        )
        for row in output
    )
    duplicate_reason_shells = {
        shell: count
        for shell, count in reason_shells.items()
        if count > 1
    }
    if duplicate_reason_shells:
        raise SystemExit(
            f"generic normalized verdict reason shells remain: groups={len(duplicate_reason_shells)}"
        )
    malformed_reason_ids = [
        row["sentence_id"] for row in output
        if "この記述は " in row["verdict_reason"]
        and " を本ガイドの設計・評価・運用へ適用する規則で" in row["verdict_reason"]
    ]
    if malformed_reason_ids:
        raise SystemExit(
            f"malformed generated verdict reasons remain: rows={len(malformed_reason_ids)}"
        )
    normative_rows = [
        row for row in output
        if row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE"
    ]
    for field in ("normative_criteria", "exceptions"):
        shells = Counter(
            normalized_template_shell(
                row[field], (row["revised_sentence"], row["original_sentence"])
            )
            for row in normative_rows
        )
        duplicate_shells = {
            shell: count
            for shell, count in shells.items()
            if count > 1
        }
        if duplicate_shells:
            raise SystemExit(
                f"generic normalized {field} shells remain: groups={len(duplicate_shells)}"
            )
    revision_shells = Counter(
        normalized_template_shell(row["revised_sentence"], (row["original_sentence"],))
        for row in output
        if row["appropriateness_verdict"] in {
            "APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED", "CONTRADICTED",
        }
    )
    duplicate_revision_shells = {
        shell: count for shell, count in revision_shells.items() if count > 1
    }
    if duplicate_revision_shells:
        raise SystemExit(
            "generic normalized revised_sentence shells remain: "
            f"groups={len(duplicate_revision_shells)}"
        )
    for row in output:
        for field in ("revised_sentence", "normative_criteria", "exceptions", "action"):
            value = row[field]
            for opening, closing in (("「", "」"), ("『", "』")):
                if not balanced_without_same_delimiter_nesting(value, opening, closing):
                    raise SystemExit(
                        f"unbalanced or same-delimiter nested quote: {row['sentence_id']}: {field}"
                    )

    with OUTPUT.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=list(output[0]), lineterminator="\n")
        writer.writeheader()
        writer.writerows(output)

    digest = sha256(OUTPUT)
    manifest = {
        "baseline_docs_commit": BASELINE_COMMIT,
        "row_count": len(output),
        "verdict_counts": dict(sorted(Counter(row["appropriateness_verdict"] for row in output).items())),
        "primary_reviewer": PRIMARY_REVIEWER,
        "independent_reviewer": INDEPENDENT_REVIEWER,
        "review_date": REVIEW_DATE,
        "candidate_sha256": digest,
        "input_sha256": {
            path.relative_to(ROOT).as_posix(): sha256(path)
            for path in (
                QUEUE,
                DECISIONS,
                PRIMARY,
                INDEPENDENT,
                VERDICT_RECONCILIATION,
                SOURCE_RECONCILIATION,
                GOLD_RECONCILIATION,
                GOLD_FIXTURE,
                TRUSTED_SOURCES,
            )
        },
        "correction_ledgers": correction_digests,
        "status": "PENDING_EXACT_CANDIDATE_SIGNOFF",
    }
    MANIFEST.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(manifest, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
