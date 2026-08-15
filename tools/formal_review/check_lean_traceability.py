#!/usr/bin/env python3
"""Validate requirement rows and referenced Lean theorem declarations."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


VERDICTS = {
    "SPEC_UNRESOLVED", "MODEL_FORMALIZED", "MODEL_PROVED",
    "MODEL_PROVED_IMPLEMENTATION_TESTED", "IMPLEMENTATION_PROVED_UNDER_ASSUMPTIONS",
    "IMPLEMENTATION_PROVED", "DISPROVED", "INCONCLUSIVE",
}
BRIDGES = {"none", "direct-lean", "verified-translation", "shared-lean-core", "external-conformance"}
REQUIRED = {
    "id", "source", "claim", "lean_theorems", "proof_status",
    "implementation_symbols", "bridge", "evidence", "assumptions",
    "out_of_scope", "verdict",
}


def declarations(root: Path) -> set[str]:
    pattern = re.compile(r"^\s*(?:theorem|lemma)\s+([A-Za-z0-9_'.]+)\b")
    result: set[str] = set()
    for path in root.rglob("*.lean"):
        if ".lake" in path.parts:
            continue
        for line in path.read_text(encoding="utf-8").splitlines():
            match = pattern.match(line)
            if match:
                result.add(match.group(1))
    return result


def nonempty_strings(value: object) -> bool:
    return isinstance(value, list) and bool(value) and all(
        isinstance(item, str) and item.strip() for item in value
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("manifest", type=Path)
    parser.add_argument("--lean-root", required=True, type=Path)
    args = parser.parse_args()
    data = json.loads(args.manifest.read_text(encoding="utf-8"))
    errors: list[str] = []
    for field in ("authoritative_spec", "spec_version"):
        if not isinstance(data.get(field), str) or not str(data[field]).strip():
            errors.append(f"root.{field}: non-empty string required")
    requirements = data.get("requirements")
    if not isinstance(requirements, list) or not requirements:
        errors.append("root.requirements: non-empty array required")
        requirements = []
    known = declarations(args.lean_root.resolve())
    seen: set[str] = set()
    for index, row in enumerate(requirements):
        location = f"requirements[{index}]"
        if not isinstance(row, dict):
            errors.append(f"{location}: object required")
            continue
        missing = REQUIRED - row.keys()
        if missing:
            errors.append(f"{location}: missing fields {sorted(missing)}")
            continue
        requirement_id = row["id"]
        if not isinstance(requirement_id, str) or not requirement_id.strip():
            errors.append(f"{location}.id: non-empty string required")
        elif requirement_id in seen:
            errors.append(f"{location}.id: duplicate {requirement_id}")
        else:
            seen.add(requirement_id)
        for field in ("source", "claim", "proof_status"):
            if not isinstance(row[field], str) or not row[field].strip():
                errors.append(f"{location}.{field}: non-empty string required")
        if row["verdict"] not in VERDICTS:
            errors.append(f"{location}.verdict: invalid")
        if row["bridge"] not in BRIDGES:
            errors.append(f"{location}.bridge: invalid")
        for field in ("lean_theorems", "implementation_symbols", "evidence", "assumptions", "out_of_scope"):
            if not nonempty_strings(row[field]):
                errors.append(f"{location}.{field}: non-empty string array required")
        for theorem in row["lean_theorems"] if isinstance(row["lean_theorems"], list) else []:
            short = theorem.rsplit(".", 1)[-1] if isinstance(theorem, str) else theorem
            if theorem != "none" and theorem not in known and short not in known:
                errors.append(f"{location}.lean_theorems: declaration not found: {theorem}")
        proved = {
            "MODEL_PROVED", "MODEL_PROVED_IMPLEMENTATION_TESTED",
            "IMPLEMENTATION_PROVED_UNDER_ASSUMPTIONS", "IMPLEMENTATION_PROVED",
        }
        if row["verdict"] in proved and row["lean_theorems"] == ["none"]:
            errors.append(f"{location}: proved verdict requires a Lean theorem")
        if row["verdict"] == "MODEL_PROVED_IMPLEMENTATION_TESTED" and row["bridge"] != "external-conformance":
            errors.append(f"{location}: tested external implementation requires external-conformance bridge")
        if row["verdict"] == "IMPLEMENTATION_PROVED" and row["bridge"] not in {"direct-lean", "verified-translation"}:
            errors.append(f"{location}: implementation proof has incompatible bridge")
    if errors:
        raise SystemExit("Traceability validation failed:\n- " + "\n- ".join(errors))
    print(f"Traceability validation passed: {len(requirements)} requirements, {len(known)} declarations")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
