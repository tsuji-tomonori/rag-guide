#!/usr/bin/env python3
"""Rebind historical signed decisions using exact text, never fuzzy approval.

Run after generate_review_data.py and before generate_evidence_coverage.py.
Changed wording retires the *old exact-text application*, not the new claim.
The new wording is evaluated by the ordinary evidence extraction pipeline.
Historical decisions, reviewer identities, signatures and proof rules stay intact.
"""
from __future__ import annotations

import csv
import hashlib
import io
import json
from collections import defaultdict
from pathlib import Path

from check_appropriateness_review import normalized_plain_text
from generate_evidence_coverage import extract_sentence_rows, run_git_guard

ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "formal/review-data"


def read(name):
    with (DATA / name).open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def digest(text):
    return hashlib.sha256(text.encode()).hexdigest()


def main():
    commit = run_git_guard()
    sentences = extract_sentence_rows()
    by_file = defaultdict(list)
    for row in sentences:
        by_file[row["file"]].append(row)
    decisions = {row["sentence_id"]: row for row in read("appropriateness_review_decisions.csv")}
    applications = read("appropriateness_review_application_map.csv")
    retired = set()
    audit = []
    for application in applications:
        identifier = application["sentence_id"]
        decision = decisions[identifier]
        target = decision["revised_sentence"] or decision["original_sentence"]
        normalized = normalized_plain_text(target)
        current = by_file[application["file"]]
        matches = []
        for start in range(len(current)):
            parts = []
            for end in range(start, min(start + 12, len(current))):
                parts.append(current[end]["sentence"])
                candidate = normalized_plain_text("".join(parts))
                if candidate == normalized:
                    matches.append(current[start:end + 1])
                if len(candidate) > len(normalized):
                    break
        if len(matches) > 1:
            raise SystemExit(f"Ambiguous historical target: {identifier}")
        path = ROOT / application["file"]
        application.update(target_docs_commit=commit,
                           target_file_sha256=hashlib.sha256(path.read_bytes()).hexdigest() if path.is_file() else "",
                           applied_by="codex-exact-text-ledger-rebase", applied_date="2026-09-05")
        if matches:
            matched = matches[0]
            application.update(target_sentence_ids=";".join(row["sentence_id"] for row in matched),
                               target_text_sha256=digest("\n".join(row["sentence"] for row in matched)),
                               application_status="APPLIED_VERIFIED",
                               notes="Exact historical decision text located in the current snapshot; no new semantic approval is asserted.")
        else:
            file_text = normalized_plain_text("".join(row["sentence"] for row in current))
            if normalized in file_text or normalized_plain_text(decision["original_sentence"]) in file_text:
                raise SystemExit(f"Historical text still present but not exactly mapped: {identifier}")
            retired.add(identifier)
            application.update(target_sentence_ids="", target_text_sha256="", application_status="REMOVED_VERIFIED",
                               notes="Historical exact wording is absent. Its approval is not transferred to replacement prose, which remains in current evidence/semantic evaluation.")
            audit.append({"baseline_sentence_id": identifier, "file": application["file"],
                          "historical_target": target, "target_docs_commit": commit,
                          "reason": "Exact historical wording absent; new wording receives no inherited reviewer approval."})
    overrides = [row for row in read("appropriateness_classification_overrides.csv")
                 if row["baseline_sentence_id"] not in retired]
    # Emit an apply_patch patch, keeping the migration reviewable before writing.
    import difflib
    patch = ["*** Begin Patch"]
    values = {"appropriateness_review_application_map.csv": applications,
              "appropriateness_classification_overrides.csv": overrides}
    for name, rows in values.items():
        stream = io.StringIO(newline="")
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]), lineterminator="\n")
        writer.writeheader(); writer.writerows(rows)
        old = (DATA / name).read_text(encoding="utf-8")
        new = "\ufeff" + stream.getvalue()
        if old == new:
            continue
        patch.append("*** Update File: " + str(DATA / name))
        patch.extend("@@" if line.startswith("@@") else line.rstrip("\n")
                     for line in list(difflib.unified_diff(old.splitlines(True), new.splitlines(True), n=3))[2:])
    name = "publication_retired_review_targets.json"
    old = (DATA / name).read_text() if (DATA / name).exists() else ""
    new = json.dumps({"target_docs_commit": commit, "retired_exact_wordings": audit,
                      "boundary": "Historical decisions and reviewer signoffs remain unchanged. This is not a fresh independent review."},
                     ensure_ascii=False, indent=2) + "\n"
    if old != new:
        if (DATA / name).exists():
            patch.append("*** Update File: " + str(DATA / name))
            patch.extend("@@" if line.startswith("@@") else line.rstrip("\n")
                         for line in list(difflib.unified_diff(old.splitlines(True), new.splitlines(True), n=3))[2:])
        else:
            patch.extend(["*** Add File: " + str(DATA / name)] + ["+" + line for line in new.splitlines()])
    print("\n".join(patch + ["*** End Patch"]))


if __name__ == "__main__":
    main()
