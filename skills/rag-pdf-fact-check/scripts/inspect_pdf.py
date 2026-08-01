#!/usr/bin/env python3
"""Render every PDF page and create a visual-inspection manifest.

Rendering does not constitute review. The generated rows intentionally start with
VISUAL_STATUS=REVIEW_REQUIRED and must be changed after page-by-page inspection.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Render all PDF pages and emit a page-level inspection manifest."
    )
    parser.add_argument("pdf", type=Path, help="PDF file to inspect")
    parser.add_argument(
        "--out-dir",
        type=Path,
        required=True,
        help="Directory for rendered PNG files",
    )
    parser.add_argument(
        "--json",
        dest="json_path",
        type=Path,
        required=True,
        help="Output JSON manifest",
    )
    parser.add_argument(
        "--dpi",
        type=int,
        default=180,
        help="Render resolution; default: 180",
    )
    return parser.parse_args()


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def utc_now() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat()


def fail(message: str) -> "NoReturn":
    print(f"error: {message}", file=sys.stderr)
    raise SystemExit(2)


def main() -> None:
    args = parse_args()
    pdf_path = args.pdf.resolve()
    out_dir = args.out_dir.resolve()
    json_path = args.json_path.resolve()

    if not pdf_path.is_file():
        fail(f"PDF does not exist: {pdf_path}")
    if pdf_path.suffix.lower() != ".pdf":
        fail(f"Expected a .pdf file: {pdf_path}")
    if args.dpi < 72 or args.dpi > 600:
        fail("--dpi must be between 72 and 600")

    try:
        import fitz  # type: ignore[import-not-found]
    except ImportError as error:
        fail("PyMuPDF is required. Install it with: python -m pip install pymupdf")
        raise AssertionError("unreachable") from error

    out_dir.mkdir(parents=True, exist_ok=True)
    json_path.parent.mkdir(parents=True, exist_ok=True)

    try:
        document = fitz.open(pdf_path)
    except Exception as error:  # pragma: no cover - library-specific error types vary
        fail(f"Could not open PDF: {error}")

    if document.page_count < 1:
        fail("PDF has no pages")

    scale = args.dpi / 72.0
    matrix = fitz.Matrix(scale, scale)
    page_rows: list[dict[str, Any]] = []

    for page_index in range(document.page_count):
        page_number = page_index + 1
        page = document.load_page(page_index)
        destination = out_dir / f"page-{page_number:04d}.png"
        try:
            pixmap = page.get_pixmap(matrix=matrix, alpha=False, annots=True)
            pixmap.save(destination)
            text = page.get_text("text")
        except Exception as error:  # pragma: no cover
            fail(f"Failed to render page {page_number}: {error}")

        page_rows.append(
            {
                "pdf_version": "UNSPECIFIED",
                "pdf_sha256": "",
                "page": page_number,
                "width_points": round(page.rect.width, 2),
                "height_points": round(page.rect.height, 2),
                "render_path": destination.as_posix(),
                "render_sha256": file_sha256(destination),
                "text_character_count": len(text),
                "text_extraction_status": "PASS" if text.strip() else "WARN",
                "visual_status": "REVIEW_REQUIRED",
                "checks": [
                    "layout",
                    "font",
                    "figure",
                    "table",
                    "caption",
                    "header_footer",
                    "page_number",
                    "link_display",
                ],
                "findings": "",
                "verified_by": "",
                "verified_at_utc": "",
            }
        )

    pdf_digest = file_sha256(pdf_path)
    for row in page_rows:
        row["pdf_sha256"] = pdf_digest

    payload = {
        "schema_version": "1.0",
        "generated_at_utc": utc_now(),
        "pdf": {
            "path": pdf_path.as_posix(),
            "sha256": pdf_digest,
            "page_count": document.page_count,
            "file_size_bytes": pdf_path.stat().st_size,
            "render_dpi": args.dpi,
            "metadata": document.metadata,
        },
        "pdf_inspection": page_rows,
    }
    json_path.write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(
        f"Rendered {document.page_count} pages to {out_dir} and wrote {json_path}. "
        "All pages remain REVIEW_REQUIRED until visually inspected."
    )


if __name__ == "__main__":
    main()
