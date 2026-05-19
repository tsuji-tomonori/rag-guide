---
name: pr-review-self-review
description: Use when creating, updating, reviewing, or commenting on pull requests for rag-assist / memorag-bedrock-mvp; run a repository-specific self-review checklist and write the result as a Japanese PR comment, especially after PR creation or PR updates.
---

# PR Review Self Review

Use this skill for `rag-assist` / `memorag-bedrock-mvp` pull requests when:

- creating a PR to `main`
- updating a PR branch, PR body, or PR title
- writing a PR comment or review comment from a diff, status, report, or PR content
- doing a self-review before asking for review

Always combine this skill with `skills/japanese-pr-title-comment/SKILL.md` for PR text.

## Required Workflow

1. Inspect the PR scope.
   - Read `git status`, `git diff --name-only`, staged files, and relevant work reports.
   - If a PR already exists, inspect the PR body, changed files, and prior comments.
2. Classify the change.
   - `patch`: backward-compatible fix or documentation/process correction.
   - `minor`: backward-compatible feature or workflow addition.
   - `major`: breaking API, data, operation, or user-visible contract change.
3. Select checklist sections.
   - Always review: PR whole, docs sync, tests/validation, residual risks.
   - Add API/Web/Infra/Benchmark/RAG/Security/Data/Operations sections only when touched or affected.
4. Run or confirm validation.
   - Do not mark unrun checks as complete.
   - Record skipped checks with the concrete reason.
5. Write a Japanese top-level PR comment after every PR creation or PR update.
   - Summarize pass / concern / not verified.
   - Include commands actually run.
   - Include blocking / should fix / suggestion / question only when actionable.
6. If a blocking issue is found, fix it before marking the task done. If it cannot be fixed, report the PR as blocked or partially complete.

## PR Comment Template

```markdown
## セルフレビュー結果

対象: <PR作成時 | PR更新時 | commit SHA | branch>

### 判定

- 結論: <問題なし | should fix あり | blocking あり | 未検証あり>
- semver: <patch | minor | major> と判断。理由: <reason>

### 確認した観点

- [x] PR全体: <title/body/scope/report/risk の確認結果>
- [x] docs と実装の同期: <確認結果>
- [x] 変更範囲に見合うテスト: <確認結果>
- [x] RAGの根拠性・認可境界: <確認結果または非該当理由>

### 実行した検証

- `<command>`: pass

### 未実施・制約

- `<command>`: 未実施。理由: <reason>

### 指摘

- blocking: なし
- should fix: なし
- suggestion: なし
- question: なし
```

Use checkboxes only for items actually satisfied. Use unchecked items for unresolved or unverified required items.

## Review Severity Labels

- `blocking`: merging would create safety, compatibility, security, operational, or specification problems.
- `should fix`: should be fixed before merge for quality, maintainability, or reviewability.
- `suggestion`: optional improvement.
- `question`: intent or scope clarification.

## Core Review Checklist

### 0. PR Whole

- PR title clearly shows purpose and impact scope.
- PR body includes background/purpose, changes, impact, verification, and unverified items.
- Semver classification is reasonable: patch / minor / major.
- The PR scope is neither too broad nor incomplete for the stated goal.
- Independent goals are not mixed into one PR.
- Work reports or supplemental materials are linked or summarized when present.
- Unrun checks are listed with reason and risk.

### 1. Requirements, Architecture, and Docs

- Feature or behavior changes update related `FR-*`, `NFR-*`, `SQ-*`, or `TC-*` docs when needed.
- New requirements follow one requirement per file and include acceptance criteria.
- Requirement docs describe what must be true; architecture/design docs describe how it is achieved.
- RAG workflow, authorization, search, benchmark, debug trace, or data structure changes update architecture/design docs when needed.
- Traceability to ASR / ADR / design / evaluation docs is preserved.
- Changes do not contradict major drivers:
  - `ASR-TRUST-001`: answers cite source document locations.
  - `ASR-GUARD-001`: insufficient evidence leads to refusal.
  - `ASR-RETRIEVAL-001`: lexical / semantic / RRF / evaluation remain sound.
  - `ASR-EVAL-001`: benchmark and trace can measure quality continuously.
  - `ASR-SEC-*`: debug, benchmark, alias, and ACL data are not exposed carelessly.
- Root `README.md`, API examples, OpenAPI targets, `docs/LOCAL_VERIFICATION.md`, `docs/OPERATIONS.md`, deploy docs, and GitHub Actions docs are updated or explicitly judged unaffected.

### 2. API Changes

- Route additions or changes fit `apps/api/src/app.ts` responsibilities.
- Request/response schemas remain centralized and consistent with OpenAPI output.
- Route handlers mainly do validation, permission checks, service calls, and HTTP status mapping.
- Business logic is kept in service/modules such as `MemoRagService` or RAG modules.
- Backward compatibility is preserved:
  - no existing field is removed without clear major-version handling
  - required fields are not added carelessly
  - optional fields are safe for old clients
  - status code changes are explicit
- Errors distinguish validation, business, permission, not found, and infrastructure failures.

### 3. RAG Workflow and Quality

- Fixed workflow responsibilities remain separated.
- Deterministic logic and LLM judgment boundaries are clear.
- retrieval, rerank, answerability gate, sufficient context gate, citation validation, and support verification are not mixed.
- Insufficient evidence does not proceed to plausible answer generation.
- Citations match retrieved chunks.
- Debug trace records step, score, risk signal, decision, and reason needed for investigation.
- Benchmark queries use the intended same or explicitly documented RAG path as `/chat`.
- RAG quality fixes do not hard-code benchmark expected phrases, QA sample row ids, dataset-specific branches, or domain word lists that bypass retrieved evidence selection.
- New branches or gates update trace, benchmark, docs, and UI handling consistently.
- Prompt or threshold changes are evaluated for answerable accuracy, refusal precision, unsupported sentence rate, citation hit rate, retrieval recall, precision, and latency when relevant.

### 4. Web UI Changes

- API contract changes are reflected in Web types, rendering, and error handling.
- Optional fields are handled safely.
- User, assignee/editor, admin, and system admin views respect authorization boundaries.
- Debug trace, benchmark artifacts, admin data, aliases, ACL metadata, raw prompt, chunk text, and internal memo are not exposed to unauthorized users.
- Loading, failure, empty, permission denied, and refusal states render coherently.
- New UI flow remains consistent with the README UI policy.
- Web a11y metadata follows `skills/web-a11y-metadata-reviewer/SKILL.md`:
  - interactive controls have accessible names
  - icon-only controls have short Japanese `aria-label`
  - risky actions expose target/risk through accessible name or `aria-describedby`
  - form fields have labels and help/error text connections where needed
  - stateful UI exposes `aria-current`, `aria-expanded`, `aria-controls`, `aria-selected`, `aria-invalid`, `aria-busy`, or live regions as appropriate
  - decorative icons/SVGs are hidden from assistive technology

### 5. Infra, CDK, and GitHub Actions

- AWS resources are changed in the infra layer.
- Lambda IAM policies are least privilege.
- Cognito, DynamoDB, S3, S3 Vectors, Step Functions, CodeBuild, Secrets Manager, KMS, and logs scopes are not overbroad.
- CDK snapshot/assertion tests are updated when relevant.
- Deploy workflow, OIDC role, secrets, environment, and rollback documentation are updated when affected.
- `EMBEDDING_DIMENSIONS` and S3 Vectors index dimensions remain consistent.
- CDK redeploy requirements and cost impact are stated in the PR body.

### 6. Benchmark Changes

- Metric additions or changes align with dataset, summary, and report output.
- Dataset changes cover the new quality dimension.
- `answerable`, `unanswerable`, `expectedContains`, `expectedFiles`, `expectedPages`, and fact slots still work.
- Baseline comparison metrics and degradation thresholds are reasonable.
- JSONL results, summary JSON, and report Markdown remain reproducible.
- Numeric metrics do not become `NaN` or `undefined`.

### 7. Tests and Validation

- Tests cover the smallest failing unit for the change.
- Normal, error, boundary, permission, missing data, compatibility, and regression cases are covered when relevant.
- Snapshot updates have meaningful assertions and are not broad unrelated churn.
- Test names describe expected behavior.
- API changes cover request validation, response schema, status code, service calls, permissions, roles, debug exposure, store boundaries, RAG/refusal/citation/retrieved/trace consistency, and 400/401/403/404/500-style handling.
- Web changes cover rendering, interactions, API mock success/failure, optional field absence, permission display, state transitions, and build.
- Infra changes cover synth, IAM, env vars, resource settings, and snapshot/assertion expectations.
- Benchmark changes cover metric calculation, parsing, classification, expected fields, summary/report output, baseline comparison, and numeric stability.
- E2E/smoke checks are run or intentionally skipped with reason.

## Recommended Commands

Choose the smallest sufficient subset:

```bash
npm ci
npm run lint
npm run typecheck --workspaces --if-present
npm test --workspaces --if-present
npm run build --workspaces --if-present
```

API only:

```bash
npm run typecheck -w @memorag-mvp/api
npm test -w @memorag-mvp/api
npm run build -w @memorag-mvp/api
```

Web only:

```bash
npm run typecheck -w @memorag-mvp/web
npm test -w @memorag-mvp/web
npm run build -w @memorag-mvp/web
```

Infra only:

```bash
npm run typecheck -w @memorag-mvp/infra
npm test -w @memorag-mvp/infra
npm run build -w @memorag-mvp/infra
npm run cdk -w @memorag-mvp/infra -- synth
```

Benchmark only:

```bash
npm run typecheck -w @memorag-mvp/benchmark
npm test -w @memorag-mvp/benchmark
npm run build -w @memorag-mvp/benchmark
```

Repository Markdown / skills / agent instructions:

```bash
git diff --check
pre-commit run --files <changed-files>
```

## Security and Access Control

- New API routes use `authMiddleware` when needed.
- Authorization is explicit with `requirePermission`.
- Normal users cannot read debug trace, benchmark artifacts, admin information, internal aliases, ACL metadata, or other users' history.
- Assignee/editor and self-service data are separated.
- Sensitive data such as `internalMemo`, raw prompt, chunk text, tokens, and personal or confidential information is not logged or returned carelessly.
- Cognito groups and application permissions remain aligned.
- Self sign-up does not grant elevated permissions.
- Presigned/debug URLs have appropriate expiration.

When `apps/api/src/app.ts` protected routes change, also update `apps/api/src/security/access-control-policy.test.ts` and run API tests.

## Data, Compatibility, and Migration

- Optional fields remain readable for old data.
- Required fields do not break existing DynamoDB/local/S3/vector/benchmark artifacts without a migration.
- Document manifest, chunk, memory card, and evidence index stay consistent.
- Embedding model or dimension changes include reindex, cutover, and rollback consideration.
- Conversation history and question ticket items remain backward-compatible.

## Operations, Dependencies, and Configuration

- Validation, business, and infrastructure errors are separated.
- User-facing messages and operator debug details are separated.
- Health checks, Lambda logs, debug trace, and benchmark reports remain useful for incidents.
- Retry and fail-fast behavior is intentional.
- Local mock and AWS runtime differences are documented.
- New dependencies are necessary, in the correct workspace, and correctly classified as dependency/devDependency.
- `.env.example`, Operations docs, CDK env vars, and GitHub Actions secrets stay synchronized.
- No secrets or tokens are added to defaults, docs, or fixtures.

## Code Quality and Maintainability

- Names match domain language.
- Route, service, repository/store, RAG node, and UI component responsibilities are separated.
- Duplicate logic is not increased without need.
- Test fixtures and mocks do not drift from production logic.
- Types express states instead of `string` or `any` where practical.
- Type assertions are minimal and justified.
- Async errors propagate correctly.
- Time/date/timezone behavior is deterministic.
- Hot paths do not introduce unnecessary cost or latency.

## Change-Type Focus

Bug fix PR:

- Reproduction conditions are in the PR body.
- A regression test fails before the fix when practical.
- The fix is local and does not break adjacent behavior.
- Similar bugs were considered.
- Docs unchanged rationale is credible when docs are not updated.

Feature PR:

- Requirements, acceptance criteria, design, implementation, tests, and docs are aligned.
- API/UI/data remain backward-compatible.
- New permissions, roles, settings, and operations are documented.
- Benchmark or smoke test can verify the quality impact.
- Phase boundaries are clear.

RAG quality PR:

- Target metric is explicit.
- Dataset is added or updated.
- Answerable accuracy, refusal precision, unsupported rate, citation hit rate, and latency are considered.
- Prompt changes are reviewed together with gate, validator, and evaluator effects.
- Debug trace can explain improvement or regression.

Authorization/admin PR:

- User, assignee/editor, admin, auditor, and system admin boundaries are explicit.
- API enforces access; UI hiding is not the only control.
- Internal data response filtering is correct.
- 403 behavior is tested.

Infra/deploy PR:

- IAM diff is reviewed carefully.
- CDK snapshot changes are intentional.
- GitHub Actions, OIDC, secrets, and environment docs are synchronized.
- First deploy, redeploy, rollback, and real AWS gaps are described.

## Merge Readiness Gate

Before saying a PR is ready:

- CI is green, or unavailable/pending checks are explicitly recorded.
- Tests are sufficient for the changed scope.
- Docs and implementation do not contradict each other.
- Implementation sits in the right layer.
- API, data, auth, and infra breaking changes are explicit.
- RAG trust, refusal control, and citation validation are not weakened.
- Security, privacy, cost, and operations concerns are resolved or documented.
- PR body has enough unverified and impact details for review judgment.
