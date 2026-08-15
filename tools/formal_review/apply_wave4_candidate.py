#!/usr/bin/env python3
"""Apply an approved Wave 4 candidate to Markdown without losing link markup."""

from __future__ import annotations

import argparse
import csv
import hashlib
import importlib.util
import json
import re
import subprocess
import sys
import unicodedata
from collections import Counter
from datetime import date
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
DATA = ROOT / "formal" / "review-data"
CANDIDATE = DATA / "wave4_final_review_candidate.csv"
MANIFEST = DATA / "wave4_final_review_candidate.json"
QUEUE = DATA / "appropriateness_review_queue.csv"
DECISIONS = DATA / "appropriateness_review_decisions.csv"
GOLD = DATA / "appropriateness_gold_fixture.csv"
GOLD_RECONCILIATION = DATA / "wave4_gold_reconciliation.csv"
TRUSTED_SOURCES = DATA / "trusted_primary_sources.csv"
APPLICATION_MAP = DATA / "appropriateness_review_application_map.csv"
CONFIG = DATA / "appropriateness_review_config.json"
COVERAGE_MANIFEST = DATA / "coverage_manifest.json"
SENTENCE_EVIDENCE = DATA / "sentence_evidence.csv"
SIGNOFFS = (
    DATA / "wave4_primary_signoff.json",
    DATA / "wave4_independent_signoff.json",
)
EXTRACTOR = ROOT / "tools" / "formal_review" / "generate_evidence_coverage.py"
LINK = re.compile(r"\[([^\]]+)\]\(([^)]+)\)")
INLINE_CODE = re.compile(r"`([^`]+)`")
LIST_PREFIX = re.compile(r"^(\s*(?:[-+*]|\d+[.)])\s+)")
BROKEN_URL_SENTENCES = {"SENT-1851", "SENT-4236", "SENT-4242"}
BASELINE_COMMIT = "52bebecfb2a435d0e7ff2efea557c5799674ded6"
ACTIONABLE_VERDICTS = {
    "APPROPRIATE_NORMATIVE",
    "APPROPRIATE_AFTER_QUALIFICATION",
    "REWRITE_REQUIRED",
    "REMOVE_OR_REPLACE",
    "CONTRADICTED",
}
APPLICATION_FIELDS = [
    "sentence_id", "baseline_docs_commit", "target_docs_commit", "file",
    "action_kind", "source_text_sha256", "target_sentence_ids",
    "target_text_sha256", "target_file_sha256", "application_status",
    "applied_by", "applied_date", "notes",
]


def read_csv(path: Path) -> list[dict[str, str]]:
    with path.open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def read_json(path: Path) -> dict[str, object]:
    value = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(value, dict):
        raise SystemExit(f"expected JSON object: {path.relative_to(ROOT)}")
    return value


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def text_sha256(value: str) -> str:
    return hashlib.sha256(value.encode("utf-8")).hexdigest()


def canonical_reviewer(value: object) -> str:
    return unicodedata.normalize("NFKC", str(value)).strip().casefold()


def split_values(value: str) -> list[str]:
    return [item.strip() for item in value.split(";") if item.strip()]


def is_calibrated_gold_transition(candidate: list[dict[str, str]]) -> bool:
    if not GOLD.is_file() or not GOLD_RECONCILIATION.is_file():
        return False
    gold = read_csv(GOLD)
    reconciled = {row["sentence_id"]: row for row in read_csv(GOLD_RECONCILIATION)}
    candidate_by_id = {row["sentence_id"]: row for row in candidate}
    if set(reconciled) != {row["sentence_id"] for row in gold}:
        return False
    for row in gold:
        sentence_id = row["sentence_id"]
        agreed = reconciled[sentence_id]
        if (
            row.get("calibration_status") != "CALIBRATED"
            or row.get("agreed_verdict") != agreed.get("agreed_verdict")
            or candidate_by_id.get(sentence_id, {}).get("appropriateness_verdict")
            != agreed.get("agreed_verdict")
            or canonical_reviewer(row.get("primary_reviewer"))
            != canonical_reviewer(agreed.get("primary_reviewer"))
            or canonical_reviewer(row.get("independent_reviewer"))
            != canonical_reviewer(agreed.get("independent_reviewer"))
            or row.get("primary_review_date") != agreed.get("primary_review_date")
            or row.get("independent_review_date") != agreed.get("independent_review_date")
        ):
            return False
    return True


def is_regenerated_trusted_source_transition(candidate: list[dict[str, str]]) -> bool:
    if not TRUSTED_SOURCES.is_file():
        return False
    rows = read_csv(TRUSTED_SOURCES)
    ids = [row["source_id"] for row in rows]
    if len(ids) != len(set(ids)):
        return False
    eligible = {row["source_id"] for row in rows if row["eligibility"] == "eligible"}
    required = {
        source_id
        for row in candidate
        for source_id in split_values(row.get("primary_source_ids", ""))
    }
    return bool(eligible) and required <= eligible


def verify_candidate(candidate: list[dict[str, str]], require_provenance: bool) -> dict[str, object]:
    manifest = read_json(MANIFEST)
    queue = read_csv(QUEUE)
    if len(candidate) != 678 or [row["sentence_id"] for row in candidate] != [row["sentence_id"] for row in queue]:
        raise SystemExit("candidate must preserve the exact 678-row baseline queue order")
    if manifest.get("baseline_docs_commit") != BASELINE_COMMIT:
        raise SystemExit("candidate manifest baseline commit drift")
    if manifest.get("row_count") != len(candidate):
        raise SystemExit("candidate manifest row count mismatch")
    if manifest.get("candidate_sha256") != sha256(CANDIDATE):
        raise SystemExit("candidate manifest hash mismatch")
    if manifest.get("status") != "PENDING_EXACT_CANDIDATE_SIGNOFF":
        raise SystemExit("candidate manifest has an unexpected lifecycle status")
    verdict_counts = dict(sorted(Counter(row["appropriateness_verdict"] for row in candidate).items()))
    if manifest.get("verdict_counts") != verdict_counts:
        raise SystemExit("candidate manifest verdict counts mismatch")
    manifest_review_date = str(manifest.get("review_date", ""))
    try:
        date.fromisoformat(manifest_review_date)
    except ValueError as error:
        raise SystemExit("candidate manifest review date is invalid") from error
    primary = canonical_reviewer(manifest.get("primary_reviewer"))
    independent = canonical_reviewer(manifest.get("independent_reviewer"))
    if not primary or not independent or primary == independent:
        raise SystemExit("candidate manifest must identify two distinct reviewers")
    for row, baseline in zip(candidate, queue, strict=True):
        if row["original_sentence"] != baseline["sentence"]:
            raise SystemExit(f"candidate original sentence drift: {row['sentence_id']}")
        if row["docs_commit"] != BASELINE_COMMIT:
            raise SystemExit(f"candidate docs commit drift: {row['sentence_id']}")
        if row["appropriateness_verdict"] == "BLOCKED":
            raise SystemExit(f"candidate still contains BLOCKED: {row['sentence_id']}")
        if row["review_status"] != "FINAL_TWO_REVIEWER_APPROVED":
            raise SystemExit(f"candidate row lacks two-reviewer approval: {row['sentence_id']}")
        if canonical_reviewer(row["primary_reviewer"]) != canonical_reviewer(manifest.get("primary_reviewer")):
            raise SystemExit(f"candidate primary reviewer drift: {row['sentence_id']}")
        if canonical_reviewer(row["independent_reviewer"]) != canonical_reviewer(manifest.get("independent_reviewer")):
            raise SystemExit(f"candidate independent reviewer drift: {row['sentence_id']}")
        if row["primary_review_date"] != manifest_review_date or row["independent_review_date"] != manifest_review_date:
            raise SystemExit(f"candidate review date drift: {row['sentence_id']}")
    input_hashes = manifest.get("input_sha256")
    if require_provenance and not isinstance(input_hashes, dict):
        raise SystemExit("candidate manifest lacks input provenance hashes; regenerate the candidate")
    if isinstance(input_hashes, dict):
        for relative, expected in input_hashes.items():
            path = (ROOT / str(relative)).resolve()
            transitioned_decisions = (
                path == DECISIONS.resolve()
                and path.is_file()
                and read_csv(path) == candidate
            )
            transitioned_gold = (
                path == GOLD.resolve()
                and is_calibrated_gold_transition(candidate)
            )
            transitioned_trusted_sources = (
                path == TRUSTED_SOURCES.resolve()
                and is_regenerated_trusted_source_transition(candidate)
            )
            if (
                not path.is_relative_to(ROOT.resolve())
                or not path.is_file()
                or (
                    sha256(path) != expected
                    and not transitioned_decisions
                    and not transitioned_gold
                    and not transitioned_trusted_sources
                )
            ):
                raise SystemExit(f"candidate input provenance drift: {relative}")
    return manifest


def verify_signoffs(manifest: dict[str, object]) -> None:
    expected_reviewers = (
        canonical_reviewer(manifest.get("primary_reviewer")),
        canonical_reviewer(manifest.get("independent_reviewer")),
    )
    if not all(expected_reviewers) or expected_reviewers[0] == expected_reviewers[1]:
        raise SystemExit("candidate manifest does not identify two distinct reviewers")
    candidate_review_date = date.fromisoformat(str(manifest.get("review_date", "")))
    for path, expected_reviewer in zip(SIGNOFFS, expected_reviewers, strict=True):
        if not path.exists():
            raise SystemExit("both exact-candidate signoff files are required before application")
        signoff = read_json(path)
        if signoff.get("candidate_sha256") != manifest.get("candidate_sha256"):
            raise SystemExit(f"signoff candidate hash mismatch: {path.name}")
        if canonical_reviewer(signoff.get("reviewer")) != expected_reviewer:
            raise SystemExit(f"signoff reviewer mismatch: {path.name}")
        if signoff.get("status") != "EXACT_CANDIDATE_APPROVED":
            raise SystemExit(f"signoff status is not approved: {path.name}")
        try:
            signoff_date = date.fromisoformat(str(signoff.get("review_date", "")))
        except ValueError as error:
            raise SystemExit(f"invalid signoff review date: {path.name}") from error
        if signoff_date < candidate_review_date:
            raise SystemExit(f"signoff predates candidate review: {path.name}")


def require_docs_match(commit: str) -> None:
    result = subprocess.run(
        ["git", "diff", "--quiet", commit, "--", "docs"],
        cwd=ROOT,
        check=False,
    )
    if result.returncode != 0:
        raise SystemExit(f"docs do not exactly match commit {commit}")


def load_extractor():
    spec = importlib.util.spec_from_file_location("wave4_evidence_extractor", EXTRACTOR)
    if spec is None or spec.loader is None:
        raise SystemExit("failed to load sentence extractor")
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    return module


def restore_markup(raw: str, revised: str) -> tuple[str, int]:
    result = revised
    restored = 0
    for match in LINK.finditer(raw):
        anchor, target = match.groups()
        if target.startswith(("http://", "https://")) and anchor in result and f"]({target})" not in result:
            result = result.replace(anchor, f"[{anchor}]({target})", 1)
            restored += 1
    for match in INLINE_CODE.finditer(raw):
        token = match.group(1)
        if token in result and f"`{token}`" not in result:
            result = result.replace(token, f"`{token}`", 1)
    prefix = LIST_PREFIX.match(raw)
    if prefix and not LIST_PREFIX.match(result):
        result = prefix.group(1) + result
    return result, restored


def find_baseline_source(
    extracted: list[dict[str, object]], queue_row: dict[str, str]
) -> dict[str, object]:
    matches = [
        row for row in extracted
        if row["file"] == queue_row["file"]
        and str(row["line_start"]) == queue_row["line_start"]
        and row["sentence"] == queue_row["sentence"]
    ]
    if len(matches) != 1:
        raise SystemExit(
            "baseline sentence must match exactly once by file, line, and text: "
            f"{queue_row['sentence_id']}: matches={len(matches)}"
        )
    return matches[0]


def target_sequence(
    decision: dict[str, str],
    file_rows: list[dict[str, str]],
    extractor: object,
) -> list[dict[str, str]]:
    target = decision["revised_sentence"] or decision["original_sentence"]
    expected = [
        extractor.plain_text(part)
        for part in extractor.split_line_sentences(target)
        if extractor.plain_text(part)
    ]
    matches: list[list[dict[str, str]]] = []
    for index in range(0, len(file_rows) - len(expected) + 1):
        candidate_rows = file_rows[index:index + len(expected)]
        if [row["sentence"] for row in candidate_rows] == expected:
            matches.append(candidate_rows)
    if len(matches) != 1:
        raise SystemExit(
            "final text must map to one unique consecutive sentence sequence: "
            f"{decision['sentence_id']}: matches={len(matches)}"
        )
    return matches[0]


def write_application_map(
    candidate: list[dict[str, str]],
    extractor: object,
    target_commit: str,
    applied_by: str,
    applied_date: str,
) -> None:
    if target_commit == BASELINE_COMMIT:
        raise SystemExit("application map requires a new target docs commit")
    require_docs_match(target_commit)
    coverage_manifest = read_json(COVERAGE_MANIFEST)
    if coverage_manifest.get("canonical_commit") != target_commit:
        raise SystemExit("coverage manifest is not pinned to the target docs commit")
    config = read_json(CONFIG)
    if config.get("target_docs_commit") != target_commit:
        raise SystemExit("appropriateness config is not pinned to the target docs commit")
    try:
        date.fromisoformat(applied_date)
    except ValueError as error:
        raise SystemExit("applied date must be ISO YYYY-MM-DD") from error
    if not canonical_reviewer(applied_by):
        raise SystemExit("applied-by must identify the responsible reviewer")
    if read_csv(DECISIONS) != candidate:
        raise SystemExit("authoritative decision ledger does not exactly match the signed candidate")

    evidence = read_csv(SENTENCE_EVIDENCE)
    rows_by_file: dict[str, list[dict[str, str]]] = {}
    for row in evidence:
        rows_by_file.setdefault(row["file"], []).append(row)
    queue_by_id = {row["sentence_id"]: row for row in read_csv(QUEUE)}
    output: list[dict[str, str]] = []
    for decision in candidate:
        if decision["appropriateness_verdict"] not in ACTIONABLE_VERDICTS:
            continue
        sentence_id = decision["sentence_id"]
        queue_row = queue_by_id[sentence_id]
        target_file = ROOT / queue_row["file"]
        removal = (
            decision["appropriateness_verdict"] == "REMOVE_OR_REPLACE"
            and not decision["revised_sentence"]
        )
        target_rows: list[dict[str, str]] = []
        if removal:
            original_plain = extractor.plain_text(decision["original_sentence"])
            if any(original_plain and original_plain in row["sentence"] for row in rows_by_file.get(queue_row["file"], [])):
                raise SystemExit(f"removed source text still exists: {sentence_id}")
        else:
            target_rows = target_sequence(
                decision, rows_by_file.get(queue_row["file"], []), extractor
            )
            if decision["appropriateness_verdict"] in {"APPROPRIATE_NORMATIVE", "REMOVE_OR_REPLACE"}:
                if any(row["evidence_required"] != "no" for row in target_rows):
                    raise SystemExit(f"reclassification override was not applied: {sentence_id}")
        target_text = "\n".join(row["sentence"] for row in target_rows)
        output.append({
            "sentence_id": sentence_id,
            "baseline_docs_commit": BASELINE_COMMIT,
            "target_docs_commit": target_commit,
            "file": queue_row["file"],
            "action_kind": decision["appropriateness_verdict"],
            "source_text_sha256": text_sha256(decision["original_sentence"]),
            "target_sentence_ids": ";".join(row["sentence_id"] for row in target_rows),
            "target_text_sha256": text_sha256(target_text) if target_rows else "",
            "target_file_sha256": sha256(target_file),
            "application_status": "REMOVED_VERIFIED" if removal else "APPLIED_VERIFIED",
            "applied_by": applied_by,
            "applied_date": applied_date,
            "notes": "Derived from the exact signed candidate and target sentence-evidence snapshot.",
        })
    with APPLICATION_MAP.open("w", encoding="utf-8-sig", newline="") as handle:
        writer = csv.DictWriter(handle, fieldnames=APPLICATION_FIELDS, lineterminator="\n")
        writer.writeheader()
        writer.writerows(output)
    print(f"application map generated: rows={len(output)}, target={target_commit}")


def main() -> int:
    parser = argparse.ArgumentParser()
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--apply", action="store_true")
    mode.add_argument("--write-application-map", action="store_true")
    parser.add_argument("--target-docs-commit")
    parser.add_argument("--applied-by")
    parser.add_argument("--applied-date", default=date.today().isoformat())
    args = parser.parse_args()

    extractor = load_extractor()
    candidate = read_csv(CANDIDATE)
    manifest = verify_candidate(candidate, args.apply or args.write_application_map)
    if args.apply or args.write_application_map:
        verify_signoffs(manifest)
    if args.write_application_map:
        if not args.target_docs_commit or not args.applied_by:
            raise SystemExit("--target-docs-commit and --applied-by are required for application-map generation")
        write_application_map(
            candidate, extractor, args.target_docs_commit, args.applied_by, args.applied_date
        )
        return 0

    require_docs_match(BASELINE_COMMIT)
    extracted = extractor.extract_sentence_rows()
    queue_by_id = {row["sentence_id"]: row for row in read_csv(QUEUE)}
    changes = [
        row for row in candidate
        if row["revised_sentence"] and row["revised_sentence"] != row["original_sentence"]
    ]

    file_lines: dict[Path, list[str]] = {}
    stats: Counter[str] = Counter()
    for decision in changes:
        sentence_id = decision["sentence_id"]
        queue_row = queue_by_id[sentence_id]
        source = None if sentence_id in BROKEN_URL_SENTENCES else find_baseline_source(extracted, queue_row)
        source_file = queue_row["file"] if source is None else str(source["file"])
        source_line = queue_row["line_start"] if source is None else str(source["line_start"])
        path = ROOT / source_file
        lines = file_lines.setdefault(path, path.read_text(encoding="utf-8").splitlines(keepends=True))
        line_index = int(source_line) - 1
        raw = lines[line_index] if source is None else str(source["raw_sentence"])
        markup_source = lines[line_index] if sentence_id in BROKEN_URL_SENTENCES else raw
        revised_raw, restored = restore_markup(markup_source, decision["revised_sentence"])
        if sentence_id in {"SENT-4236", "SENT-4242"}:
            body = LIST_PREFIX.sub("", revised_raw, count=1)
            if "は、" not in body:
                raise SystemExit(f"special bullet revision lacks subject delimiter: {sentence_id}")
            subject, rest = body.split("は、", 1)
            revised_raw = f"- **{subject}**は、{rest}"
        if extractor.plain_text(revised_raw) != extractor.plain_text(decision["revised_sentence"]):
            raise SystemExit(f"markup restoration changes candidate text: {sentence_id}")
        if sentence_id in BROKEN_URL_SENTENCES:
            newline = "\n" if lines[line_index].endswith("\n") else ""
            lines[line_index] = revised_raw + newline
        else:
            occurrences = lines[line_index].count(raw)
            if occurrences != 1:
                raise SystemExit(
                    f"expected one raw sentence at recorded line: {sentence_id}: occurrences={occurrences}"
                )
            lines[line_index] = lines[line_index].replace(raw, revised_raw, 1)
        stats["changed_sentences"] += 1
        stats["restored_links"] += restored
        stats[f"verdict:{decision['appropriateness_verdict']}"] += 1

    if args.apply:
        for path, lines in file_lines.items():
            path.write_text("".join(lines), encoding="utf-8")
    print(
        f"mode={'apply' if args.apply else 'check'} files={len(file_lines)} "
        f"changed={stats['changed_sentences']} restored_links={stats['restored_links']}"
    )
    for key in sorted(key for key in stats if key.startswith("verdict:")):
        print(f"{key}={stats[key]}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
