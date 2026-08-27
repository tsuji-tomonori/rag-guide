#!/usr/bin/env python3
"""
Update, create, validate, and diff repository-local skill and agent files.

Supported conventions:
- skills/<name>/SKILL.md
- skills/agents/*
- agents/*
- .agents/*
- typo / legacy paths: skils/*, skisl/agents/*

Default mode is dry-run. Add --write to modify files.
"""
from __future__ import annotations

import argparse
import datetime as _dt
import difflib
import json
import os
import re
import shutil
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Dict, Iterable, List, Mapping, Optional, Sequence, Tuple

try:
    import yaml  # type: ignore
except Exception:  # pragma: no cover - yaml is optional
    yaml = None

SKILL_ROOT_CANDIDATES = ("skills", ".skills", "skils", "skisl")
AGENT_ROOT_CANDIDATES = ("skills/agents", "skisl/agents", "agents", ".agents", "skils/agents")
MARKDOWN_SUFFIXES = {".md", ".markdown"}
CONFIG_SUFFIXES = {".yaml", ".yml", ".json"}


@dataclass
class Change:
    path: Path
    before: Optional[str]
    after: str
    reason: str

    @property
    def exists_before(self) -> bool:
        return self.before is not None

    @property
    def changed(self) -> bool:
        return self.before != self.after


@dataclass
class ValidationResult:
    errors: List[str] = field(default_factory=list)
    warnings: List[str] = field(default_factory=list)

    def extend(self, other: "ValidationResult") -> None:
        self.errors.extend(other.errors)
        self.warnings.extend(other.warnings)

    @property
    def ok(self) -> bool:
        return not self.errors


def eprint(*args: object) -> None:
    print(*args, file=sys.stderr)


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8", newline="\n")


def rel(path: Path, root: Path) -> str:
    try:
        return path.relative_to(root).as_posix()
    except ValueError:
        return path.as_posix()


def sanitize_name(name: str) -> str:
    cleaned = name.strip().lower()
    cleaned = re.sub(r"[^a-z0-9._-]+", "-", cleaned)
    cleaned = re.sub(r"-+", "-", cleaned).strip("-._")
    if not cleaned:
        raise ValueError(f"Invalid empty name derived from {name!r}")
    return cleaned


def find_repo_root(start: Path) -> Path:
    start = start.resolve()
    if start.is_file():
        start = start.parent
    markers = (".git", "pyproject.toml", "package.json", "go.mod", "Cargo.toml")
    for candidate in (start, *start.parents):
        if any((candidate / marker).exists() for marker in markers):
            return candidate
    return start


def load_structured(path: Path) -> Any:
    text = read_text(path)
    if path.suffix.lower() == ".json":
        return json.loads(text)
    if path.suffix.lower() in {".yaml", ".yml"}:
        if yaml is None:
            raise RuntimeError("PyYAML is required for YAML specs. Use JSON or install PyYAML.")
        return yaml.safe_load(text) or {}
    raise ValueError(f"Unsupported spec type: {path}")


def dump_yaml(data: Mapping[str, Any]) -> str:
    if yaml is None:
        # Small fallback for flat mappings.
        lines: List[str] = []
        for key, value in data.items():
            if isinstance(value, (dict, list)):
                lines.append(f"{key}: {json.dumps(value, ensure_ascii=False)}")
            else:
                lines.append(f"{key}: {value}")
        return "\n".join(lines) + "\n"
    return yaml.safe_dump(dict(data), sort_keys=False, allow_unicode=True).strip() + "\n"


def parse_frontmatter(text: str) -> Tuple[Dict[str, Any], str, bool]:
    """Return (frontmatter, body, had_frontmatter)."""
    if not text.startswith("---\n"):
        return {}, text, False
    end = text.find("\n---\n", 4)
    if end == -1:
        return {}, text, False
    raw = text[4:end]
    body = text[end + len("\n---\n") :]
    if not raw.strip():
        return {}, body, True
    if yaml is None:
        # Parse a minimal key: value front matter.
        fm: Dict[str, Any] = {}
        for line in raw.splitlines():
            if ":" in line:
                key, value = line.split(":", 1)
                fm[key.strip()] = value.strip()
        return fm, body, True
    parsed = yaml.safe_load(raw) or {}
    if not isinstance(parsed, dict):
        raise ValueError("Front matter is not a mapping")
    return dict(parsed), body, True


def render_markdown_with_frontmatter(frontmatter: Mapping[str, Any], body: str) -> str:
    body = body.lstrip("\n")
    return "---\n" + dump_yaml(frontmatter) + "---\n\n" + body.rstrip() + "\n"


def unified_diff(path: Path, before: Optional[str], after: str, root: Path) -> str:
    before_label = f"a/{rel(path, root)}" if before is not None else "/dev/null"
    after_label = f"b/{rel(path, root)}"
    before_lines = [] if before is None else before.splitlines()
    after_lines = after.splitlines()
    diff_lines = difflib.unified_diff(
        before_lines,
        after_lines,
        fromfile=before_label,
        tofile=after_label,
        lineterm="",
    )
    return "\n".join(diff_lines) + "\n"


def choose_existing_dir(root: Path, candidates: Sequence[str], fallback: str) -> Path:
    for candidate in candidates:
        path = root / candidate
        if path.exists() and path.is_dir():
            return path
    return root / fallback


def discover_skill_files(root: Path) -> List[Path]:
    files: List[Path] = []
    for dirname in SKILL_ROOT_CANDIDATES:
        base = root / dirname
        if not base.exists() or not base.is_dir():
            continue
        files.extend(sorted(base.glob("*/SKILL.md")))
        # Some repos put the skill directly in a root-like folder.
        direct = base / "SKILL.md"
        if direct.exists():
            files.append(direct)
    return unique_paths(files)


def discover_agent_files(root: Path) -> List[Path]:
    files: List[Path] = []
    for dirname in AGENT_ROOT_CANDIDATES:
        base = root / dirname
        if not base.exists() or not base.is_dir():
            continue
        for suffix in (*MARKDOWN_SUFFIXES, *CONFIG_SUFFIXES):
            files.extend(sorted(base.glob(f"**/*{suffix}")))
    return unique_paths([p for p in files if p.name != "SKILL.md"])


def unique_paths(paths: Iterable[Path]) -> List[Path]:
    seen = set()
    out: List[Path] = []
    for path in paths:
        key = path.resolve()
        if key not in seen:
            seen.add(key)
            out.append(path)
    return out


def inspect_markdown(path: Path) -> Dict[str, Any]:
    text = read_text(path)
    try:
        fm, body, has_fm = parse_frontmatter(text)
    except Exception as exc:
        return {
            "path": path.as_posix(),
            "frontmatter_error": str(exc),
            "headings": [],
            "bytes": len(text.encode("utf-8")),
        }
    headings = re.findall(r"(?m)^(#{1,6})\s+(.+?)\s*$", body)
    return {
        "path": path.as_posix(),
        "has_frontmatter": has_fm,
        "frontmatter": fm,
        "headings": [{"level": len(level), "title": title} for level, title in headings],
        "bytes": len(text.encode("utf-8")),
    }


def inventory(root: Path) -> Dict[str, Any]:
    skill_files = discover_skill_files(root)
    agent_files = discover_agent_files(root)
    skill_roots = [d for d in SKILL_ROOT_CANDIDATES if (root / d).is_dir()]
    agent_roots = [d for d in AGENT_ROOT_CANDIDATES if (root / d).is_dir()]
    return {
        "root": root.as_posix(),
        "skill_roots": skill_roots,
        "agent_roots": agent_roots,
        "skills": [inspect_markdown(path) for path in skill_files],
        "agents": [inspect_markdown(path) if path.suffix.lower() in MARKDOWN_SUFFIXES else {"path": path.as_posix(), "bytes": path.stat().st_size} for path in agent_files],
    }


def validate(root: Path) -> ValidationResult:
    result = ValidationResult()
    skill_files = discover_skill_files(root)
    names: Dict[str, List[Path]] = {}

    for path in skill_files:
        text = read_text(path)
        try:
            fm, _body, has_fm = parse_frontmatter(text)
        except Exception as exc:
            result.errors.append(f"{rel(path, root)}: invalid front matter: {exc}")
            continue
        if not has_fm:
            result.errors.append(f"{rel(path, root)}: missing YAML front matter")
            continue
        name = fm.get("name")
        description = fm.get("description")
        if not name:
            result.errors.append(f"{rel(path, root)}: missing front matter key 'name'")
        else:
            names.setdefault(str(name), []).append(path)
        if not description:
            result.errors.append(f"{rel(path, root)}: missing front matter key 'description'")

    for name, paths in sorted(names.items()):
        if len(paths) > 1:
            joined = ", ".join(rel(p, root) for p in paths)
            result.errors.append(f"duplicate skill name {name!r}: {joined}")

    for path in discover_agent_files(root):
        if path.suffix.lower() not in MARKDOWN_SUFFIXES:
            continue
        text = read_text(path)
        if text.startswith("---\n"):
            try:
                parse_frontmatter(text)
            except Exception as exc:
                result.warnings.append(f"{rel(path, root)}: agent front matter could not be parsed: {exc}")
        if not text.strip():
            result.warnings.append(f"{rel(path, root)}: empty agent file")

    return result


def parse_key_value(raw: str, delimiter: str = "=") -> Tuple[str, str]:
    if delimiter not in raw:
        raise ValueError(f"Expected KEY{delimiter}VALUE, got {raw!r}")
    key, value = raw.split(delimiter, 1)
    key = key.strip()
    if not key:
        raise ValueError(f"Empty key in {raw!r}")
    return key, value


def append_to_section(markdown: str, heading: str, text: str) -> str:
    heading = heading.strip()
    if not heading:
        raise ValueError("Section heading cannot be empty")
    insertion = text.strip() + "\n"
    if not insertion.strip():
        return markdown

    lines = markdown.rstrip().splitlines()
    pattern = re.compile(rf"^(?P<hashes>#{{1,6}})\s+{re.escape(heading)}\s*$", re.IGNORECASE)
    start_idx: Optional[int] = None
    level: Optional[int] = None
    for idx, line in enumerate(lines):
        match = pattern.match(line.strip())
        if match:
            start_idx = idx
            level = len(match.group("hashes"))
            break

    if start_idx is None:
        # Use H2 for new sections unless the document has no H1/H2 at all.
        prefix = "##"
        return markdown.rstrip() + f"\n\n{prefix} {heading}\n\n{insertion}"

    assert level is not None
    end_idx = len(lines)
    next_heading = re.compile(r"^(#{1,6})\s+")
    for idx in range(start_idx + 1, len(lines)):
        match = next_heading.match(lines[idx])
        if match and len(match.group(1)) <= level:
            end_idx = idx
            break

    before = lines[:end_idx]
    after = lines[end_idx:]
    new_lines = before + ["", insertion.rstrip(), ""] + after
    return "\n".join(new_lines).rstrip() + "\n"


def apply_file_ops(original: str, ops: Mapping[str, Any], path: Path) -> str:
    text = original

    frontmatter = ops.get("frontmatter") or ops.get("set_frontmatter")
    if frontmatter:
        if path.suffix.lower() not in MARKDOWN_SUFFIXES:
            raise ValueError(f"frontmatter operation requires markdown file: {path}")
        if not isinstance(frontmatter, Mapping):
            raise ValueError("frontmatter must be a mapping")
        fm, body, _has_fm = parse_frontmatter(text)
        fm.update(dict(frontmatter))
        text = render_markdown_with_frontmatter(fm, body)

    append_sections = ops.get("append_sections") or []
    for item in append_sections:
        if isinstance(item, str):
            heading, section_text = parse_key_value(item)
        elif isinstance(item, Mapping):
            heading = str(item.get("heading") or item.get("title") or "").strip()
            section_text = str(item.get("text") or "")
        else:
            raise ValueError(f"Invalid append_sections item: {item!r}")
        text = append_to_section(text, heading, section_text)

    replacements = ops.get("replacements") or []
    for item in replacements:
        if isinstance(item, str):
            pattern, replacement = parse_key_value(item, delimiter="::")
            count = 0
        elif isinstance(item, Mapping):
            pattern = str(item.get("pattern") or "")
            replacement = str(item.get("replacement") or "")
            count = int(item.get("count") or 0)
        else:
            raise ValueError(f"Invalid replacements item: {item!r}")
        if not pattern:
            raise ValueError("Replacement pattern cannot be empty")
        text = re.sub(pattern, replacement, text, count=count, flags=re.MULTILINE)

    return text.rstrip() + "\n"


def build_skill_text(name: str, description: str, body: Optional[str] = None) -> str:
    skill_name = sanitize_name(name)
    fm = {"name": skill_name, "description": description.strip() or f"Skill for {skill_name}."}
    if body is None:
        title = skill_name.replace("-", " ").replace("_", " ").title()
        body = f"# {title}\n\nUse this skill when the user asks for work related to `{skill_name}`.\n\n## Workflow\n\n1. Inspect the existing repository conventions.\n2. Make the smallest safe change.\n3. Validate the result and report changed files.\n"
    return render_markdown_with_frontmatter(fm, body)


def build_agent_text(name: str, description: str, body: Optional[str] = None) -> str:
    agent_name = sanitize_name(name)
    fm = {"name": agent_name, "description": description.strip() or f"Agent for {agent_name}."}
    if body is None:
        title = agent_name.replace("-", " ").replace("_", " ").title()
        body = f"# {title} Agent\n\nYou are responsible for `{agent_name}` tasks. Follow repository conventions, make narrow edits, and provide concise change reports.\n"
    return render_markdown_with_frontmatter(fm, body)


def normalize_create_items(raw: Any) -> List[Dict[str, str]]:
    if raw is None:
        return []
    if not isinstance(raw, list):
        raise ValueError("create_skills/create_agents must be a list")
    out: List[Dict[str, str]] = []
    for item in raw:
        if isinstance(item, str):
            out.append({"name": item})
        elif isinstance(item, Mapping):
            out.append({str(k): str(v) for k, v in item.items() if v is not None})
        else:
            raise ValueError(f"Invalid create item: {item!r}")
    return out


def changes_from_spec(root: Path, spec: Mapping[str, Any], skills_dir: Optional[str], agents_dir: Optional[str]) -> List[Change]:
    changes: List[Change] = []

    skill_base = root / skills_dir if skills_dir else choose_existing_dir(root, SKILL_ROOT_CANDIDATES, "skills")
    agent_base = root / agents_dir if agents_dir else choose_existing_dir(root, AGENT_ROOT_CANDIDATES, "skills/agents")

    for item in normalize_create_items(spec.get("create_skills")):
        name = sanitize_name(item["name"])
        path = skill_base / name / "SKILL.md"
        before = read_text(path) if path.exists() else None
        if before is not None and not spec.get("overwrite", False):
            raise FileExistsError(f"Refusing to overwrite existing skill without overwrite=true: {path}")
        after = build_skill_text(name, item.get("description", ""), item.get("body"))
        changes.append(Change(path=path, before=before, after=after, reason=f"create skill {name}"))

    for item in normalize_create_items(spec.get("create_agents")):
        name = sanitize_name(item["name"])
        path = agent_base / f"{name}.md"
        before = read_text(path) if path.exists() else None
        if before is not None and not spec.get("overwrite", False):
            raise FileExistsError(f"Refusing to overwrite existing agent without overwrite=true: {path}")
        after = build_agent_text(name, item.get("description", ""), item.get("body"))
        changes.append(Change(path=path, before=before, after=after, reason=f"create agent {name}"))

    for file_ops in spec.get("files") or []:
        if not isinstance(file_ops, Mapping):
            raise ValueError(f"files entries must be mappings, got {file_ops!r}")
        raw_path = file_ops.get("path")
        if not raw_path:
            raise ValueError(f"files entry missing path: {file_ops!r}")
        path = root / str(raw_path)
        if not path.exists():
            if file_ops.get("create", False):
                before = None
                original = ""
            else:
                raise FileNotFoundError(f"Target file does not exist: {path}")
        else:
            before = read_text(path)
            original = before
        after = apply_file_ops(original, file_ops, path)
        changes.append(Change(path=path, before=before, after=after, reason=f"patch {raw_path}"))

    return changes


def changes_from_cli(root: Path, args: argparse.Namespace) -> List[Change]:
    spec: Dict[str, Any] = {}
    if args.create_skill:
        description = ""
        fm: Dict[str, str] = {}
        for raw in args.set_frontmatter or []:
            key, value = parse_key_value(raw)
            fm[key] = value
        description = fm.get("description", "")
        spec["create_skills"] = [{"name": name, "description": description} for name in args.create_skill]
    if args.create_agent:
        description = ""
        fm = {}
        for raw in args.set_frontmatter or []:
            key, value = parse_key_value(raw)
            fm[key] = value
        description = fm.get("description", "")
        spec["create_agents"] = [{"name": name, "description": description} for name in args.create_agent]

    changes = changes_from_spec(root, spec, args.skills_dir, args.agents_dir) if spec else []

    if args.file:
        file_ops: Dict[str, Any] = {"frontmatter": {}, "append_sections": [], "replacements": []}
        for raw in args.set_frontmatter or []:
            key, value = parse_key_value(raw)
            file_ops["frontmatter"][key] = value
        for raw in args.append_section or []:
            heading, text = parse_key_value(raw)
            file_ops["append_sections"].append({"heading": heading, "text": text})
        for raw in args.replace or []:
            pattern, replacement = parse_key_value(raw, delimiter="::")
            file_ops["replacements"].append({"pattern": pattern, "replacement": replacement})
        # Remove empty operation groups.
        file_ops = {k: v for k, v in file_ops.items() if v}
        for raw_path in args.file:
            path = root / raw_path
            before = read_text(path) if path.exists() else None
            if before is None:
                raise FileNotFoundError(f"Target file does not exist: {path}")
            after = apply_file_ops(before, file_ops, path)
            changes.append(Change(path=path, before=before, after=after, reason=f"patch {raw_path}"))

    return changes


def write_changes(root: Path, changes: Sequence[Change], backup: bool) -> None:
    timestamp = _dt.datetime.now().strftime("%Y%m%d%H%M%S")
    for change in changes:
        if not change.changed:
            continue
        if backup and change.path.exists():
            backup_path = change.path.with_name(change.path.name + f".bak-{timestamp}")
            shutil.copy2(change.path, backup_path)
        write_text(change.path, change.after)


def print_changes(root: Path, changes: Sequence[Change]) -> None:
    changed = [c for c in changes if c.changed]
    if not changed:
        print("No changes.")
        return
    for change in changed:
        print(f"# {change.reason}: {rel(change.path, root)}")
        print(unified_diff(change.path, change.before, change.after, root))
        if not str(change.after).endswith("\n"):
            print()


def print_validation(result: ValidationResult) -> None:
    if result.errors:
        print("Validation errors:")
        for item in result.errors:
            print(f"- {item}")
    if result.warnings:
        print("Validation warnings:")
        for item in result.warnings:
            print(f"- {item}")
    if not result.errors and not result.warnings:
        print("Validation passed with no warnings.")
    elif not result.errors:
        print("Validation passed with warnings.")


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Update repository-local skills and agents with dry-run diffs by default.")
    parser.add_argument("--root", default=".", help="Repository root or any path inside it. Defaults to current directory.")
    parser.add_argument("--spec", help="YAML or JSON update specification.")
    parser.add_argument("--scan", action="store_true", help="Print inventory JSON and exit unless other edit args are supplied.")
    parser.add_argument("--validate", action="store_true", help="Validate skills and agents after scanning or changes.")
    parser.add_argument("--strict", action="store_true", help="Exit non-zero on validation warnings as well as errors.")
    parser.add_argument("--write", action="store_true", help="Write changes. Default is dry-run diff only.")
    parser.add_argument("--backup", action="store_true", help="Create timestamped backups before overwriting existing files.")
    parser.add_argument("--skills-dir", help="Skill root directory relative to --root. Default: first existing candidate, else skills.")
    parser.add_argument("--agents-dir", help="Agent root directory relative to --root. Default: first existing candidate, else skills/agents.")
    parser.add_argument("--create-skill", action="append", help="Create a skill by name. Can be repeated.")
    parser.add_argument("--create-agent", action="append", help="Create an agent by name. Can be repeated.")
    parser.add_argument("--file", action="append", help="Target file to patch relative to --root. Can be repeated.")
    parser.add_argument("--set-frontmatter", action="append", help="Set markdown front matter KEY=VALUE. Can be repeated.")
    parser.add_argument("--append-section", action="append", help="Append text to a markdown section: Heading=Text. Can be repeated.")
    parser.add_argument("--replace", action="append", help="Regex replacement PATTERN::REPLACEMENT. Can be repeated.")
    return parser


def main(argv: Optional[Sequence[str]] = None) -> int:
    parser = build_parser()
    args = parser.parse_args(argv)
    root = find_repo_root(Path(args.root))

    did_edit_args = any([args.spec, args.create_skill, args.create_agent, args.file])

    if args.scan or not did_edit_args:
        print(json.dumps(inventory(root), ensure_ascii=False, indent=2))
        if not args.validate and not did_edit_args:
            return 0

    changes: List[Change] = []
    if args.spec:
        spec_path = Path(args.spec)
        if not spec_path.is_absolute():
            # Prefer path relative to current working dir, then root.
            cwd_candidate = Path.cwd() / spec_path
            spec_path = cwd_candidate if cwd_candidate.exists() else root / spec_path
        spec = load_structured(spec_path)
        if not isinstance(spec, Mapping):
            raise ValueError("Spec root must be a mapping")
        changes.extend(changes_from_spec(root, spec, args.skills_dir, args.agents_dir))

    changes.extend(changes_from_cli(root, args))

    if changes:
        if args.write:
            write_changes(root, changes, backup=args.backup)
            changed_count = sum(1 for change in changes if change.changed)
            print(f"Wrote {changed_count} changed file(s).")
        else:
            print_changes(root, changes)
            print("Dry-run only. Add --write to modify files.")

    if args.validate:
        result = validate(root)
        print_validation(result)
        if result.errors or (args.strict and result.warnings):
            return 1

    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except Exception as exc:
        eprint(f"error: {exc}")
        raise SystemExit(2)
