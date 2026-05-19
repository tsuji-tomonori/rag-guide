# Helper Scripts

## consolidate_memory.py

A deterministic first-pass scanner for local text and Markdown files. It inventories sources, identifies duplicate lines, extracts TODO/error-like signals, and writes a draft dream report.
By default it scans common documentation plus `tasks/**/*.md`, `reports/**/*.md`, existing `.codex-memory/**/*.md`, and local notes/logs while skipping generated dependency, cache, workspace, and worktree directories.

Usage from a repository root after installing the skill:

```bash
python skills/agent-dreaming-memory/scripts/consolidate_memory.py --root .
```

Optional flags:

```bash
python skills/agent-dreaming-memory/scripts/consolidate_memory.py \
  --root . \
  --out .codex-memory/dream-reports/manual-scan.md \
  --include "docs/**/*.md" \
  --include ".codex-memory/**/*.md"
```

The script output is not authoritative. Codex must review it using `SKILL.md` before updating durable memory.
