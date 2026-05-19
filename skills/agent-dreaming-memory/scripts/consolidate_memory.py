#!/usr/bin/env python3
"""Create a first-pass dream report from local text/markdown sources.

This script intentionally uses only the Python standard library. It is a
candidate generator for the agent-dreaming-memory skill, not an autonomous
truth engine.
"""

from __future__ import annotations

import argparse
import datetime as dt
import fnmatch
import hashlib
import os
import re
import sys
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Sequence

DEFAULT_INCLUDES = [
    "AGENTS.md",
    "README*",
    "CHANGELOG*",
    "docs/**/*.md",
    "adr/**/*.md",
    "tasks/**/*.md",
    "reports/**/*.md",
    ".codex-memory/**/*.md",
    "notes/**/*.md",
    "logs/**/*.txt",
    "logs/**/*.md",
]

EXCLUDE_DIRS = {
    ".git",
    ".hg",
    ".svn",
    "node_modules",
    ".venv",
    "venv",
    "dist",
    "build",
    "target",
    ".workspace",
    ".worktrees",
    ".next",
    ".turbo",
    ".cache",
}

TEXT_SUFFIXES = {".md", ".txt", ".rst", ".adoc", ".yaml", ".yml", ".toml"}
IMPORTANT_MARKERS = re.compile(
    r"\b(TODO|FIXME|BUG|ERROR|FAILED|FAILURE|REGRESSION|HACK|DEPRECATED|SECURITY|PRIVACY|COMPLIANCE|MIGRATION|ROLLBACK)\b",
    re.IGNORECASE,
)
NEGATION_MARKERS = re.compile(r"\b(do not|don't|never|must not|disable|disabled|false|禁止|しない|無効)\b", re.IGNORECASE)
AFFIRMATION_MARKERS = re.compile(r"\b(do|must|always|enable|enabled|true|必ず|する|有効)\b", re.IGNORECASE)


@dataclass(frozen=True)
class LineRecord:
    path: Path
    line_no: int
    text: str


def parse_args(argv: Sequence[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Generate a draft Codex memory dream report.")
    parser.add_argument("--root", default=".", help="Repository or project root to scan.")
    parser.add_argument("--out", default=None, help="Output markdown path. Defaults to .codex-memory/dream-reports/<timestamp>.md")
    parser.add_argument(
        "--include",
        action="append",
        default=None,
        help="Glob pattern to include. May be repeated. Defaults cover common docs/memory files.",
    )
    parser.add_argument("--max-file-bytes", type=int, default=1_000_000, help="Skip files larger than this size.")
    parser.add_argument("--min-duplicate-chars", type=int, default=48, help="Minimum normalized line length for duplicate detection.")
    return parser.parse_args(argv)


def iter_candidate_files(root: Path, patterns: Sequence[str], max_file_bytes: int) -> Iterable[Path]:
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames if d not in EXCLUDE_DIRS]
        current = Path(dirpath)
        for filename in filenames:
            path = current / filename
            rel = path.relative_to(root)
            if path.suffix.lower() not in TEXT_SUFFIXES and not filename.startswith("README") and not filename.startswith("CHANGELOG") and filename != "AGENTS.md":
                continue
            if not any(fnmatch.fnmatch(str(rel), pattern) or fnmatch.fnmatch(filename, pattern) for pattern in patterns):
                continue
            try:
                if path.stat().st_size > max_file_bytes:
                    continue
            except OSError:
                continue
            yield path


def read_lines(path: Path) -> list[str]:
    try:
        return path.read_text(encoding="utf-8", errors="replace").splitlines()
    except OSError as exc:
        print(f"warning: could not read {path}: {exc}", file=sys.stderr)
        return []


def normalize_line(text: str) -> str:
    text = re.sub(r"`[^`]+`", "`CODE`", text)
    text = re.sub(r"https?://\S+", "URL", text)
    text = re.sub(r"\s+", " ", text.strip().lower())
    text = re.sub(r"^[#>*\-\d\.\)\s]+", "", text)
    return text.strip()


def topic_key(text: str) -> str:
    normalized = normalize_line(text)
    tokens = re.findall(r"[a-zA-Z0-9_\-]+|[ぁ-んァ-ヶ一-龠]+", normalized)
    stop = {"the", "and", "for", "with", "that", "this", "from", "should", "must", "always", "never", "する", "しない", "こと", "ため"}
    filtered = [token for token in tokens if token not in stop]
    return " ".join(filtered[:8])


def file_hash(path: Path) -> str:
    h = hashlib.sha256()
    try:
        with path.open("rb") as fh:
            for chunk in iter(lambda: fh.read(65536), b""):
                h.update(chunk)
    except OSError:
        return "unreadable"
    return h.hexdigest()[:12]


def build_report(root: Path, files: list[Path], min_duplicate_chars: int) -> str:
    now = dt.datetime.now().strftime("%Y-%m-%d %H:%M")
    duplicates: dict[str, list[LineRecord]] = defaultdict(list)
    marker_hits: list[LineRecord] = []
    modal_by_topic: dict[str, dict[str, list[LineRecord]]] = defaultdict(lambda: {"affirm": [], "negate": []})
    file_summaries: list[str] = []

    for path in files:
        rel = path.relative_to(root)
        lines = read_lines(path)
        file_summaries.append(f"- `{rel}` ({len(lines)} lines, sha256:{file_hash(path)})")
        for idx, line in enumerate(lines, start=1):
            stripped = line.strip()
            if not stripped:
                continue
            normalized = normalize_line(stripped)
            record = LineRecord(rel, idx, stripped[:500])
            if len(normalized) >= min_duplicate_chars:
                duplicates[normalized].append(record)
            if IMPORTANT_MARKERS.search(stripped):
                marker_hits.append(record)
            key = topic_key(stripped)
            if key:
                if NEGATION_MARKERS.search(stripped):
                    modal_by_topic[key]["negate"].append(record)
                elif AFFIRMATION_MARKERS.search(stripped):
                    modal_by_topic[key]["affirm"].append(record)

    duplicate_groups = [(text, records) for text, records in duplicates.items() if len({r.path for r in records}) > 1]
    duplicate_groups.sort(key=lambda item: len(item[1]), reverse=True)

    contradiction_candidates = []
    for key, groups in modal_by_topic.items():
        if groups["affirm"] and groups["negate"]:
            contradiction_candidates.append((key, groups["affirm"][:3], groups["negate"][:3]))
    contradiction_candidates.sort(key=lambda item: item[0])

    lines: list[str] = []
    lines.append(f"# Draft Dream Report — {now}")
    lines.append("")
    lines.append("Generated by `agent-dreaming-memory/scripts/consolidate_memory.py`. This is a candidate report; Codex must review it before updating durable memory.")
    lines.append("")
    lines.append("## Scope")
    lines.append("")
    lines.append(f"- Root scanned: `{root}`")
    lines.append(f"- Files scanned: {len(files)}")
    lines.append("")
    lines.append("## Sources read")
    lines.append("")
    lines.extend(file_summaries or ["- No matching sources found."])
    lines.append("")
    lines.append("## Duplicate candidate clusters")
    lines.append("")
    if duplicate_groups:
        for i, (text, records) in enumerate(duplicate_groups[:20], start=1):
            lines.append(f"### Duplicate candidate {i}")
            lines.append("")
            lines.append(f"- Canonical candidate: {text}")
            lines.append("- Evidence:")
            for record in records[:8]:
                lines.append(f"  - `{record.path}:{record.line_no}` — {record.text}")
            if len(records) > 8:
                lines.append(f"  - ...and {len(records) - 8} more occurrences")
            lines.append("")
    else:
        lines.append("- None found by line-level heuristic.")
        lines.append("")

    lines.append("## Contradiction candidates")
    lines.append("")
    if contradiction_candidates:
        for i, (key, affirm, negate) in enumerate(contradiction_candidates[:20], start=1):
            lines.append(f"### Contradiction candidate {i}: {key}")
            lines.append("")
            lines.append("- Affirming/positive statements:")
            for record in affirm:
                lines.append(f"  - `{record.path}:{record.line_no}` — {record.text}")
            lines.append("- Negating/prohibitive statements:")
            for record in negate:
                lines.append(f"  - `{record.path}:{record.line_no}` — {record.text}")
            lines.append("- Handling: needs human/Codex review; heuristic may be noisy.")
            lines.append("")
    else:
        lines.append("- None found by modal heuristic.")
        lines.append("")

    lines.append("## Repeated mistake and risk markers")
    lines.append("")
    if marker_hits:
        by_path: dict[Path, list[LineRecord]] = defaultdict(list)
        for hit in marker_hits:
            by_path[hit.path].append(hit)
        for path, hits in sorted(by_path.items(), key=lambda item: str(item[0])):
            lines.append(f"### `{path}`")
            for hit in hits[:12]:
                lines.append(f"- Line {hit.line_no}: {hit.text}")
            if len(hits) > 12:
                lines.append(f"- ...and {len(hits) - 12} more markers")
            lines.append("")
    else:
        lines.append("- No TODO/FIXME/error/security-style markers found.")
        lines.append("")

    lines.append("## Recommended next-session context draft")
    lines.append("")
    lines.append("- Review duplicate candidates before merging memory entries.")
    lines.append("- Review contradiction candidates before promoting either side to working memory.")
    lines.append("- Treat rare security/compliance/rollback notes as retain-by-default.")
    lines.append("")
    lines.append("## Open questions")
    lines.append("")
    lines.append("- Which source should be authoritative when contradictions exist?")
    lines.append("- Are any archive candidates safe to remove, or should they remain for audit history?")
    lines.append("")
    return "\n".join(lines)


def main(argv: Sequence[str]) -> int:
    args = parse_args(argv)
    root = Path(args.root).resolve()
    if not root.exists():
        print(f"error: root does not exist: {root}", file=sys.stderr)
        return 2

    patterns = args.include or DEFAULT_INCLUDES
    files = sorted(set(iter_candidate_files(root, patterns, args.max_file_bytes)))
    report = build_report(root, files, args.min_duplicate_chars)

    if args.out:
        out = Path(args.out)
        if not out.is_absolute():
            out = root / out
    else:
        stamp = dt.datetime.now().strftime("%Y-%m-%d-%H%M")
        out = root / ".codex-memory" / "dream-reports" / f"{stamp}.md"

    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(report, encoding="utf-8")
    print(f"wrote {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv[1:]))
