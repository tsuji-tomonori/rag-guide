#!/usr/bin/env python3
"""Reject unclassified Lean trust boundaries and missing public axiom audits."""

from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2] / "formal" / "lean"
FORBIDDEN = {
    "sorry": re.compile(r"\bsorry\b"),
    "admit": re.compile(r"\badmit\b"),
    "axiom": re.compile(r"\baxiom\b"),
    "unsafe": re.compile(r"\bunsafe\b"),
    "native_decide": re.compile(r"\bnative_decide\b"),
    "extern": re.compile(r"\bextern\b"),
    "implemented_by": re.compile(r"\bimplemented_by\b"),
}


def strip_comments_and_strings(text: str) -> str:
    text = re.sub(r"/-.*?-/", "", text, flags=re.DOTALL)
    text = re.sub(r"--.*$", "", text, flags=re.MULTILINE)
    return re.sub(r'"(?:\\.|[^"\\])*"', '""', text)


def main() -> None:
    sources = sorted(ROOT.rglob("*.lean"))
    failures: list[str] = []
    theorem_count = 0
    audit_count = 0
    for path in sources:
        raw = path.read_text(encoding="utf-8")
        code = strip_comments_and_strings(raw)
        for label, pattern in FORBIDDEN.items():
            if pattern.search(code):
                failures.append(f"{path.relative_to(ROOT)}: forbidden {label}")
        theorems = re.findall(r"\btheorem\s+([A-Za-z0-9_'.]+)", code)
        audits = re.findall(r"#print\s+axioms\s+([A-Za-z0-9_'.]+)", code)
        theorem_count += len(theorems)
        audit_count += len(audits)
        audit_suffixes = {name.rsplit(".", 1)[-1] for name in audits}
        for theorem in theorems:
            if theorem.rsplit(".", 1)[-1] not in audit_suffixes:
                failures.append(f"{path.relative_to(ROOT)}: missing #print axioms for {theorem}")
    if failures:
        raise SystemExit("\n".join(failures))
    print(f"Lean trust scan valid: files={len(sources)} theorems={theorem_count} axiom_audits={audit_count}")


if __name__ == "__main__":
    main()
