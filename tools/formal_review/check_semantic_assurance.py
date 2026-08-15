#!/usr/bin/env python3
"""Validate semantic entailment and external-truth assurance artifacts."""

from __future__ import annotations

import csv
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "formal" / "review-data"


def rows(name: str) -> list[dict[str, str]]:
    with (OUT / name).open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def require(condition: bool, message: str) -> None:
    if not condition:
        raise SystemExit(message)


def split_values(value: str) -> list[str]:
    return [item for item in value.split(";") if item]


def main() -> int:
    manifest = json.loads((OUT / "semantic_assurance_manifest.json").read_text(encoding="utf-8"))
    coverage_manifest = json.loads((OUT / "coverage_manifest.json").read_text(encoding="utf-8"))
    semantic = rows("semantic_assurance.csv")
    sentences = rows("sentence_evidence.csv")
    claims = rows("source_claim_formalizations.csv")
    summary = {row["metric_id"]: row for row in rows("semantic_assurance_summary.csv")}

    require(manifest.get("method_version") == 2, "semantic manifest method version mismatch")
    require(
        manifest.get("authoritative_commit") == coverage_manifest.get("canonical_commit"),
        "semantic and coverage commit pins differ",
    )

    required = [row for row in sentences if row["evidence_required"] == "yes"]
    require([row["sentence_id"] for row in semantic] == [row["sentence_id"] for row in required], "semantic ledger is not the exact required-sentence projection")
    require(len({row["sentence_id"] for row in semantic}) == len(semantic), "duplicate semantic sentence_id")
    require(len({row["source_claim_id"] for row in claims}) == len(claims), "duplicate source_claim_id")

    formalized = [row for row in semantic if row["formalization_complete"] == "yes"]
    entailed = [row for row in semantic if row["entailment_status"] == "PROVED_RELATIVE_TO_CURATED_FORMALIZATION"]
    rejected = [row for row in semantic if row["entailment_status"] == "NOT_ENTAILED_BY_SOURCE_CONTRACT"]
    for row in formalized:
        guide_atoms = set(split_values(row["guide_atoms"]))
        source_atoms = set(split_values(row["source_atoms"]))
        require(guide_atoms, f"formalized row has no guide atoms: {row['sentence_id']}")
        require(source_atoms, f"formalized row has no source atoms: {row['sentence_id']}")
        require(row["source_ids"], f"formalized row has no source: {row['sentence_id']}")
        expected = guide_atoms.issubset(source_atoms)
        require(expected == (row in entailed), f"atom entailment verdict mismatch: {row['sentence_id']}")
        require((not expected) == (row in rejected), f"atom rejection verdict mismatch: {row['sentence_id']}")

    # Do not let a green Lean build silently upgrade rule-based atomization into
    # a proof of the complete Japanese sentence.
    full_sentence_proved = [row for row in semantic if row["full_sentence_assurance"] == "MODEL_PROVED"]
    require(not full_sentence_proved, "full-sentence proof claimed without a kernel-certified Japanese semantic parser")

    independent_truth = [
        row
        for row in semantic
        if row["source_truth_status"] in {"EMPIRICALLY_REPRODUCED", "OFFICIAL_RUNTIME_OBSERVED"}
    ]
    require(int(summary["SEM-COV-001"]["numerator"]) == len(formalized), "SEM-COV-001 mismatch")
    require(int(summary["SEM-COV-002"]["numerator"]) == len(entailed), "SEM-COV-002 mismatch")
    require(int(summary["SEM-COV-003"]["numerator"]) == len(rejected), "SEM-COV-003 mismatch")
    require(int(summary["SEM-COV-004"]["numerator"]) == len(full_sentence_proved), "SEM-COV-004 mismatch")
    require(int(summary["TRUTH-COV-004"]["numerator"]) == len(independent_truth), "TRUTH-COV-004 mismatch")
    for metric_id in ("SEM-COV-001", "SEM-COV-002", "SEM-COV-004", "TRUTH-COV-001", "TRUTH-COV-004"):
        require(int(summary[metric_id]["denominator"]) == len(semantic), f"{metric_id} dynamic denominator mismatch")
    require(int(summary["SEM-COV-003"]["denominator"]) == len(formalized), "SEM-COV-003 dynamic denominator mismatch")
    require(manifest["required_sentences"] == len(semantic), "semantic manifest count mismatch")
    require(manifest["controlled_formalizations"] == len(formalized), "semantic formalization count mismatch")
    require(manifest["relative_entailments_proved"] == len(entailed), "semantic entailment count mismatch")
    require(manifest["automatic_full_sentence_entailments"] == len(full_sentence_proved), "full-sentence proof count mismatch")
    require(manifest["independently_verified_source_truths"] == len(independent_truth), "truth verification count mismatch")

    for relative, expected in manifest["sha256"].items():
        actual = hashlib.sha256((ROOT / relative).read_bytes()).hexdigest()
        require(actual == expected, f"sha256 mismatch: {relative}")

    print(
        "semantic assurance valid: "
        f"required={len(semantic)}, atom_formalized={len(formalized)}, "
        f"atom_entailed={len(entailed)}, full_sentence_proved={len(full_sentence_proved)}, "
        f"independent_truth_verified={len(independent_truth)}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
