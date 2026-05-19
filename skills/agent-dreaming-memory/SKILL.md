---
name: agent-dreaming-memory
description: Consolidate Codex project/session memory across work sessions. Use when asked to dream, sleep on it, review prior work, organize duplicate facts, find contradictions, detect repeated mistakes, or update .codex-memory. Do not use for ordinary coding tasks unless memory consolidation or cross-session context is requested.
---

# Agent Dreaming Memory

Use this skill to run an auditable “dreaming” pass for a Codex project: review available work traces, consolidate durable memory, flag contradictions, detect repeated mistakes, and prepare context for the next session.

This skill is inspired by the user’s supplied concept of AI agents improving between sessions by rereading their own work records. Treat “dreaming” as a workflow metaphor. Do not claim that Codex has autonomous sleep, hidden self-improvement, or background memory unless the current environment explicitly provides those capabilities.

## When to use

Use this skill when the user asks for any of the following:

- “dream”, “sleep on it”, “session consolidation”, “memory cleanup”, “作業記憶を整理”, “前回までの作業をまとめて”
- Build, update, audit, or repair `.codex-memory`
- Find duplicate project notes, inconsistent instructions, contradictory decisions, stale context, or repeated failure patterns
- Prepare durable handoff context for a future Codex session or teammate
- Review several sessions, commits, logs, or documents and turn them into stable project memory

Do not use this skill for ordinary feature implementation, bug fixes, refactors, or documentation edits unless the user explicitly asks for memory consolidation or cross-session context.

## Required outputs

Create or update these files unless the user asks for a different destination:

```text
.codex-memory/
  working-memory.md              # durable, current project facts and constraints
  decisions.md                   # accepted decisions and superseded decisions
  contradictions.md              # unresolved conflicting claims or instructions
  error-patterns.md              # repeated mistakes, triggers, and corrective rules
  archive-candidates.md          # records that may be stale/duplicated; do not delete automatically
  audit-log.md                   # append-only log of sources read and files changed
  dream-reports/
    YYYY-MM-DD-HHMM.md           # one report per dreaming pass
```

If `.codex-memory` does not exist, create it. Preserve existing content unless replacing a clearly marked generated section. When editing existing files, append a dated section rather than rewriting the whole file unless the user asks for a full rewrite.

## Source priority

Read local, user-authorized sources first. Use external systems only if the user has explicitly provided access or the repository already defines the required MCP/tooling.

Preferred source order:

1. Current user request and current session transcript or notes, if available.
2. Existing `.codex-memory/**` files.
3. `AGENTS.md`, `.codex/config.toml`, README, architecture docs, ADRs, design docs, runbooks, issue templates, and contribution guidelines.
4. Recent repository changes: `git status`, `git diff`, `git log --oneline --decorate -n 50`, and relevant changed files.
5. Local notes, task logs, meeting summaries, issue exports, PR descriptions, and postmortems stored in the repo.
6. Build/test logs only when relevant to repeated errors.

When reading sources, record enough evidence for auditability: path, heading or line reference when available, timestamp if present, and commit hash if the evidence comes from Git history.

## Dreaming workflow

Follow this sequence.

### 1. Define the scope

Identify the consolidation target:

- whole repository
- a subproject or feature area
- a single issue/PR/task
- a set of supplied logs or notes
- a time window such as “last week” or “since the last release”

If the user does not specify scope, use the current repository and the recent work visible from Git and `.codex-memory`.

### 2. Inventory sources

List which files, logs, commits, or notes were read. Use read-only inspection commands before making changes. Do not run destructive commands.

Useful commands when available:

```bash
git status --short
git log --oneline --decorate -n 50
git diff --stat
git diff --name-only
find .codex-memory -maxdepth 3 -type f 2>/dev/null
```

Optional helper script:

```bash
python skills/agent-dreaming-memory/scripts/consolidate_memory.py --root .
```

The script is a first-pass scanner. Treat its output as evidence candidates, not final truth.

### 3. Extract claims

Convert source material into atomic claims. Each claim should include:

- claim text
- topic
- source reference
- status: `current`, `superseded`, `uncertain`, `contradicted`, or `candidate`
- confidence: `high`, `medium`, or `low`
- reason for promotion or exclusion

Promote a claim to `working-memory.md` only when at least one of these is true:

- the user explicitly stated it as an instruction or requirement
- it appears in authoritative repo files such as `AGENTS.md`, ADRs, or README
- it is corroborated by multiple independent work traces
- it represents a recent implementation fact verified from code or tests

### 4. Consolidate duplicates

Merge duplicate or near-duplicate facts into one canonical statement. Keep the strongest source reference. Mention the weaker/older duplicates in the dream report or `archive-candidates.md`.

Do not delete duplicate source records automatically. If cleanup is useful, propose it in `archive-candidates.md` with a rationale.

### 5. Flag contradictions

For each contradiction, write both sides neutrally. Do not silently choose the winner unless source authority clearly resolves it.

Use this format in `contradictions.md`:

```markdown
## YYYY-MM-DD — <topic>

- Claim A: <statement>
  - Source: <path/commit/session>
  - Authority: <why this source may be stronger or weaker>
- Claim B: <statement>
  - Source: <path/commit/session>
  - Authority: <why this source may be stronger or weaker>
- Current handling: <blocked | use A temporarily | use B temporarily | needs user decision>
- Risk if unresolved: <impact>
```

### 6. Detect repeated mistakes

Look for repeated patterns such as:

- the same test/lint/type error recurring
- the same project convention being missed
- repeated edits to the wrong files or layers
- repeated stale assumptions
- repeated conflicts between documentation and implementation
- repeated prompt ambiguity that caused rework

Write each pattern in `error-patterns.md`:

```markdown
## YYYY-MM-DD — <pattern name>

- Pattern: <what keeps happening>
- Evidence: <source references>
- Likely trigger: <condition that causes it>
- Corrective rule: <specific instruction Codex should follow next time>
- Verification: <command/check/review step>
- Confidence: <high|medium|low>
```

### 7. Preserve rare but important records

Never remove records merely because they appear infrequently. Keep or highlight records that are rare but high-impact, including:

- security, privacy, legal, compliance, billing, or data-retention constraints
- production incident details and rollback procedures
- architectural decisions and rejected alternatives
- customer-specific exceptions
- credentials-handling rules, even when secrets themselves are not stored
- edge cases that caused past outages or regressions

If such records are stale, mark them `needs review` rather than deleting them.

### 8. Write the dream report

Every run must create a dated report in `.codex-memory/dream-reports/`. Use the template in `assets/templates/dream_report_template.md` when possible.

The report must include:

- scope
- sources read
- durable facts added or changed
- duplicate clusters found
- contradictions found
- repeated mistakes detected
- records marked as stale or archive candidates
- recommended next-session context
- open questions that block safe consolidation

### 9. Update durable memory

Update only the durable memory files needed by the run. Use concise, stable statements. Avoid long transcripts. Do not include sensitive secrets.

`working-memory.md` should answer: “What does the next Codex session need to know before acting?”

Use this format:

```markdown
## Current durable context — updated YYYY-MM-DD HH:MM

### Project purpose
- ...

### Current implementation facts
- ...

### User/team preferences
- ...

### Non-negotiable constraints
- ...

### Active risks and watchpoints
- ...

### Next-session startup checklist
- ...
```

### 10. Final response to the user

Summarize only the operational result:

- what was read
- what files were created or changed
- highest-priority contradictions or risks
- highest-value corrective rule for future sessions
- any decision that requires the user’s judgment

Do not expose private chain-of-thought. Provide a concise audit-style summary.

## Safety and audit rules

- Never silently delete, overwrite, or compact source records.
- Never store secrets, API keys, tokens, passwords, private keys, or credential material in `.codex-memory`.
- Separate facts from interpretations.
- Mark uncertainty explicitly.
- Prefer reversible changes: append dated sections, preserve source references, and keep archive candidates separate from deletion actions.
- Treat automatic memory cleanup as risky. Human review is required before removal of rare, old, or low-frequency records.
- When in doubt, retain the record and mark it `needs review`.
- Use scripts only as deterministic aids. The final judgment remains with Codex following this SKILL.md.

## Definition of done

A dreaming pass is complete when:

1. A dated dream report exists.
2. Durable memory files are created or updated.
3. Contradictions and repeated mistakes are explicitly captured or marked “none found”.
4. Archive candidates are recommendations only, not deletions.
5. The final user-facing response names the files changed and the next actionable review item.
