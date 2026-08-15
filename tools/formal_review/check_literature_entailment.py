#!/usr/bin/env python3
"""Validate literature-to-sentence proof ledgers and their manifest."""

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


def main() -> int:
    manifest = json.loads((OUT / "literature_entailment_manifest.json").read_text(encoding="utf-8"))
    sources = rows("literature_source_theorems.csv")
    proofs = rows("sentence_logical_proofs.csv")
    sentences = [row for row in rows("sentence_evidence.csv") if row["evidence_required"] == "yes"]
    summary = {row["metric_id"]: row for row in rows("logical_proof_summary.csv")}

    require(len(sources) == 201, "source theorem catalog must contain all 201 trusted primary sources")
    require(all(row["url"].startswith("https://") for row in sources), "source theorem without HTTPS primary URL")
    require(all(row["inspection_status"] != "TITLE_ONLY" for row in sources), "uninspected source summary")
    require(all(row["projection_adequacy"] for row in sources), "source projection without adequacy status")
    require(
        sum(row["projection_adequacy"].startswith("CURATED_") for row in sources) == 201,
        "claim-polarity projection review count mismatch",
    )
    require([row["sentence_id"] for row in proofs] == [row["sentence_id"] for row in sentences], "proof ledger is not exact required-sentence projection")
    require(len({row["sentence_id"] for row in proofs}) == len(proofs), "duplicate sentence proof row")

    proved = [row for row in proofs if row["logical_proof_assurance"] == "MODEL_PROVED"]
    inconclusive = [row for row in proofs if row["logical_proof_assurance"] != "MODEL_PROVED"]
    require(all(row["candidate_source_ids"] for row in proved), "proved row without source premise")
    require(all(row["source_formula_atoms"] for row in proved), "proved row without source facts")
    require(all(row["guide_atoms"] for row in proved), "proved row without guide atoms")
    require(all(row["lean_theorem"] for row in proved), "proved row without Lean theorem")
    require(all(row["source_projection_adequacy"] for row in proofs), "sentence row without source projection adequacy")
    require(not any(row["end_to_end_assurance"] == "MODEL_PROVED" for row in proofs), "NL adequacy was silently upgraded to end-to-end proof")
    require(all(row["final_adjudication"] for row in inconclusive), "inconclusive proof without final adjudication")
    require(all(row["adjudicator"] and row["adjudicated_at"] for row in inconclusive), "final adjudication without reviewer metadata")

    require(int(summary["LIT-COV-006"]["numerator"]) == len(proved), "conditional proof count mismatch")
    require(int(summary["LIT-COV-008"]["numerator"]) == 0, "end-to-end proof count must remain zero before adequacy review")
    require(int(summary["LIT-COV-009"]["numerator"]) == 201, "claim-polarity-reviewed source count mismatch")
    require(int(summary["LIT-COV-010"]["numerator"]) == len(inconclusive), "final sentence adjudication count mismatch")
    require(manifest["primary_sources"] == len(sources), "manifest source count mismatch")
    require(manifest["required_sentences"] == len(proofs), "manifest sentence count mismatch")
    require(manifest["conditional_logical_proofs"] == len(proved), "manifest proof count mismatch")

    for relative, expected in manifest["sha256"].items():
        actual = hashlib.sha256((ROOT / relative).read_bytes()).hexdigest()
        require(actual == expected, f"sha256 mismatch: {relative}")

    print(
        "literature entailment valid: "
        f"sources={len(sources)}, sentences={len(proofs)}, "
        f"conditional_proofs={len(proved)}, end_to_end=0"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
