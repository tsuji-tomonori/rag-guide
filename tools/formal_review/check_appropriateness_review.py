#!/usr/bin/env python3
"""Validate the Issue #35 review queue without certifying human judgments."""

from __future__ import annotations

import csv
import hashlib
import json
from datetime import date
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "formal" / "review-data"
FINAL_VERDICTS = {
    "APPROPRIATE_SUPPORTED", "APPROPRIATE_NORMATIVE",
    "APPROPRIATE_AFTER_QUALIFICATION", "REWRITE_REQUIRED",
    "REMOVE_OR_REPLACE", "CONTRADICTED", "BLOCKED",
}
SOURCE_ROLES = {
    "AUTHOR_CLAIM", "DEFINITION_OR_SPEC", "EMPIRICAL_RESULT",
    "COMPARATOR_DESCRIPTION", "BACKGROUND_CITATION", "LIMITATION", "HYPOTHESIS",
}
TRUTH_LEVELS = {
    "SOURCE_ASSERTED", "REPRODUCED", "OFFICIAL_SPEC", "RUNTIME_VERIFIED",
    "NOT_APPLICABLE", "UNVERIFIED",
}


def rows(name: str) -> list[dict[str, str]]:
    with (OUT / name).open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def require(condition: bool, message: str) -> None:
    if not condition:
        raise SystemExit(message)


def main() -> int:
    queue = rows("appropriateness_review_queue.csv")
    decisions = rows("appropriateness_review_decisions.csv")
    gold = rows("appropriateness_gold_fixture.csv")
    summary = {row["metric_id"]: row for row in rows("appropriateness_review_summary.csv")}
    manifest = json.loads((OUT / "appropriateness_review_manifest.json").read_text(encoding="utf-8"))

    require(len(queue) == 678, "Issue #35 queue must contain exactly 678 unresolved sentences")
    require(len(decisions) == 678, "every queued sentence must have one decision row")
    queue_ids = [row["sentence_id"] for row in queue]
    decision_ids = [row["sentence_id"] for row in decisions]
    require(queue_ids == decision_ids, "decision ledger must preserve exact queue order and identity")
    require(len(set(queue_ids)) == len(queue_ids), "duplicate sentence_id in review queue")
    require(len(gold) >= 20 and len(gold) <= 30, "gold fixture must contain 20-30 sentences")
    require(len({row["source_state"] for row in gold}) == 3, "gold fixture must cover all unresolved source states")

    queue_by_id = {row["sentence_id"]: row for row in queue}
    today = date.today()
    for row in decisions:
        sentence_id = row["sentence_id"]
        require(row["appropriateness_verdict"] in FINAL_VERDICTS, f"invalid verdict: {sentence_id}")
        require(row["external_truth_level"] in TRUTH_LEVELS, f"invalid external truth level: {sentence_id}")
        require(row["verdict_reason"], f"verdict without reason: {sentence_id}")
        require(row["action"], f"verdict without action: {sentence_id}")
        require(row["docs_commit"] == manifest["authoritative_docs_commit"], f"docs commit drift: {sentence_id}")
        require(row["original_sentence"] == queue_by_id[sentence_id]["sentence"], f"sentence text drift: {sentence_id}")
        if row["appropriateness_verdict"] == "BLOCKED":
            require(row["owner"], f"BLOCKED row without owner: {sentence_id}")
            require(row["due_date"], f"BLOCKED row without due date: {sentence_id}")
            require(row["unblock_condition"], f"BLOCKED row without unblock condition: {sentence_id}")
            date.fromisoformat(row["due_date"])
        else:
            require(row["primary_reviewer"] and row["primary_review_date"], f"final row without primary review: {sentence_id}")
            require(row["independent_reviewer"] and row["independent_review_date"], f"final row without independent review: {sentence_id}")
            require(row["primary_reviewer"] != row["independent_reviewer"], f"self-approved final row: {sentence_id}")
        if row["appropriateness_verdict"] == "APPROPRIATE_SUPPORTED":
            require(row["primary_source_ids"], f"supported row without primary source: {sentence_id}")
            require(row["source_locator"], f"supported row without source locator: {sentence_id}")
            require(row["source_claim_role"] in SOURCE_ROLES, f"supported row without reviewed source role: {sentence_id}")
            require(row["external_truth_level"] != "UNVERIFIED", f"supported row without truth boundary: {sentence_id}")
        if row["appropriateness_verdict"] == "APPROPRIATE_NORMATIVE":
            require(row["normative_criteria"], f"normative row without decision criteria: {sentence_id}")
            require(row["exceptions"], f"normative row without exceptions: {sentence_id}")
        if row["appropriateness_verdict"] == "APPROPRIATE_AFTER_QUALIFICATION":
            require(row["revised_sentence"], f"qualification verdict without revised sentence: {sentence_id}")
        if queue_by_id[sentence_id]["source_projection_adequacy"].startswith("CONTROLLED") and row["appropriateness_verdict"] != "BLOCKED":
            require(row["source_claim_role"] in SOURCE_ROLES, f"controlled projection without polarity review: {sentence_id}")
        if row["appropriateness_verdict"] in {"REWRITE_REQUIRED", "REMOVE_OR_REPLACE", "CONTRADICTED", "APPROPRIATE_AFTER_QUALIFICATION"}:
            require(row["action"], f"actionable verdict without action: {sentence_id}")
        if row["lean_theorem"]:
            require(row["lean_assurance"] == "MODEL_PROVED", f"Lean theorem without MODEL_PROVED label: {sentence_id}")
            require(row["axiom_audit"] == "NO_AXIOMS", f"Lean theorem without clean axiom audit: {sentence_id}")

    blocked = sum(row["appropriateness_verdict"] == "BLOCKED" for row in decisions)
    independent = sum(bool(row["independent_reviewer"]) for row in decisions)
    polarity_scope = [
        row for row in queue
        if row["source_projection_adequacy"] == "CONTROLLED_TERM_PROJECTION_REQUIRES_CLAIM_POLARITY_REVIEW"
    ]
    decisions_by_id = {row["sentence_id"]: row for row in decisions}
    polarity_done = sum(
        decisions_by_id[row["sentence_id"]]["source_claim_role"] in SOURCE_ROLES
        and bool(decisions_by_id[row["sentence_id"]]["independent_reviewer"])
        for row in polarity_scope
    )
    completion = int(summary["APR-006"]["numerator"])
    require(completion in {0, 1}, "completion gate must be binary")
    require(
        completion == int(
            blocked == 0
            and independent == len(decisions)
            and polarity_done == len(polarity_scope)
        ),
        "completion gate contradicts ledger",
    )
    require(manifest["completion_gate"] == bool(completion), "manifest completion gate mismatch")
    require(manifest["unresolved_sentence_count"] == len(queue), "manifest queue count mismatch")
    require(manifest["controlled_projection_sentence_count"] == 632, "controlled projection count mismatch")

    for relative, expected in manifest["sha256"].items():
        actual = hashlib.sha256((ROOT / relative).read_bytes()).hexdigest()
        require(actual == expected, f"sha256 mismatch: {relative}")

    print(
        f"appropriateness review valid: queue={len(queue)}, blocked={blocked}, "
        f"independent={independent}, completion={bool(completion)}, checked={today.isoformat()}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
