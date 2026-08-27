#!/usr/bin/env python3
"""Validate the generated sentence evidence ledger and coverage report."""

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
    manifest = json.loads((OUT / "coverage_manifest.json").read_text(encoding="utf-8"))
    review_manifest = json.loads((OUT / "manifest.json").read_text(encoding="utf-8"))
    sentences = rows("sentence_evidence.csv")
    uncovered = rows("uncovered_sentences.csv")
    techniques = rows("concrete_technologies.csv")
    sources = rows("trusted_primary_sources.csv")
    coverage = rows("coverage_summary.csv")
    registry = rows("primary_sources.csv")

    require(manifest.get("method_version") == 2, "coverage manifest method version mismatch")
    require(
        manifest.get("canonical_commit") == review_manifest.get("canonical_commit"),
        "coverage and source-registry commit pins differ",
    )
    require(
        [(row["source_id"], row["url"]) for row in sources]
        == [(row["source_id"], row["url"]) for row in registry],
        "trusted source projection changed source registry identity/order",
    )
    require(
        all(row.get("registry_status") in {"active", "inactive"} for row in registry),
        "source registry row lacks active/inactive status",
    )
    require(
        all(not row["used_by_units"] for row in registry if row["registry_status"] == "inactive"),
        "inactive source registry row still has active unit references",
    )

    source_by_id = {row["source_id"]: row for row in sources}
    require(len(source_by_id) == len(sources), "duplicate source_id")
    require(len({row["sentence_id"] for row in sentences}) == len(sentences), "duplicate sentence_id")
    require(len({row["technology_id"] for row in techniques}) == len(techniques), "duplicate technology_id")

    required = [row for row in sentences if row["evidence_required"] == "yes"]
    computed_uncovered = [row for row in required if row["coverage_status"] == "uncovered"]
    covered = [row for row in required if row["coverage_status"].startswith("covered_")]
    direct = [row for row in required if row["coverage_status"] == "covered_direct"]
    require(
        [row["sentence_id"] for row in computed_uncovered] == [row["sentence_id"] for row in uncovered],
        "uncovered_sentences.csv is not the exact uncovered projection",
    )
    for row in covered:
        ids = [value for value in row["source_ids"].split(";") if value]
        require(ids, f"covered sentence without a source: {row['sentence_id']}")
        require(all(source_by_id[source_id]["eligibility"] == "eligible" for source_id in ids), f"covered sentence has an ineligible source: {row['sentence_id']}")
        require(int(row["source_count"]) == len(ids), f"source_count mismatch: {row['sentence_id']}")

    forbidden_broad_names = {"Sparse retrieval", "Dense retrieval", "Hybrid retrieval", "Reranking", "ANN"}
    require(not forbidden_broad_names.intersection(row["technology"] for row in techniques), "broad category leaked into concrete technology ledger")
    for row in techniques:
        ids = [value for value in row["source_ids"].split(";") if value]
        require(ids, f"concrete technique without primary source: {row['technology']}")
        require(all(source_by_id[source_id]["eligibility"] == "eligible" for source_id in ids), f"concrete technique has ineligible source: {row['technology']}")
        require(row["lean_ledger_status"] == "modeled", f"concrete technique missing from Lean ledger: {row['technology']}")

    metrics = {row["metric_id"]: row for row in coverage}
    require(int(metrics["COV-001"]["numerator"]) == len(covered), "COV-001 numerator mismatch")
    require(int(metrics["COV-001"]["denominator"]) == len(required), "COV-001 denominator mismatch")
    require(int(metrics["COV-002"]["numerator"]) == len(direct), "COV-002 numerator mismatch")
    require(manifest["sentences"] == len(sentences), "manifest sentence count mismatch")
    require(manifest["uncovered_sentences"] == len(uncovered), "manifest uncovered count mismatch")
    require(manifest["concrete_technologies"] == len(techniques), "manifest technique count mismatch")

    for relative, expected in manifest["sha256"].items():
        actual = hashlib.sha256((ROOT / relative).read_bytes()).hexdigest()
        require(actual == expected, f"sha256 mismatch: {relative}")

    print(
        "coverage ledger valid: "
        f"sentences={len(sentences)}, required={len(required)}, covered={len(covered)}, "
        f"uncovered={len(uncovered)}, concrete_technologies={len(techniques)}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
