---
name: traceability-gap-analysis-ja
description: 作業レポート、task、受け入れ条件、E2E、操作・期待値、要件、仕様の双方向トレースと欠落・矛盾・未確定点分析を作成する。
---

# Traceability Gap Analysis JA

## What this skill does

作業レポート、事実、task、受け入れ条件、E2E、画面操作、期待値、要件、仕様を双方向にトレースし、欠落・矛盾・未確定点を検出する。

## Inputs

- `00_input_inventory.md`
- `01_report_facts.md`
- `02_tasks.md`
- `03_acceptance_criteria.md`
- `04_e2e_scenarios.md`
- `05_operation_expectation_groups.md`
- `06_requirements.md`
- `07_specifications.md`

## Traceability rules

Create links:

```text
RPT -> FACT -> TASK -> AC -> E2E -> OP/EXP -> REQ/SPEC
REQ/SPEC -> AC/E2E -> TASK -> FACT/RPT
```

Every important artifact should be traceable in both directions.

## Output: traceability matrix

Create or update `docs/spec-recovery/08_traceability_matrix.md`.

Use this format:

```markdown
# Traceability Matrix

| Source | Fact | Task | AC | E2E | OP/EXP | Requirement | Specification | Confidence | Notes |
|---|---|---|---|---|---|---|---|---|---|
| RPT-001 | FACT-001 | TASK-001 | AC-001 | E2E-001 | OP-001, EXP-001 | REQ-DOC-001 | SPEC-DOC-001 | confirmed | - |
```

## Gap categories

Detect and record:

```text
no_source_requirement       要件に根拠がない
no_acceptance_criteria      taskに受け入れ条件がない
no_e2e                      受け入れ条件にE2E/検証がない
no_requirement              E2E/期待値に対応する要件がない
no_specification            要件に具体仕様がない
missing_error_path          異常系がない
missing_permission_case     権限ケースがない
missing_boundary_case       境界値がない
missing_rag_quality_case    RAG品質ケースがない
missing_security_case       セキュリティケースがない
missing_non_functional      非機能要件がない
conflict                    記述矛盾がある
open_question               未確定事項がある
```

## Output: gap analysis

Create or update `docs/spec-recovery/09_gap_analysis.md`.

Use this format:

```markdown
# Gap Analysis

## GAP-001: 文書アップロードのファイルサイズ上限が未定義

- Category: missing_boundary_case
- Related: TASK-001, AC-001, REQ-DOC-001
- Severity: medium
- Confidence: confirmed
- Evidence: 対応する記述なし
- Impact: E2Eで巨大ファイルの期待値を確定できない
- Recommended action: ファイルサイズ上限と超過時エラー文言を決定する
- Open question: Q-001
```

## Output: open questions

Create or update `docs/spec-recovery/10_open_questions.md`.

Use this format:

```markdown
# Open Questions

| ID | Related | Question | Why it matters | Proposed default | Owner | Status |
|---|---|---|---|---|---|---|
| Q-001 | REQ-DOC-001 | ファイルサイズ上限は何MBか | 境界値テストとエラー仕様に必要 | 未設定 | PO | open |
```

## Severity rules

- `critical`: セキュリティ、権限、データ漏洩、RAGの重大誤回答に関わる。
- `high`: 主要ユースケースの仕様または検証が欠落。
- `medium`: 境界値、異常系、運用上重要な詳細が未確定。
- `low`: 表記、ラベル、補助的仕様が未確定。

## Quality checks

Before finishing:

- Every `REQ-*` appears in the matrix.
- Every `SPEC-*` appears in the matrix.
- Every `TASK-*` has AC coverage or a gap.
- Every `AC-*` has E2E/non-UI verification coverage or a gap.
- Every `E2E-*` has related AC/REQ coverage or a gap.
- All `inferred` items are visible to reviewers.
