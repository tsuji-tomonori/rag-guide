#!/usr/bin/env python3
"""Generate exact text-hash overrides for human-adjudicated local prose."""

from __future__ import annotations

import csv
import hashlib
from pathlib import Path

from apply_wave4_candidate import verify_candidate, verify_signoffs


ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "formal" / "review-data"
OUTPUT = DATA / "appropriateness_classification_overrides.csv"
FIELDS = [
    "baseline_sentence_id",
    "file",
    "target_sentence",
    "target_sentence_sha256",
    "claim_type",
    "evidence_required",
    "classification_reason",
    "source_verdict",
    "review_status",
]


def read_csv(name: str) -> list[dict[str, str]]:
    with (DATA / name).open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def main() -> int:
    queue = {row["sentence_id"]: row for row in read_csv("appropriateness_review_queue.csv")}
    candidate = read_csv("wave4_final_review_candidate.csv")
    manifest = verify_candidate(candidate, require_provenance=True)
    verify_signoffs(manifest)
    output: list[dict[str, str]] = []
    for decision in candidate:
        verdict = decision["appropriateness_verdict"]
        if verdict not in {"APPROPRIATE_NORMATIVE", "REMOVE_OR_REPLACE"}:
            continue
        target = decision["revised_sentence"]
        if verdict == "APPROPRIATE_NORMATIVE" and not target:
            target = decision["original_sentence"]
        if not target:
            # An actual removal has no target sentence to reclassify.
            continue
        claim_type = (
            "normative_design_statement"
            if verdict == "APPROPRIATE_NORMATIVE"
            else "expository_or_structural"
        )
        output.append({
            "baseline_sentence_id": decision["sentence_id"],
            "file": queue[decision["sentence_id"]]["file"],
            "target_sentence": target,
            "target_sentence_sha256": hashlib.sha256(target.encode("utf-8")).hexdigest(),
            "claim_type": claim_type,
            "evidence_required": "no",
            "classification_reason": (
                "Wave 4二者レビューで本ガイドの規範として確定"
                if verdict == "APPROPRIATE_NORMATIVE"
                else "Wave 4二者レビューで表・索引・見出し等の非命題要素として確定"
            ),
            "source_verdict": verdict,
            "review_status": "FINAL_TWO_REVIEWER_APPROVED",
        })
    expected = sum(
        row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE"
        or (
            row["appropriateness_verdict"] == "REMOVE_OR_REPLACE"
            and bool(row["revised_sentence"])
        )
        for row in candidate
    )
    if len(output) != expected:
        raise SystemExit(f"expected {expected} normative/structural overrides, got {len(output)}")
    keys = [(row["file"], row["target_sentence"]) for row in output]
    if len(keys) != len(set(keys)):
        raise SystemExit("classification override target is not unique within a file")
    with OUTPUT.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=FIELDS, lineterminator="\n")
        writer.writeheader()
        writer.writerows(output)
    print(f"classification overrides generated: {len(output)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
