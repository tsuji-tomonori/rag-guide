---
name: rag-assist-spec-completion-orchestrator
description: Use when completing rag-assist requirements, specifications, acceptance criteria, Japanese E2E scenarios, traceability, or gap analysis from work reports, tickets, PRs, existing docs, or tests.
---

# rag-assist Specification Completion Orchestrator

## What this skill does

Use this skill when completing requirements, specifications, acceptance criteria, E2E scenarios, or traceability for `rag-assist` from work reports, tickets, PR descriptions, commit logs, issue reports, existing specs, or test files.

The skill coordinates the full pipeline:

```text
work reports / tickets / PRs / existing docs
  -> facts
  -> tasks
  -> acceptance criteria
  -> E2E scenarios
  -> operation/expectation groups
  -> requirements/specifications
  -> traceability matrix
  -> gap analysis/open questions
```

## Required inputs

Accept any of the following:

- Work reports
- Tickets/issues
- PR descriptions
- Commit messages
- Existing specs
- README or architecture docs
- Screenshots or screen descriptions
- Existing E2E/unit/API tests
- User-provided domain notes

If some inputs are missing, proceed with the available material and mark gaps explicitly.

## Core rules

- Every generated item must carry a `source` when possible.
- Separate facts from inference.
- Do not treat screen operations as the entire requirement. Use screen operations as verifiable examples of broader requirements.
- Keep Japanese output for requirements, acceptance criteria, and E2E scenarios unless the repository convention is clearly English.
- Prefer atomic tasks: one actor, one intent, one observable outcome.
- Preserve IDs across iterations. Do not renumber existing IDs unless explicitly requested.
- Use confidence labels:
  - `confirmed`: directly supported by source material.
  - `inferred`: likely but not explicitly stated.
  - `conflict`: contradicted by another source.
  - `open_question`: cannot be decided from available material.

## Execution steps

1. Inventory sources.
   - Create `docs/spec-recovery/00_input_inventory.md`.
   - List each input source, date if known, type, and reliability.

2. Extract facts and tasks.
   - Invoke or follow `work-report-task-extractor-ja`.
   - Output `01_report_facts.md` and `02_tasks.md`.

3. Write acceptance criteria.
   - Invoke or follow `acceptance-criteria-writer-ja`.
   - Include normal path, error path, permission path, boundary values, and RAG quality paths.
   - Output `03_acceptance_criteria.md`.

4. Generate E2E scenarios.
   - Invoke or follow `e2e-scenario-writer-ja`.
   - Write screen operations and expected results in Japanese.
   - Output `04_e2e_scenarios.md`.

5. Group operations and expectations.
   - Invoke or follow `operation-expectation-clusterer-ja`.
   - Output `05_operation_expectation_groups.md`.

6. Synthesize requirements and specifications.
   - Invoke or follow `requirement-spec-synthesizer-ja`.
   - Output `06_requirements.md` and `07_specifications.md`.

7. Add RAG quality and security specs.
   - Invoke or follow `rag-quality-and-security-spec-ja`.
   - Integrate output into `06_requirements.md`, `07_specifications.md`, and `09_gap_analysis.md`.

8. Build traceability and gap analysis.
   - Invoke or follow `traceability-gap-analysis-ja`.
   - Output `08_traceability_matrix.md`, `09_gap_analysis.md`, and `10_open_questions.md`.

9. Final review.
   - Ensure all tasks have acceptance criteria.
   - Ensure all acceptance criteria have at least one E2E or non-UI verification.
   - Ensure all requirements/specifications trace to evidence or are marked inferred/open.
   - Ensure security, RAG quality, and non-functional requirements are not omitted.

## Output structure

Use this directory by default:

```text
docs/spec-recovery/
  00_input_inventory.md
  01_report_facts.md
  02_tasks.md
  03_acceptance_criteria.md
  04_e2e_scenarios.md
  05_operation_expectation_groups.md
  06_requirements.md
  07_specifications.md
  08_traceability_matrix.md
  09_gap_analysis.md
  10_open_questions.md
```

## Final response format

When done, report:

```markdown
## 実施結果
- 作成/更新したファイル:
- 抽出した task 数:
- 受け入れ条件数:
- E2Eシナリオ数:
- 要件数:
- 仕様数:
- 未確定質問数:

## 重要な未確定点
...

## 次に人間が確認すべきこと
...
```
