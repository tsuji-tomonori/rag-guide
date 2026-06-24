#!/usr/bin/env python3
"""Download local paper PDFs from pdf/download_urls.tsv."""

from __future__ import annotations

import argparse
import csv
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path


USER_AGENT = "Mozilla/5.0 rag-guide downloader"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--manifest", default="pdf/download_urls.tsv")
    parser.add_argument("--output-dir", default="pdf")
    parser.add_argument("--from-id", default=None, help="inclusive ID lower bound, e.g. P071")
    parser.add_argument("--to-id", default=None, help="inclusive ID upper bound, e.g. P162")
    parser.add_argument("--ids", default=None, help="comma-separated IDs to download")
    parser.add_argument("--force", action="store_true", help="overwrite existing PDFs")
    parser.add_argument("--dry-run", action="store_true", help="show targets without downloading")
    parser.add_argument("--timeout", type=float, default=60.0)
    parser.add_argument("--retries", type=int, default=2)
    return parser.parse_args()


def selected(row_id: str, args: argparse.Namespace, only_ids: set[str] | None) -> bool:
    if only_ids is not None and row_id not in only_ids:
        return False
    if args.from_id and row_id < args.from_id:
        return False
    if args.to_id and row_id > args.to_id:
        return False
    return True


def download(url: str, tmp_path: Path, timeout: float, retries: int) -> None:
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    last_error: Exception | None = None
    for attempt in range(retries + 1):
        try:
            with urllib.request.urlopen(request, timeout=timeout) as response:
                tmp_path.write_bytes(response.read())
            return
        except (urllib.error.URLError, TimeoutError, OSError) as exc:
            last_error = exc
            if attempt < retries:
                time.sleep(2 * (attempt + 1))
    assert last_error is not None
    raise last_error


def main() -> int:
    args = parse_args()
    manifest = Path(args.manifest)
    output_dir = Path(args.output_dir)
    only_ids = set(args.ids.split(",")) if args.ids else None

    if not manifest.exists():
        print(f"manifest not found: {manifest}", file=sys.stderr)
        return 2

    rows = list(csv.DictReader(manifest.open(encoding="utf-8"), delimiter="\t"))
    targets = [row for row in rows if selected(row["ID"], args, only_ids)]

    ok = skipped = failed = 0
    output_dir.mkdir(parents=True, exist_ok=True)

    for row in targets:
        paper_id = row["ID"]
        url = row["DownloadURL"]
        out_path = output_dir / f"{paper_id}.pdf"
        tmp_path = output_dir / f"{paper_id}.pdf.tmp"

        if not url:
            print(f"FAIL {paper_id}: missing DownloadURL")
            failed += 1
            continue
        if args.dry_run:
            print(f"GET  {paper_id}: {url}")
            continue
        if out_path.exists() and not args.force:
            print(f"SKIP {paper_id}: {out_path} exists")
            skipped += 1
            continue

        try:
            download(url, tmp_path, args.timeout, args.retries)
            if tmp_path.read_bytes()[:5] != b"%PDF-":
                raise ValueError("response is not a PDF")
            tmp_path.replace(out_path)
            print(f"OK   {paper_id}: {out_path}")
            ok += 1
        except Exception as exc:  # noqa: BLE001 - CLI should continue through failures.
            tmp_path.unlink(missing_ok=True)
            print(f"FAIL {paper_id}: {exc}")
            failed += 1

    print(f"summary: ok={ok} skipped={skipped} failed={failed} selected={len(targets)}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
