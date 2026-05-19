---
name: implementation-test-selector
description: 実装、修正、リファクタ、設定変更、ドキュメント変更の完了前に、変更範囲に応じた最小十分なテスト、型チェック、lint、ビルド、smoke確認を選び、実行結果と未実施理由を報告する。
---

# Implementation Test Selector

Use this skill before finishing implementation work, including documentation or agent-instruction changes that can be validated mechanically.

## Workflow

1. Inspect the changed files with `git diff --name-only` and `git diff --cached --name-only` when staging has started.
2. Map each changed area to the smallest useful verification command.
3. Prefer targeted checks first, then broader checks when shared behavior, contracts, build outputs, or multiple workspaces are affected.
4. Use `skills/repository-test-runner/SKILL.md` to run, retry, escalate, and report the selected checks.
5. Use `skills/taskfile-command-runner/SKILL.md` when a selected check is a Taskfile command.
6. Run the selected checks unless the user explicitly says not to, required services are unavailable, or the check is unsafe for the environment.
7. If a check cannot be run, record the concrete reason and the command that would normally be used.
8. Do not mark unrun checks as completed in PR bodies, reports, or final responses.

## Command Selection

For MemoRAG MVP changes:

- API code or API tests: `npm run test -w @memorag-mvp/api` and typecheck for the API workspace when relevant.
- Web UI code: `npm run test -w @memorag-mvp/web` plus the web typecheck for TypeScript changes.
- Infra or CDK code: `task cdk:test`.
- Cross-workspace behavior, shared config, package, or build-affecting changes: `task verify`.
- Running local API behavior: `task smoke:api` only when a compatible local API server is running.
- Benchmark behavior: `task benchmark:sample` when benchmark inputs or scoring logic change.

For repository-level Markdown, skills, and agent instructions:

- Check changed Markdown and YAML for syntax, stale paths, and trailing whitespace.
- Use `pre-commit run --files <changed-files>` when hooks and dependencies are installed.
- If pre-commit is unavailable, use targeted file inspection and `git diff --check`.

## Reporting

Always report:

- Commands run and whether they passed.
- Commands intentionally skipped and why.
- Any generated files or reports produced by verification.
- Residual risk if only documentation-level checks were applicable.

## Avoid

- Do not run broad, slow, or environment-dependent checks when a targeted check gives equivalent confidence for a narrow change.
- Do not skip tests only because the change appears small.
- Do not hide failing checks behind a successful broader summary.
