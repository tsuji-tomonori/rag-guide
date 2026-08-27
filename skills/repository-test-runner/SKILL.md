---
name: repository-test-runner
description: Use when running, retrying, escalating, or reporting repository tests, lint, typecheck, build, smoke, docs checks, benchmarks, or pre-commit validations after code, docs, skill, or workflow changes.
---

# Repository Test Runner

Use this skill when validation must be executed or reported. It complements `skills/implementation-test-selector/SKILL.md`: the selector chooses the smallest sufficient checks; this skill runs, retries, escalates, and reports them.

## Required Pairings

- Always use `skills/implementation-test-selector/SKILL.md` before finishing implementation work.
- Use `skills/taskfile-command-runner/SKILL.md` when a selected check is a Taskfile command.
- Use `skills/verification-repair-loop/SKILL.md` when a check fails.
- Use `skills/blocker-recovery/SKILL.md` when dependencies, services, permissions, or environment constraints block a check.

## Execution Rules

1. Inspect changed files with `git diff --name-only` and staged files with `git diff --cached --name-only` when staging has started.
2. Run targeted checks before broad checks.
3. If a check fails, identify whether the cause is:
   - real regression
   - stale test expectation
   - missing dependency or service
   - sandbox/network/permission issue
   - flaky or timeout behavior
4. Fix real regressions and stale expectations within scope, then re-run the failing check.
5. For sandbox/network/permission failures on required checks, inspect the resolved command path first and ask the user before any escalation retry according to `skills/taskfile-command-runner/SKILL.md`.
6. Do not claim a skipped, blocked, timed-out, or interrupted check as passed.

## Confirmation Policy

Do not ask the user before:

- running lint, typecheck, unit tests, build checks, docs checks, pre-commit checks, or smoke checks required by the task
- re-running a failed validation after an in-scope fix

Ask before:

- any escalation retry (`require_escalated`) for repository-controlled checks
- running tests that require production credentials or mutate production/external state
- running very expensive benchmarks or destructive integration tests when not required by the task
- deleting generated artifacts, databases, or caches outside the workspace

## Reporting Format

Use this compact format in reports, PR bodies, PR comments, and final responses:

```markdown
### 実行した検証

- `<command>`: pass
- `<command>`: fail -> 修正後 pass

### 未実施・制約

- `<command>`: 未実施。理由: <reason>
```

Include escalation only when relevant:

```markdown
- `<command>`: pass。初回は sandbox の制約で失敗したため、`require_escalated` で再実行。
```

## Documentation and Skill Changes

For Markdown, YAML, local skills, and agent instructions, the default minimum checks are:

- `git diff --check`
- path/frontmatter inspection for changed `SKILL.md`
- YAML shape inspection for changed `agents/openai.yaml`
- `pre-commit run --files <changed-files>` when hooks and dependencies are available

If pre-commit is unavailable, state that targeted inspection and `git diff --check` were used instead.
