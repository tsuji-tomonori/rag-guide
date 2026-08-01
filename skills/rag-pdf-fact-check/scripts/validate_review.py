#!/usr/bin/env python3
"""Validate cross-sheet data before exporting a PDF fact-check workbook."""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path
from typing import Any, Iterable

SECTION_RE = re.compile(r"^\d+\.\d+\.\d+$")
FACT_ID_RE = re.compile(r"^FC-\d{4,}$")
EVIDENCE_ID_RE = re.compile(r"^EV-\d{4,}$")
FINDING_ID_RE = re.compile(r"^FN-\d{4,}$")
SHA256_RE = re.compile(r"^[0-9a-f]{64}$")
COMMIT_RE = re.compile(r"^[0-9a-f]{7,40}$")

FACT_STATUSES = {
    "SUPPORTED",
    "SUPPORTED_WITH_CONDITIONS",
    "NEEDS_SUPPLEMENT",
    "NEEDS_CORRECTION",
    "UNVERIFIABLE",
    "NO_EXTERNAL_FACT",
}
SEVERITIES = {"CRITICAL", "HIGH", "MEDIUM", "LOW", "NONE"}
CONFIDENCES = {"HIGH", "MEDIUM", "LOW"}
RELATIONS = {"SUPPORTS", "CONTRADICTS", "QUALIFIES", "SEARCH_ATTEMPT"}
RESOLUTION_STATUSES = {"OPEN", "IN_PROGRESS", "RESOLVED", "ACCEPTED_RISK"}
PDF_STATUSES = {"PASS", "FAIL"}
TEXT_STATUSES = {"PASS", "WARN", "FAIL", "NOT_APPLICABLE"}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("review_json", type=Path)
    parser.add_argument(
        "--allow-open",
        action="store_true",
        help="Allow open findings and failed PDF pages for an interim review",
    )
    return parser.parse_args()


def as_list(value: Any) -> list[Any]:
    return value if isinstance(value, list) else []


def nonempty(value: Any) -> bool:
    return isinstance(value, str) and bool(value.strip())


def unique_ids(
    rows: list[dict[str, Any]],
    key: str,
    pattern: re.Pattern[str],
    label: str,
    errors: list[str],
) -> dict[str, dict[str, Any]]:
    index: dict[str, dict[str, Any]] = {}
    for position, row in enumerate(rows, start=1):
        value = row.get(key)
        if not isinstance(value, str) or not pattern.fullmatch(value):
            errors.append(f"{label}[{position}].{key} has invalid format: {value!r}")
            continue
        if value in index:
            errors.append(f"duplicate {label} ID: {value}")
            continue
        index[value] = row
    return index


def check_refs(
    owner: str,
    refs: Iterable[Any],
    valid: set[str],
    label: str,
    errors: list[str],
) -> None:
    for ref in refs:
        if not isinstance(ref, str) or ref not in valid:
            errors.append(f"{owner} references unknown {label}: {ref!r}")


def main() -> None:
    args = parse_args()
    path = args.review_json
    if not path.is_file():
        print(f"error: review JSON does not exist: {path}", file=sys.stderr)
        raise SystemExit(2)

    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        print(f"error: could not read JSON: {error}", file=sys.stderr)
        raise SystemExit(2)

    if not isinstance(data, dict):
        print("error: top-level JSON must be an object", file=sys.stderr)
        raise SystemExit(2)

    errors: list[str] = []
    target = data.get("target")
    if not isinstance(target, dict):
        errors.append("target must be an object")
        target = {}

    for field in ("repository", "ref", "source_commit_sha", "pdf_sha256"):
        if not nonempty(target.get(field)):
            errors.append(f"target.{field} is required")
    if nonempty(target.get("pdf_sha256")) and not SHA256_RE.fullmatch(
        str(target["pdf_sha256"])
    ):
        errors.append("target.pdf_sha256 must be a lowercase 64-character SHA-256")
    page_count = target.get("page_count")
    if not isinstance(page_count, int) or page_count < 1:
        errors.append("target.page_count must be a positive integer")
        page_count = 0

    fact_checks = as_list(data.get("fact_checks"))
    evidence = as_list(data.get("evidence"))
    findings = as_list(data.get("findings"))
    pdf_rows = as_list(data.get("pdf_inspection"))

    if not fact_checks:
        errors.append("fact_checks must contain at least one row")
    if not pdf_rows:
        errors.append("pdf_inspection must contain one row per page")

    fact_index = unique_ids(
        fact_checks, "fact_check_id", FACT_ID_RE, "fact_checks", errors
    )
    evidence_index = unique_ids(
        evidence, "evidence_id", EVIDENCE_ID_RE, "evidence", errors
    )
    finding_index = unique_ids(
        findings, "finding_id", FINDING_ID_RE, "findings", errors
    )

    for fact_id, row in fact_index.items():
        section = row.get("section")
        if not isinstance(section, str) or not SECTION_RE.fullmatch(section):
            errors.append(f"{fact_id}.section must be X.X.X: {section!r}")
        if not nonempty(row.get("claim")):
            errors.append(f"{fact_id}.claim is required")
        status = row.get("status")
        if status not in FACT_STATUSES:
            errors.append(f"{fact_id}.status is invalid: {status!r}")
        if row.get("severity") not in SEVERITIES:
            errors.append(f"{fact_id}.severity is invalid")
        if row.get("confidence") not in CONFIDENCES:
            errors.append(f"{fact_id}.confidence is invalid")

        evidence_ids = as_list(row.get("evidence_ids"))
        finding_ids = as_list(row.get("finding_ids"))
        check_refs(fact_id, evidence_ids, set(evidence_index), "EvidenceID", errors)
        check_refs(fact_id, finding_ids, set(finding_index), "FindingID", errors)

        if status != "NO_EXTERNAL_FACT" and not evidence_ids:
            errors.append(f"{fact_id} requires at least one evidence reference")
        if status in {"NEEDS_CORRECTION", "NEEDS_SUPPLEMENT"} and not finding_ids:
            errors.append(f"{fact_id} requires a finding reference")

    for evidence_id, row in evidence_index.items():
        for field in (
            "source_type",
            "title",
            "author_publisher",
            "url",
            "accessed_at_utc",
            "scope",
            "evidence_summary",
        ):
            if not nonempty(row.get(field)):
                errors.append(f"{evidence_id}.{field} is required")
        url = row.get("url")
        if nonempty(url) and not str(url).startswith(("https://", "http://")):
            errors.append(f"{evidence_id}.url must be HTTP(S)")
        if row.get("relation") not in RELATIONS:
            errors.append(f"{evidence_id}.relation is invalid")
        volatile = row.get("volatile")
        if not isinstance(volatile, bool):
            errors.append(f"{evidence_id}.volatile must be boolean")
        if volatile is True:
            for field in ("query_request", "raw_snapshot_path"):
                if not nonempty(row.get(field)):
                    errors.append(f"{evidence_id}.{field} is required for volatile data")
            digest = row.get("raw_snapshot_sha256")
            if not isinstance(digest, str) or not SHA256_RE.fullmatch(digest):
                errors.append(
                    f"{evidence_id}.raw_snapshot_sha256 must be a lowercase SHA-256"
                )

    for finding_id, row in finding_index.items():
        fact_ids = as_list(row.get("fact_check_ids"))
        if not fact_ids:
            errors.append(f"{finding_id}.fact_check_ids is required")
        check_refs(finding_id, fact_ids, set(fact_index), "FactCheckID", errors)
        if row.get("severity") not in SEVERITIES - {"NONE"}:
            errors.append(f"{finding_id}.severity is invalid")
        status = row.get("resolution_status")
        if status not in RESOLUTION_STATUSES:
            errors.append(f"{finding_id}.resolution_status is invalid")
        for field in ("section", "category", "problem", "recommended_text", "rationale"):
            if not nonempty(row.get(field)):
                errors.append(f"{finding_id}.{field} is required")
        if status == "RESOLVED":
            commit = row.get("resolution_commit")
            if not isinstance(commit, str) or not COMMIT_RE.fullmatch(commit):
                errors.append(f"{finding_id}.resolution_commit is required when RESOLVED")
            if not nonempty(row.get("verification")):
                errors.append(f"{finding_id}.verification is required when RESOLVED")
        if status == "ACCEPTED_RISK" and not nonempty(row.get("notes")):
            errors.append(f"{finding_id}.notes must explain accepted risk")
        if not args.allow_open and status in {"OPEN", "IN_PROGRESS"}:
            errors.append(f"{finding_id} remains {status}")

    if page_count and len(pdf_rows) != page_count:
        errors.append(
            f"pdf_inspection row count {len(pdf_rows)} does not match page_count {page_count}"
        )

    seen_pages: set[int] = set()
    expected_digest = target.get("pdf_sha256")
    for position, row in enumerate(pdf_rows, start=1):
        page = row.get("page")
        if not isinstance(page, int) or page < 1:
            errors.append(f"pdf_inspection[{position}].page is invalid")
            continue
        if page in seen_pages:
            errors.append(f"duplicate PDF inspection page: {page}")
        seen_pages.add(page)
        if row.get("pdf_sha256") != expected_digest:
            errors.append(f"PDF page {page} has a different pdf_sha256")
        visual = row.get("visual_status")
        if visual not in PDF_STATUSES:
            errors.append(f"PDF page {page} has invalid visual_status: {visual!r}")
        if row.get("text_extraction_status") not in TEXT_STATUSES:
            errors.append(f"PDF page {page} has invalid text_extraction_status")
        for field in ("render_path", "verified_by", "verified_at_utc"):
            if not nonempty(row.get(field)):
                errors.append(f"PDF page {page}.{field} is required")
        if visual == "FAIL" and not nonempty(row.get("findings")):
            errors.append(f"PDF page {page} is FAIL but has no findings")
        if visual == "FAIL" and not args.allow_open:
            errors.append(f"PDF page {page} still fails visual inspection")

    if page_count and seen_pages != set(range(1, page_count + 1)):
        missing = sorted(set(range(1, page_count + 1)) - seen_pages)
        extra = sorted(seen_pages - set(range(1, page_count + 1)))
        errors.append(f"PDF page sequence mismatch; missing={missing}, extra={extra}")

    if errors:
        print(f"Validation failed with {len(errors)} error(s):", file=sys.stderr)
        for error in errors:
            print(f"- {error}", file=sys.stderr)
        raise SystemExit(1)

    print(
        "Validation passed: "
        f"{len(fact_checks)} fact checks, {len(evidence)} evidence rows, "
        f"{len(findings)} findings, {len(pdf_rows)} inspected pages."
    )


if __name__ == "__main__":
    main()
