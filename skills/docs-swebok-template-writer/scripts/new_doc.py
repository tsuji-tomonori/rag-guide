#!/usr/bin/env python3
"""Create SWEBOK-lite docs files with repo naming conventions."""

from __future__ import annotations

import argparse
from datetime import date
from pathlib import Path
import re
import sys


DOCS = {
    "REQ_PROJECT": ("docs/1_要求_REQ/01_プロジェクト要求_PROJECT", "Project Requirements"),
    "REQ_PRODUCT": ("docs/1_要求_REQ/11_製品要求_PRODUCT", "Product Requirements"),
    "REQ_FUNCTIONAL": (
        "docs/1_要求_REQ/11_製品要求_PRODUCT/01_機能要求_FUNCTIONAL",
        "Functional Requirements",
    ),
    "REQ_NON_FUNCTIONAL": (
        "docs/1_要求_REQ/11_製品要求_PRODUCT/11_非機能要求_NON_FUNCTIONAL",
        "Non-Functional Requirements",
    ),
    "REQ_TECHNICAL_CONSTRAINT": (
        "docs/1_要求_REQ/11_製品要求_PRODUCT/11_非機能要求_NON_FUNCTIONAL/01_技術制約_TECHNICAL_CONSTRAINT",
        "Technical Constraints",
    ),
    "REQ_SERVICE_QUALITY": (
        "docs/1_要求_REQ/11_製品要求_PRODUCT/11_非機能要求_NON_FUNCTIONAL/11_サービス品質制約_SERVICE_QUALITY",
        "Service Quality Constraints",
    ),
    "REQ_ACCEPTANCE": ("docs/1_要求_REQ/21_受入基準_ACCEPTANCE", "Acceptance Criteria"),
    "REQ_CHANGE": ("docs/1_要求_REQ/31_変更管理_CHANGE", "Requirements Change"),
    "ARC_CONTEXT": ("docs/2_アーキテクチャ_ARC/01_コンテキスト_CONTEXT", "Architecture Context"),
    "ARC_VIEW": ("docs/2_アーキテクチャ_ARC/11_ビュー_VIEW", "Architecture View"),
    "ARC_ADR": ("docs/2_アーキテクチャ_ARC/21_重要決定_ADR", "Architecture Decision Record"),
    "ARC_QA": ("docs/2_アーキテクチャ_ARC/31_品質属性_QA", "Quality Attribute Scenario"),
    "DES_HLD": ("docs/3_設計_DES/01_高レベル設計_HLD", "High-Level Design"),
    "DES_DLD": ("docs/3_設計_DES/11_詳細設計_DLD", "Detailed Design"),
    "DES_UI_UX": ("docs/3_設計_DES/21_UI_UX", "UI/UX Design"),
    "DES_DATA": ("docs/3_設計_DES/31_データ_DATA", "Data Design"),
    "DES_API": ("docs/3_設計_DES/41_API_API", "API Design"),
    "OPS_PLAN": ("docs/4_運用_OPS/01_運用計画_PLAN", "Operations Plan"),
    "OPS_RELEASE": ("docs/4_運用_OPS/11_リリース_RELEASE", "Release Plan"),
    "OPS_MONITORING": ("docs/4_運用_OPS/21_監視_MONITORING", "Monitoring Plan"),
    "OPS_INCIDENT": ("docs/4_運用_OPS/31_インシデント_INCIDENT", "Incident Report"),
    "OPS_MAINTENANCE": ("docs/4_運用_OPS/41_保守_MAINTENANCE", "Maintenance Plan"),
}


def repo_root_from_script() -> Path:
    return Path(__file__).resolve().parents[3]


def next_index(directory: Path, code: str) -> int:
    pattern = re.compile(rf"^{re.escape(code)}_(\d{{3}})\.md$")
    indexes = []
    if directory.exists():
        for path in directory.iterdir():
            match = pattern.match(path.name)
            if match:
                indexes.append(int(match.group(1)))
    return max(indexes, default=0) + 1


def render_template(template_path: Path, *, code: str, title: str, output_path: Path) -> str:
    text = template_path.read_text(encoding="utf-8")
    return (
        text.replace("{{CODE}}", code)
        .replace("{{TITLE}}", title)
        .replace("{{DATE}}", date.today().isoformat())
        .replace("{{OUTPUT_PATH}}", output_path.as_posix())
    )


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("code", nargs="?", choices=sorted(DOCS), help="Document code such as REQ_PROJECT")
    parser.add_argument("--root", type=Path, default=repo_root_from_script(), help="Repository root")
    parser.add_argument("--title", help="Document title")
    parser.add_argument("--index", type=int, help="Explicit 1-based index")
    parser.add_argument("--dry-run", action="store_true", help="Print the target path without writing")
    parser.add_argument("--list", action="store_true", help="List supported document codes")
    args = parser.parse_args()

    if args.list:
        for code, (directory, label) in sorted(DOCS.items()):
            print(f"{code}\t{directory}\t{label}")
        return 0

    if not args.code:
        parser.error("code is required unless --list is used")

    root = args.root.resolve()
    directory_rel, default_title = DOCS[args.code]
    directory = root / directory_rel
    index = args.index if args.index is not None else next_index(directory, args.code)
    if index < 1 or index > 999:
        raise SystemExit("index must be between 1 and 999")

    output_path = directory / f"{args.code}_{index:03d}.md"
    output_path_for_template = output_path.relative_to(root)
    template_path = root / "skills" / "docs-swebok-template-writer" / "assets" / "templates" / f"{args.code}.md"

    if args.dry_run:
        print(output_path_for_template)
        return 0

    if output_path.exists():
        raise SystemExit(f"refusing to overwrite existing file: {output_path}")
    if not template_path.exists():
        raise SystemExit(f"template not found: {template_path}")

    directory.mkdir(parents=True, exist_ok=True)
    title = args.title or default_title
    output_path.write_text(
        render_template(template_path, code=args.code, title=title, output_path=output_path_for_template),
        encoding="utf-8",
    )
    print(output_path_for_template)
    return 0


if __name__ == "__main__":
    sys.exit(main())
