#!/usr/bin/env python3
"""Build the print edition's combined Markdown and grayscale figures."""

from __future__ import annotations

import re
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DOCS_DIR = ROOT / "docs"
BUILD_DIR = ROOT / "print" / "build"
IMAGE_DIR = BUILD_DIR / "images"
COMBINED_MD = BUILD_DIR / "rag-guide.md"

HEADING_RE = re.compile(r"^(#{1,6})\s+(.+)$")
NUMBER_PREFIX_RE = re.compile(r"^\d+(?:\.\d+)*\.?\s+")
IMAGE_RE = re.compile(
    r"\(\.\./\.\./assets/images/(?:v2/|v3/)?([^)]+)\)"
)
IMAGE_CAPTION_RE = re.compile(
    r"(!\[[^\n]+\]\([^)]+\))\n\n\*\*(図\d+-\d+[^\n]*)\*\*"
)


def numeric_prefix(value: str) -> tuple[int, ...]:
    """Return the leading dotted number as a natural-sort key."""
    match = re.match(r"^(\d+(?:\.\d+)*)", value)
    if not match:
        return (10_000,)
    return tuple(int(part) for part in match.group(1).split("."))


def ordered_sources() -> list[tuple[Path, bool]]:
    """List chapter introductions and section files in reading order."""
    sources: list[tuple[Path, bool]] = []
    chapter_dirs = sorted(
        (path for path in DOCS_DIR.iterdir() if path.is_dir()),
        key=lambda path: numeric_prefix(path.name),
    )
    for chapter_dir in chapter_dirs:
        introduction = chapter_dir / "序文.md"
        if not introduction.exists():
            raise FileNotFoundError(f"Missing chapter introduction: {introduction}")
        sources.append((introduction, True))
        section_files = sorted(
            (
                path
                for path in chapter_dir.glob("*.md")
                if path.name != "序文.md"
            ),
            key=lambda path: numeric_prefix(path.name),
        )
        sources.extend((path, False) for path in section_files)
    return sources


def normalize_markdown(path: Path, is_introduction: bool) -> str:
    """Shift section files below chapters and normalize generated assets."""
    output: list[str] = []
    in_fence = False
    for line in path.read_text(encoding="utf-8").splitlines():
        if line.startswith("```"):
            in_fence = not in_fence
            output.append(line)
            continue
        if not in_fence:
            heading = HEADING_RE.match(line)
            if heading:
                marks, title = heading.groups()
                if not is_introduction:
                    marks += "#"
                title = NUMBER_PREFIX_RE.sub("", title)
                line = f"{marks} {title}"
            line = IMAGE_RE.sub(r"(print/build/images/\1)", line)
        output.append(line)
    normalized = "\n".join(output).rstrip() + "\n"
    return IMAGE_CAPTION_RE.sub(
        lambda match: f'{match.group(1)[:-1]} "{match.group(2)}")',
        normalized,
    )


def render_grayscale_images() -> None:
    """Create print-safe grayscale copies while preserving source images."""
    IMAGE_DIR.mkdir(parents=True, exist_ok=True)
    image_root = ROOT / "assets" / "images"
    candidates = [image_root / "v3", image_root / "v2", image_root]
    sources: list[Path] = []
    for directory in candidates:
        sources = sorted(directory.glob("*.png"))
        if len(sources) == 28:
            break
    if len(sources) != 28:
        raise RuntimeError("Expected 28 source figures in v3, v2, or assets/images")
    for source in sources:
        destination = IMAGE_DIR / source.name
        subprocess.run(
            [
                "ffmpeg",
                "-y",
                "-loglevel",
                "error",
                "-i",
                str(source),
                "-vf",
                "format=gray",
                str(destination),
            ],
            check=True,
        )


def main() -> None:
    BUILD_DIR.mkdir(parents=True, exist_ok=True)
    render_grayscale_images()
    sections = []
    for path, is_introduction in ordered_sources():
        sections.append(normalize_markdown(path, is_introduction))
        sections.append("\n")
    combined = "\n".join(sections)
    caption_count = len(re.findall(r'\(print/build/images/[^) ]+ "図\d+-\d+', combined))
    if caption_count != 28:
        raise RuntimeError(f"Expected 28 figure captions, found {caption_count}")
    COMBINED_MD.write_text(combined, encoding="utf-8")
    print(f"Wrote {COMBINED_MD.relative_to(ROOT)}")
    print(f"Wrote {len(list(IMAGE_DIR.glob('*.png')))} grayscale figures")
    print(f"Attached {caption_count} numbered figure captions")


if __name__ == "__main__":
    main()
