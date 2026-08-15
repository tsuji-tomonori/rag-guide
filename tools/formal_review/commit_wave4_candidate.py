#!/usr/bin/env python3
"""Promote an exactly signed Wave 4 candidate to the authoritative ledgers."""

from __future__ import annotations

import csv
from pathlib import Path

from apply_wave4_candidate import verify_candidate, verify_signoffs


ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "formal" / "review-data"
CANDIDATE = DATA / "wave4_final_review_candidate.csv"
DECISIONS = DATA / "appropriateness_review_decisions.csv"
GOLD = DATA / "appropriateness_gold_fixture.csv"
GOLD_RECONCILIATION = DATA / "wave4_gold_reconciliation.csv"
RELATIONS = DATA / "appropriateness_relation_evidence.csv"

RELATION_FIELDS = [
    "sentence_id", "logical_operator", "relation_disposition",
    "evidence_source_ids", "evidence_locator", "spec_contract",
    "relation_reviewer", "relation_review_date", "relation_status", "notes",
]


def read(path: Path) -> list[dict[str, str]]:
    with path.open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def write(path: Path, values: list[dict[str, str]], fields: list[str]) -> None:
    with path.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields, lineterminator="\n")
        writer.writeheader()
        writer.writerows(values)


def main() -> int:
    candidate = read(CANDIDATE)
    manifest = verify_candidate(candidate, require_provenance=True)
    verify_signoffs(manifest)

    decision_fields = list(candidate[0])
    write(DECISIONS, candidate, decision_fields)

    candidate_by_id = {row["sentence_id"]: row for row in candidate}
    reconciliation = {row["sentence_id"]: row for row in read(GOLD_RECONCILIATION)}
    gold = read(GOLD)
    if set(reconciliation) != {row["sentence_id"] for row in gold}:
        raise SystemExit("gold fixture and reconciliation identity mismatch")
    for row in gold:
        sentence_id = row["sentence_id"]
        agreed = reconciliation[sentence_id]
        if candidate_by_id[sentence_id]["appropriateness_verdict"] != agreed["agreed_verdict"]:
            raise SystemExit(f"signed candidate contradicts gold verdict: {sentence_id}")
        row.update({
            "calibration_status": "CALIBRATED",
            "agreed_verdict": agreed["agreed_verdict"],
            "disagreement_reason": agreed["disagreement_reason"] or "一次・独立レビュー一致",
            "primary_reviewer": agreed["primary_reviewer"],
            "primary_review_date": agreed["primary_review_date"],
            "independent_reviewer": agreed["independent_reviewer"],
            "independent_review_date": agreed["independent_review_date"],
        })
    write(GOLD, gold, list(gold[0]))

    relations: list[dict[str, str]] = []
    for row in candidate:
        if row["logical_operator"] not in {"NOT", "IMPLIES"}:
            continue
        verdict = row["appropriateness_verdict"]
        if verdict in {"APPROPRIATE_SUPPORTED", "APPROPRIATE_AFTER_QUALIFICATION"}:
            disposition = "SOURCE_SUPPORTED"
            evidence_ids = row["primary_source_ids"]
            locator = row["source_locator"]
            contract = ""
            notes = "二者レビューで関係自体を一次資料locatorへ限定した。"
        elif verdict == "APPROPRIATE_NORMATIVE":
            disposition = "SPEC_CONTRACT_SUPPORTED"
            evidence_ids = ""
            locator = ""
            contract = row["normative_criteria"]
            notes = "外部事実ではなく本ガイドのローカル契約として確定した。"
        else:
            disposition = "REMOVED_BY_REWRITE"
            evidence_ids = ""
            locator = ""
            contract = ""
            notes = "原文の未支持NOT/IMPLIESを、署名済み修正文または非命題分類で解消した。"
        relations.append({
            "sentence_id": row["sentence_id"],
            "logical_operator": row["logical_operator"],
            "relation_disposition": disposition,
            "evidence_source_ids": evidence_ids,
            "evidence_locator": locator,
            "spec_contract": contract,
            "relation_reviewer": str(manifest["independent_reviewer"]),
            "relation_review_date": str(manifest["review_date"]),
            "relation_status": "VERIFIED",
            "notes": notes,
        })
    if len(relations) != 187:
        raise SystemExit(f"expected 187 NOT/IMPLIES relation rows, got {len(relations)}")
    write(RELATIONS, relations, RELATION_FIELDS)
    print(f"Wave 4 candidate committed: decisions={len(candidate)}, gold={len(gold)}, relations={len(relations)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
