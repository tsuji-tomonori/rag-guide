#!/usr/bin/env python3
"""Build the print edition's combined Markdown and grayscale figures."""

from __future__ import annotations

import re
import shutil
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DOCS_DIR = ROOT / "docs"
BUILD_DIR = ROOT / "print" / "build"
IMAGE_DIR = BUILD_DIR / "images"
COMBINED_MD = BUILD_DIR / "rag-guide.md"
ASSET_IMAGES_DIR = ROOT / "assets" / "images"

HEADING_RE = re.compile(r"^(#{1,6})\s+(.+)$")
NUMBER_PREFIX_RE = re.compile(r"^\d+(?:\.\d+)*\.?\s+")
IMAGE_RE = re.compile(
    r"!\[(?P<alt>[^\]\n]*)\]"
    r"\(\.\./\.\./assets/images/(?P<path>[^)\s]+)\)"
)
IMAGE_CAPTION_RE = re.compile(
    r"(!\[[^\]\n]*\]\(print/build/images/[^)\s]+\))"
    r"\n\n\*\*(図\d+-\d+[^\n*]*)\*\*"
)
PRINT_IMAGE_RE = re.compile(
    r"!\[[^\]\n]*\]\(print/build/images/[^)\s]+(?:\s+\"[^\"]*\")?\)"
)
PRINT_CAPTION_RE = re.compile(
    r"!\[[^\]\n]*\]\(print/build/images/[^)\s]+\s+\"図\d+-\d+[^\"]*\"\)"
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


def referenced_images(
    markdown_sources: list[tuple[Path, bool]],
) -> tuple[list[Path], list[Path]]:
    """Resolve figure references and return all and unique source images."""
    references: list[Path] = []
    source_by_basename: dict[str, Path] = {}
    image_root = ASSET_IMAGES_DIR.resolve()

    for markdown_path, _ in markdown_sources:
        in_fence = False
        for line in markdown_path.read_text(encoding="utf-8").splitlines():
            if line.startswith("```"):
                in_fence = not in_fence
                continue
            if in_fence:
                continue
            for match in IMAGE_RE.finditer(line):
                relative_path = Path(match.group("path"))
                source = (ASSET_IMAGES_DIR / relative_path).resolve()
                try:
                    source.relative_to(image_root)
                except ValueError as error:
                    raise RuntimeError(
                        f"Figure reference escapes assets/images: "
                        f"{markdown_path}: {relative_path}"
                    ) from error
                if not source.is_file():
                    raise FileNotFoundError(
                        f"Missing figure referenced by {markdown_path}: {source}"
                    )

                previous = source_by_basename.get(source.name)
                if previous is not None and previous != source:
                    raise RuntimeError(
                        "Figure basename collision: "
                        f"{previous.relative_to(ROOT)} and "
                        f"{source.relative_to(ROOT)} would both become "
                        f"print/build/images/{source.name}"
                    )
                source_by_basename[source.name] = source
                references.append(source)

    return references, list(source_by_basename.values())


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
            line = IMAGE_RE.sub(
                lambda match: (
                    f"![{match.group('alt')}]"
                    f"(print/build/images/{Path(match.group('path')).name})"
                ),
                line,
            )
        output.append(line)
    normalized = "\n".join(output).rstrip() + "\n"
    return IMAGE_CAPTION_RE.sub(
        lambda match: f'{match.group(1)[:-1]} "{match.group(2)}")',
        normalized,
    )


def render_grayscale_images(sources: list[Path]) -> None:
    """Create print-safe grayscale copies while preserving source images."""
    if IMAGE_DIR.is_symlink():
        raise RuntimeError(f"Refusing to replace symlink: {IMAGE_DIR}")
    if IMAGE_DIR.exists():
        if not IMAGE_DIR.is_dir():
            raise RuntimeError(f"Expected a directory: {IMAGE_DIR}")
        shutil.rmtree(IMAGE_DIR)
    IMAGE_DIR.mkdir(parents=True, exist_ok=True)
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
    markdown_sources = ordered_sources()
    image_references, unique_images = referenced_images(markdown_sources)
    render_grayscale_images(unique_images)
    sections = []
    for path, is_introduction in markdown_sources:
        sections.append(normalize_markdown(path, is_introduction))
        sections.append("\n")
    combined = "\n".join(sections)
    reference_count = len(image_references)
    normalized_reference_count = len(PRINT_IMAGE_RE.findall(combined))
    caption_count = len(PRINT_CAPTION_RE.findall(combined))
    if normalized_reference_count != reference_count:
        raise RuntimeError(
            "Figure reference normalization mismatch: "
            f"found {reference_count} source references but "
            f"{normalized_reference_count} normalized references"
        )
    if caption_count != reference_count:
        raise RuntimeError(
            "Every figure reference must be followed by a numbered caption: "
            f"found {reference_count} references but {caption_count} captions"
        )
    COMBINED_MD.write_text(combined, encoding="utf-8")
    print(f"Wrote {COMBINED_MD.relative_to(ROOT)}")
    print(
        f"Wrote {len(unique_images)} grayscale figures "
        f"for {reference_count} references"
    )
    print(f"Attached {caption_count} numbered figure captions")


if __name__ == "__main__":
    main()
