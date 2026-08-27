#!/usr/bin/env python3
"""Reject proof holes and unapproved trust-sensitive Lean constructs."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


PATTERNS = {
    "sorry": re.compile(r"\bsorry\b"),
    "admit": re.compile(r"\badmit\b"),
    "axiom": re.compile(r"\baxiom\b"),
    "native_decide": re.compile(r"\bnative_decide\b|\bLean\.ofReduceBool\b"),
    "unsafe": re.compile(r"\bunsafe\b"),
    "extern": re.compile(r"\bextern\b|@\[extern\]"),
    "implemented_by": re.compile(r"@\[implemented_by\b"),
    "eval_bang": re.compile(r"#eval!"),
}
EXCLUDED = {".git", ".lake", "build", "dist", "node_modules"}


def strip_comments_and_strings(text: str) -> str:
    output: list[str] = []
    index = 0
    block_depth = 0
    in_string = False
    while index < len(text):
        char = text[index]
        following = text[index + 1] if index + 1 < len(text) else ""
        if block_depth:
            if char == "/" and following == "-":
                block_depth += 1
                output.extend("  ")
                index += 2
            elif char == "-" and following == "/":
                block_depth -= 1
                output.extend("  ")
                index += 2
            else:
                output.append("\n" if char == "\n" else " ")
                index += 1
            continue
        if in_string:
            if char == "\\" and following:
                output.extend("  ")
                index += 2
            elif char == '"':
                in_string = False
                output.append(" ")
                index += 1
            else:
                output.append("\n" if char == "\n" else " ")
                index += 1
            continue
        if char == "-" and following == "-":
            while index < len(text) and text[index] != "\n":
                output.append(" ")
                index += 1
            continue
        if char == "/" and following == "-":
            block_depth = 1
            output.extend("  ")
            index += 2
            continue
        if char == '"':
            in_string = True
            output.append(" ")
            index += 1
            continue
        output.append(char)
        index += 1
    return "".join(output)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("root", type=Path)
    args = parser.parse_args()
    root = args.root.resolve()
    findings: list[str] = []
    for path in sorted(root.rglob("*.lean")):
        relative = path.relative_to(root)
        if any(part in EXCLUDED for part in relative.parts):
            continue
        cleaned = strip_comments_and_strings(path.read_text(encoding="utf-8"))
        for line_number, line in enumerate(cleaned.splitlines(), 1):
            for kind, pattern in PATTERNS.items():
                if pattern.search(line):
                    findings.append(f"{relative.as_posix()}:{line_number}: {kind}")
    if findings:
        raise SystemExit("Lean trust audit failed:\n" + "\n".join(findings))
    print("Lean trust audit passed: no proof holes or trust-sensitive constructs")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
