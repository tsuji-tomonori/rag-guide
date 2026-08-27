#!/usr/bin/env python3
"""Record a verified Google Sheets readback after exact CSV comparison."""

from __future__ import annotations

import argparse
import csv
import hashlib
import json
from datetime import date
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "formal" / "review-data"
EXPORT = OUT / "appropriateness_sheet_export.csv"
EXPORT_MANIFEST = OUT / "appropriateness_sheet_export_manifest.json"
READBACK_MANIFEST = OUT / "appropriateness_sheet_readback.json"


def rows(path: Path) -> list[dict[str, str]]:
    with path.open(encoding="utf-8-sig", newline="") as handle:
        return list(csv.DictReader(handle))


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("readback_csv", type=Path)
    parser.add_argument("--remote-revision-id", required=True)
    parser.add_argument("--verified-date", default=date.today().isoformat())
    args = parser.parse_args()
    readback = args.readback_csv.resolve()
    if not readback.is_relative_to(OUT.resolve()):
        raise SystemExit("readback CSV must be stored under formal/review-data")
    if rows(readback) != rows(EXPORT):
        raise SystemExit("Sheet readback differs from deterministic repository export")
    export_manifest = json.loads(EXPORT_MANIFEST.read_text(encoding="utf-8"))
    date.fromisoformat(args.verified_date)
    value = {
        "verification_status": "VERIFIED",
        "spreadsheet_id": export_manifest["spreadsheet_id"],
        "sheet_title": export_manifest["sheet_title"],
        "authoritative_docs_commit": export_manifest["authoritative_docs_commit"],
        "row_count": export_manifest["row_count"],
        "export_sha256": sha256(EXPORT),
        "readback_file": readback.relative_to(ROOT).as_posix(),
        "readback_sha256": sha256(readback),
        "remote_revision_id": args.remote_revision_id,
        "verified_date": args.verified_date,
        "notes": "Read back from Google Sheets and compared row-for-row with the repository export.",
    }
    READBACK_MANIFEST.write_text(
        json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(f"Sheet readback verified: rows={len(rows(readback))}, revision={args.remote_revision_id}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
