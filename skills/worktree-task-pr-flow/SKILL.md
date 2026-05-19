---
name: worktree-task-pr-flow
description: Use by default for repository work that involves file edits, commands, investigation, validation, docs, commits, or PRs. Carry the work through a dedicated git worktree, task-file creation with task type classification, root-cause analysis before fix tasks, acceptance criteria, commit, push, GitHub Apps pull request creation to main, PR acceptance comment, and tasks todo/do/done state updates.
---

# Worktree Task PR Flow

Use this skill by default for repository work that involves file edits, command execution, investigation, validation, documentation, commits, or pull requests, even when the user does not explicitly mention this flow.
Also use this skill when the user asks to work via a worktree, create a task file before implementation, commit changes, and create a pull request to `main`.
Also use it when the user asks to verify whether `AGENTS.md` or repository-local skills already make agents follow that worktree-to-main-PR flow, and to fix the configuration when it is missing or unclear.

Do not force the full workflow for pure question answering, plan-only requests, or cases where the user explicitly asks not to create a worktree, commit, push, or PR. In those cases, apply only the relevant preparation and reporting steps, and state which execution steps were intentionally skipped.

## Required Workflow

1. Understand the request before editing.
   - Identify deliverables, validations, and risks.
   - Classify the task before implementation as exactly one primary `タスク種別`: `機能追加`, `修正`, `調査`, or `ドキュメント更新`.
   - State a checklist and Done conditions before implementation.
   - Write acceptance criteria before touching the main deliverables.
   - When the request is a policy/configuration check, inspect `AGENTS.md` and relevant skills first, then change only missing or unclear rules.
   - If `タスク種別` is `修正`, read `skills/nazenaze-analysis/SKILL.md` and perform root-cause analysis before implementing the fix. Do not start a patch from a symptom-only conclusion; identify the problem statement, confirmed facts, root cause, affected scope, and full remediation plan first.
2. Create a dedicated worktree.
   - Prefer `git worktree add -b codex/<short-task> .worktrees/<short-task> origin/main` unless the user specifies another base.
   - Keep unrelated changes in the original worktree out of scope.
3. Create the task state directories.
   - Ensure `tasks/todo/`, `tasks/do/`, and `tasks/done/` exist.
   - Use Markdown task files named `YYYYMMDD-HHMM-<task-summary>.md`.
4. Create a task file before implementation.
   - Put new in-progress work under `tasks/do/`.
   - If a task starts in `tasks/todo/`, move it to `tasks/do/` before editing deliverables.
   - Include at least: background, purpose, scope, task type, plan, documentation maintenance plan, acceptance criteria, validation plan, PR review points, risks, and `状態`.
   - For `タスク種別: 修正`, include the `nazenaze-analysis` summary before the implementation plan. The summary must distinguish confirmed facts, inferred causes, open questions, root cause, and how the planned work covers the full affected scope.
5. Implement the requested change.
   - Follow repository-local skills and `AGENTS.md`.
   - Update durable docs when behavior or workflow changes require it.
   - Use `skills/github-apps-pr-operator/SKILL.md` for GitHub Apps PR operations.
   - Use `skills/taskfile-command-runner/SKILL.md` for Taskfile commands and permission delegation.
6. Validate before commit.
   - Use `skills/implementation-test-selector/SKILL.md`.
   - Use `skills/repository-test-runner/SKILL.md` to run, retry, escalate, and report selected checks.
   - Run relevant checks such as `git diff --check` and targeted test/lint/docs commands.
   - Do not claim unrun checks as completed.
7. Write the post-task report.
   - Use `skills/post-task-fit-report/SKILL.md`.
   - Save it under `reports/working/`.
8. Commit and push.
   - Inspect `git diff --cached --name-only` before committing.
   - Use `skills/japanese-git-commit-gitmoji/SKILL.md`.
   - Push the worktree branch to `origin`.
9. Create the PR to `main`.
   - Use GitHub Apps for PR creation whenever available.
   - Follow `skills/github-apps-pr-operator/SKILL.md`; do not ask for extra confirmation for routine PR creation, PR body updates, or top-level acceptance/self-review comments.
   - Use `skills/japanese-pr-title-comment/SKILL.md` for the title, body, and comments.
   - Base branch is `main` unless the user explicitly specifies another target.
10. Comment on acceptance criteria after PR creation.
    - Add a Japanese PR comment summarizing each acceptance criterion as pass, fail, or not verified.
    - If any required criterion fails, do not mark the task complete.
11. Complete the task file after the PR comment.
    - Update `状態` to `done`.
    - Move the task file from `tasks/do/` to `tasks/done/`.
    - Commit and push this completion update to the same PR branch.

## Task File Rules

- `tasks/todo/`: accepted but not started.
- `tasks/do/`: currently in progress. A task must be here before deliverable edits begin.
- `tasks/done/`: completed only after implementation, validation, PR creation, and PR acceptance comment are done.
- Keep one task per file.
- Every task file must state `タスク種別` as one of `機能追加`, `修正`, `調査`, or `ドキュメント更新`.
- `修正` task files must include a prior root-cause summary based on `skills/nazenaze-analysis/SKILL.md`; if evidence is insufficient, keep the task blocked or investigative until the root cause can be stated.
- Do not move a task to `done` when known validation failures or blocked PR actions remain.

## PR Comment Format

Use this structure after the PR exists:

```markdown
## 受け入れ条件確認

- [x] <criterion>: 満たした。根拠: <file, command, or PR detail>
- [ ] <criterion>: 未達。理由: <reason>
- [ ] <criterion>: 未検証。理由: <reason>

補足:
- 実行した検証: `<command>` pass
- 未実施の検証: `<command>` は <reason> のため未実施
```

Only check items that were actually satisfied.
