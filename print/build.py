#!/usr/bin/env python3
"""Build the print edition's combined Markdown and grayscale figures."""

from __future__ import annotations

import re
import shutil
import subprocess
from pathlib import Path
from publication import Publication
from figures import main as build_figures


ROOT = Path(__file__).resolve().parents[1]
DOCS_DIR = ROOT / "docs"
BUILD_DIR = ROOT / "print" / "build"
IMAGE_DIR = BUILD_DIR / "images"
COMBINED_MD = BUILD_DIR / "rag-guide.md"
INDEX_SOURCE = DOCS_DIR / "索引.md"
INDEX_MD = BUILD_DIR / "index.md"
ASSET_IMAGES_DIR = ROOT / "assets" / "images"

HEADING_RE = re.compile(r"^(#{1,6})\s+(.+)$")
NUMBER_PREFIX_RE = re.compile(r"^\d+(?:\.\d+)*\.\s+")
IMAGE_RE = re.compile(
    r"!\[(?P<alt>[^\]\n]*)\]"
    r"\(\.\./\.\./assets/images/(?P<path>[^)\s]+)\)"
)
IMAGE_CAPTION_RE = re.compile(
    r"(!\[[^\]\n]*\]\(print/build/images/[^)\s]+\))"
    r"\n\n\*\*((?:図\d+-\d+|アルゴリズム図A\d+)[^\n*]*)\*\*"
)
LOCAL_DOC_LINK_RE = re.compile(
    r"\[(?P<label>[^\]\n]+)\]\((?P<target>[^)\n]+?\.md)\)"
)
PRINT_IMAGE_RE = re.compile(
    r"!\[[^\]\n]*\]\(print/build/images/[^)\s]+(?:\s+\"[^\"]*\")?\)"
)
PRINT_CAPTION_RE = re.compile(
    r"!\[[^\]\n]*\]\(print/build/images/[^)\s]+\s+\"(?:図\d+-\d+|アルゴリズム図A\d+)[^\"]*\"\)"
)
STRONG_RE = re.compile(r"\*\*(?P<text>[^*\n]+)\*\*")
MAX_CODE_LINE_LENGTH = 88
PLAIN_IDENTIFIER_RE = re.compile(r"[A-Za-z0-9]+(?:_[A-Za-z0-9]+)+")


def wrap_plain_identifiers_as_code(line: str) -> str:
    """Wrap prose identifiers for Markdown's TeX hybrid mode.

    Existing inline code and Markdown link destinations are already rendered by
    dedicated Markdown handlers, so their underscores must remain untouched.
    """
    output: list[str] = []
    index = 0
    code_delimiter = ""
    in_link_destination = False
    while index < len(line):
        if line[index] == "`":
            end = index
            while end < len(line) and line[end] == "`":
                end += 1
            delimiter = line[index:end]
            if not code_delimiter:
                code_delimiter = delimiter
            elif delimiter == code_delimiter:
                code_delimiter = ""
            output.append(delimiter)
            index = end
            continue
        if not code_delimiter and line.startswith("](", index):
            in_link_destination = True
            output.append("](")
            index += 2
            continue
        if not code_delimiter and in_link_destination and line[index] == ")":
            in_link_destination = False
            output.append(")")
            index += 1
            continue
        if not code_delimiter and not in_link_destination:
            identifier = PLAIN_IDENTIFIER_RE.match(line, index)
            if identifier:
                output.append(f"`{identifier.group(0)}`")
                index = identifier.end()
                continue
        output.append(line[index])
        index += 1
    return "".join(output)


def numeric_prefix(value: str) -> tuple[int, ...]:
    """Return the leading dotted number as a natural-sort key."""
    match = re.match(r"^(\d+(?:\.\d+)*)", value)
    if not match:
        return (10_000,)
    return tuple(int(part) for part in match.group(1).split("."))


def source_label(path: Path) -> str:
    """Return the stable LaTeX label for a chapter or section source."""
    if path.name == "索引.md":
        return "index"
    if path.name == "参考文献.md":
        return "bibliography"
    if path.name == "序文.md":
        match = re.match(r"^(\d+)", path.parent.name)
        if not match:
            raise RuntimeError(f"Chapter number not found: {path}")
        number = match.group(1)
        return f"chap:{number}"
    match = re.match(r"^(\d+\.\d+)", path.name)
    if not match:
        raise RuntimeError(f"Section number not found: {path}")
    number = match.group(1)
    return f"sec:{number}"


def validate_fenced_code(path: Path) -> None:
    """Reject code lines that cannot be copied safely from the print edition."""
    in_fence = False
    fence_marker = ""
    for line_number, line in enumerate(
        path.read_text(encoding="utf-8").splitlines(),
        start=1,
    ):
        stripped = line.lstrip()
        marker = stripped[:3]
        if marker in {"```", "~~~"}:
            if not in_fence:
                in_fence = True
                fence_marker = marker
            elif marker == fence_marker:
                in_fence = False
                fence_marker = ""
            continue
        if in_fence and len(line) > MAX_CODE_LINE_LENGTH:
            raise RuntimeError(
                "Fenced code line exceeds the printable limit "
                f"({MAX_CODE_LINE_LENGTH} characters): "
                f"{path}:{line_number} ({len(line)} characters)"
            )

    if in_fence:
        raise RuntimeError(f"Unclosed fenced code block: {path}")


def render_local_reference(source: Path, label: str, target: str) -> str:
    """Render a local Markdown link as a PDF cross-reference."""
    resolved = (source.parent / target).resolve()
    try:
        resolved.relative_to(DOCS_DIR.resolve())
    except ValueError as error:
        raise RuntimeError(
            f"Local document reference escapes docs: {source}: {target}"
        ) from error
    if not resolved.is_file():
        raise FileNotFoundError(
            f"Missing local document reference: {source}: {target}"
        )
    latex_label = source_label(resolved)
    return (
        rf"\hyperref[{latex_label}]{{{label}}}"
        rf"（\ref{{{latex_label}}}、p.~\pageref{{{latex_label}}}）"
    )


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

                previous = source_by_basename.get(source.stem)
                if previous is not None and previous != source:
                    raise RuntimeError(
                        "Figure basename collision: "
                        f"{previous.relative_to(ROOT)} and "
                        f"{source.relative_to(ROOT)} would both become "
                        f"print/build/images/{source.name}"
                    )
                source_by_basename[source.stem] = source
                references.append(source)

    return references, list(source_by_basename.values())


def normalize_markdown(path: Path, is_introduction: bool, publication: Publication) -> str:
    """Shift section files below chapters and normalize generated assets."""
    output: list[str] = []
    in_fence = False
    table = []
    publication.current_source = path
    for line in path.read_text(encoding="utf-8").splitlines() + [""]:
        if not in_fence and line.startswith("|"):
            table.append(line)
            continue
        if table:
            output.append(publication.table(table))
            table = []
        heading = None
        if line.startswith("```"):
            in_fence = not in_fence
            output.append(line)
            continue
        if not in_fence:
            heading = HEADING_RE.match(line)
            if heading:
                marks, title = heading.groups()
                if title[:1].isdigit() and not NUMBER_PREFIX_RE.match(title):
                    raise RuntimeError(
                        "Numbered headings must end their number with a period: "
                        f"{path}: {title}"
                    )
                if not is_introduction:
                    marks += "#"
                title = NUMBER_PREFIX_RE.sub("", title)
                line = f"{marks} {title}"
            line = wrap_plain_identifiers_as_code(line)
            line = IMAGE_RE.sub(
                lambda match: (
                    f"![{match.group('alt')}]"
                    f"(print/build/images/{Path(match.group('path')).stem}.png)"
                ),
                line,
            )
            line = publication.prose(line)
            line = LOCAL_DOC_LINK_RE.sub(
                lambda match: render_local_reference(
                    path,
                    match.group("label"),
                    match.group("target"),
                ),
                line,
            )
        output.append(line)
        if not in_fence and heading:
            output.append("\n" + publication.indexes(title, heading=True) + "\n")
        if not in_fence and heading and len(heading.group(1)) == 1:
            output.append(rf"\label{{{source_label(path)}}}")
            output.append(publication.section_indexes(path))
    normalized = "\n".join(output).rstrip() + "\n"
    normalized = IMAGE_CAPTION_RE.sub(
        lambda match: f'{match.group(1)[:-1]} "{match.group(2)}")',
        normalized,
    )
    # Preserve literal Markdown and code examples inside fenced blocks.
    pieces = re.split(r"(^```[^\n]*\n.*?^```[^\n]*(?:\n|$))", normalized, flags=re.M | re.S)
    for index in range(0, len(pieces), 2):
        pieces[index] = STRONG_RE.sub(lambda match: rf"\textbf{{{match.group('text')}}}", pieces[index])
    return "".join(pieces)


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
        destination = IMAGE_DIR / (source.stem + ".png")
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
    build_figures()
    markdown_sources = ordered_sources()
    publication = Publication(markdown_sources)
    for path, _ in markdown_sources:
        validate_fenced_code(path)
    image_references, unique_images = referenced_images(markdown_sources)
    render_grayscale_images(unique_images)
    sections = []
    for path, is_introduction in markdown_sources:
        sections.append(normalize_markdown(path, is_introduction, publication))
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
    publication.write(BUILD_DIR)
    print(f"Wrote {COMBINED_MD.relative_to(ROOT)}")

    print(
        f"Wrote {len(unique_images)} grayscale figures "
        f"for {reference_count} references"
    )
    print(f"Attached {caption_count} numbered figure captions")


if __name__ == "__main__":
    main()
