---
name: taskfile-command-runner
description: Use when selecting, running, retrying, or escalating Taskfile commands such as task dev:api, task web:dev, task smoke:api, task benchmark:sample, task docs:check, or repository task aliases, including permission delegation and reducing repeated user confirmations.
---

# Taskfile Command Runner

Use this skill whenever a task is executed through `task`, a repository Taskfile, or an npm/script wrapper documented as a Taskfile command.

## Required Pairings

- Use `skills/implementation-test-selector/SKILL.md` or `skills/repository-test-runner/SKILL.md` when the command is a validation check.
- Use `skills/worktree-task-pr-flow/SKILL.md` for repository work that will be committed or PR'd.
- Use `skills/blocker-recovery/SKILL.md` when a command is blocked by missing services, dependencies, permissions, ports, or network access.

## Command Selection

1. Inspect the relevant `Taskfile.yaml` or `Taskfile.yml` before inventing commands.
2. Prefer the narrowest task that validates or runs the affected area.
3. Prefer repository-level aliases when they exist, such as:
   - `task verify`
   - `task smoke:api`
   - `task docs:check`
   - `task benchmark:sample`
4. Use package-manager commands directly only when no suitable Taskfile target exists or the Taskfile delegates to a missing target.

## Permission Delegation

Use already approved command prefixes without asking again only for fixed, read-only commands whose resolved bodies were inspected in the current branch.

When a necessary Taskfile command fails because of sandboxing, restricted network access, port/service permissions, or missing permission to start a local service, do **not** auto-retry with escalation. First inspect the fully resolved command chain (Taskfile target, called subtasks, and delegated npm/package scripts), then ask the user before any `sandbox_permissions: "require_escalated"` retry.

Include a reusable `prefix_rule` when the command shape is stable and safe to reuse, for example:

```text
["task", "docs:check"]
["task", "memorag:verify"]
["task", "benchmark:sample"]
["task", "dev:api"]
```

Do not provide a broad `prefix_rule` for Taskfile aliases that delegate to repository-controlled scripts, arbitrary shell, destructive commands, or commands containing heredocs, redirection, wildcard expansion, or environment-specific secrets.

## Confirmation Policy

Do not ask the user before:

- running read-only or validation Taskfile commands
- starting a dev server or smoke dependency that the current task requires
- using an approved prefix rule for already-audited fixed commands

Ask before:

- destructive cleanup, deletion, reset, force-recreate, or data migration tasks
- deploy, bootstrap, release, publish, billing-affecting, or production-impacting tasks
- any escalation retry (`require_escalated`) for repository-controlled Taskfile/script execution
- commands that require secrets or would operate on a real external account beyond the requested scope

## Running Long-Lived Tasks

For dev servers:

1. Start the command in a session.
2. Wait for a readiness line or probe the health endpoint when available.
3. Keep the session open while dependent checks run.
4. Stop or report the session before final response if it is no longer needed.

Do not end the turn with an unmanaged command still running unless the user explicitly asked to keep it running and you provide the session/URL.

## Reporting

Record in the task file, PR body, PR comments, and final response as applicable:

- command run
- whether it used normal sandbox or escalated permission
- result: pass, fail, blocked, or skipped
- reason for any skipped command
- follow-up command used after a failure
