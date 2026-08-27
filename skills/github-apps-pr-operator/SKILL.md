---
name: github-apps-pr-operator
description: Use when creating, updating, inspecting, or commenting on GitHub pull requests or issues in this repository, especially when GitHub Apps should be preferred over gh for PR creation, PR comments, acceptance checks, and self-review comments.
---

# GitHub Apps PR Operator

Use this skill for repository work that involves GitHub PR or issue operations: PR creation, PR body/title updates, top-level comments, acceptance-criteria comments, self-review comments, review-thread inspection, or issue/PR metadata reads.

Also use it when the user mentions GitHubApps, GitHub Apps, PR 作成, PR コメント, or asks to suppress unnecessary confirmations around GitHub operations.

## Required Pairings

- For repository work that changes files, use `skills/worktree-task-pr-flow/SKILL.md`.
- For Japanese PR titles, bodies, and comments, use `skills/japanese-pr-title-comment/SKILL.md`.
- For PR self-review comments, use `skills/pr-review-self-review/SKILL.md`.
- Before committing PR-related text from reports or diffs, read the relevant `reports/working/*.md` or `reports/bugs/*.md`.

## Tool Preference

1. Prefer the GitHub app/connector for PR creation, PR updates, PR comments, issue reads, and PR metadata whenever callable tools are available.
2. Use `tool_search` to discover GitHub app tools when needed and when they are not already loaded.
3. Use `gh` only when the GitHub app lacks the needed operation or is unavailable.
4. If neither GitHub Apps nor `gh` can complete a required PR operation, report the task as blocked or partially complete. Do not mark the PR step complete.

## Confirmation Policy

Do not ask the user for confirmation before routine, reversible GitHub operations that are part of the active repository workflow:

- create a draft or normal PR from the prepared work branch to `main`
- update the PR title/body to match the committed branch
- add top-level PR comments for acceptance criteria or self-review
- read PR status, checks, files, comments, or metadata

Ask before actions that are destructive, irreversible, surprising, or outside the requested workflow:

- close a PR
- delete a branch
- force-push or rewrite published history
- merge a PR
- approve/request changes as a formal review on behalf of a human
- modify labels, milestones, assignees, or reviewers when not implied by the task

## PR Creation Workflow

1. Confirm the branch is pushed and targets `main` unless the user specifies another base.
2. Inspect `.github/pull_request_template.md` and fill its headings in Japanese.
3. Include:
   - purpose and background
   - changed files or areas
   - validation commands actually run
   - skipped checks with reasons
   - residual risk and GitHub Apps/CI limitations, if any
   - work report path
4. Create or update the PR with GitHub Apps.
5. Add the acceptance-criteria confirmation comment after the PR exists.
6. Add the self-review top-level comment after PR creation and after material PR updates.

## Acceptance Comment Rules

Use this format and check only satisfied criteria:

```markdown
## 受け入れ条件確認

- [x] <criterion>: 満たした。根拠: <file, command, PR detail>
- [ ] <criterion>: 未達。理由: <reason>
- [ ] <criterion>: 未検証。理由: <reason>

補足:
- 実行した検証: `<command>` pass
- 未実施の検証: `<command>` は <reason> のため未実施
```

If a required criterion remains failed or unverified, keep the task file out of `tasks/done/` unless the user explicitly accepts a partial result.

## Reporting

In the final response and work report, state:

- PR URL or the exact blocker preventing PR creation
- whether GitHub Apps or `gh` was used
- comments posted
- CI/check status if inspected
- any GitHub operation intentionally skipped
