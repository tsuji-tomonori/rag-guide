---
name: implementation-docs-maintainer
description: 実装、修正、リファクタ、設定変更に伴って、README、AGENTS.md、docs、API例、運用手順、設計・要求ドキュメントの更新要否を判断し、必要なドキュメントを同時にメンテする。
---

# Implementation Docs Maintainer

Use this skill during implementation work when code, configuration, behavior, API contracts, workflows, or operations may affect repository documentation.

## Workflow

1. Before editing, identify the user-visible or maintainer-visible behavior that may change.
2. Search for related documentation with `rg` before assuming there is no document to update.
3. Decide whether docs must be updated, explicitly noting the reason when no update is needed.
4. Update the smallest durable document that will help future implementers, operators, reviewers, or users.
5. When editing `docs/`, use `docs-swebok-template-writer` and the relevant requirement skills.
6. After code and docs changes, run a repository-defined docs check when available, or at least inspect the diff for stale commands, paths, API names, and trailing whitespace.
7. In the final response or work report, state which docs were updated, or why docs were intentionally unchanged.

## Update Triggers

Update docs when a change affects any of these:

- Public or internal API shape, endpoint, request/response field, OpenAPI output, or curl example.
- Environment variables, setup steps, deployment, CI, task commands, or local development workflow.
- User-visible UI behavior, feature flow, error message, permissions, or authentication behavior.
- Requirements, acceptance criteria, architecture, design, operations, monitoring, incidents, or maintenance assumptions.
- Agent instructions, skills, or repository-local automation practices.

## Preferred Targets

- Repository-wide agent behavior: `AGENTS.md`.
- MemoRAG product docs: `docs/`.
- High-level setup and usage: `README.md`.
- API examples: `docs/API_EXAMPLES.md`.
- Transient completion records: `reports/working/`, not `docs/`.

## Avoid

- Do not add broad documentation rewrites for narrow implementation changes.
- Do not claim docs were checked if only code tests were run.
- Do not duplicate the same durable information in multiple files unless one file is an index.
- Do not put temporary task logs under `docs/`.
