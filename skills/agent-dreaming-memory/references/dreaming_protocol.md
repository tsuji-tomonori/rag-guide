# Dreaming Protocol Reference

This reference expands the operational protocol for the `agent-dreaming-memory` skill.

## Goal

A dreaming pass converts noisy work traces into durable, auditable project memory. It should improve the next session’s starting context without creating hidden, unreviewed self-modification.

## Core principles

1. **Progressive consolidation** — summarize only what is durable enough to be useful later.
2. **Evidence first** — every durable claim should have a source.
3. **No silent deletion** — stale or duplicated records become archive candidates, not removed data.
4. **Rare but important beats frequent but trivial** — low-frequency constraints can be mission-critical.
5. **Auditability over cleverness** — prefer transparent notes over opaque optimization.

## Claim model

Use this schema internally when extracting facts:

```yaml
claim: "The project uses pnpm for package management."
topic: "tooling/package-manager"
source:
  path: "README.md"
  line: "42"
  commit: "optional"
status: "current"
confidence: "high"
authority: "README is project-level documentation"
last_seen: "YYYY-MM-DD"
```

## Source authority ranking

When claims conflict, rank sources in this order unless repo-specific guidance says otherwise:

1. Direct current user instruction in the active session.
2. `AGENTS.md`, `.codex/config.toml`, or equivalent project-level agent guidance.
3. Architecture decision records, runbooks, or governance docs.
4. Current code verified by tests or build commands.
5. Current README or maintained docs.
6. Recent commit messages and PR descriptions.
7. Old notes, historical task logs, and generated summaries.

Authority does not automatically imply truth. Use it to choose a temporary working assumption and highlight the conflict.

## Contradiction types

Common contradiction classes:

- **Instruction conflict** — two instructions direct Codex to do incompatible things.
- **Implementation/documentation conflict** — docs describe behavior that code does not implement.
- **Temporal conflict** — an older decision may have been superseded but lacks explicit closure.
- **Environment conflict** — commands, paths, package managers, or runtime versions differ across notes.
- **Requirement conflict** — product or business goals point in different directions.

## Duplicate consolidation rules

A duplicate cluster can be consolidated when the records share the same practical meaning. Keep one canonical statement and cite the strongest source. Preserve weak duplicates as archive candidates.

Do not consolidate when:

- two records look similar but apply to different environments
- one record is an exception to the other
- either record involves security, compliance, data retention, payments, or incident response
- timestamps imply a possible temporal change that has not been resolved

## Repeated mistake detection

A repeated mistake pattern requires at least two evidence points or one explicit user correction plus one likely recurrence risk.

A good corrective rule is:

- specific enough to execute
- tied to a trigger
- verifiable by command, file check, or review step
- short enough to fit in working memory

Example:

```markdown
- Pattern: Codex repeatedly edits generated files directly.
- Trigger: User asks for schema/type updates.
- Corrective rule: Edit the source schema first, then regenerate artifacts using `pnpm generate`.
- Verification: Confirm generated files match a clean generation diff.
```

## Memory file responsibilities

- `working-memory.md`: only current facts needed at the start of future work.
- `decisions.md`: decisions, status, rationale, and supersession history.
- `contradictions.md`: unresolved conflicts and temporary handling.
- `error-patterns.md`: recurring failures and corrective rules.
- `archive-candidates.md`: cleanup proposals with rationale and risk.
- `audit-log.md`: append-only record of every dreaming pass.
- `dream-reports/*.md`: detailed dated output for one run.
