---
name: operation-expectation-clusterer-ja
description: E2E シナリオから画面操作と期待値を抽出し、画面別、機能別、ロール別、データ状態別、RAG処理段階別にグルーピングする。
---

# Operation Expectation Clusterer JA

## What this skill does

E2Eシナリオ内の画面操作と期待値を抽出し、要件・仕様に変換しやすいグループへ整理する。

## Inputs

- `docs/spec-recovery/04_e2e_scenarios.md`
- 画面一覧、URL、コンポーネント一覧、既存テスト

## Clustering dimensions

Group operations and expectations by:

```text
screen
feature
actor_role
data_object
data_state
operation_type
expected_result_type
error_mode
security_boundary
rag_pipeline_stage
non_functional_quality
```

## Operation extraction

Extract each user action as `OP-*`:

```markdown
| OP ID | E2E | 画面 | 操作種別 | 操作対象 | 操作内容 | 入力データ | 備考 |
|---|---|---|---|---|---|---|---|
| OP-001 | E2E-001 | ドキュメント管理 | click | アップロードボタン | クリックする | - | - |
```

## Expectation extraction

Extract each expected result as `EXP-*`:

```markdown
| EXP ID | E2E | 種別 | 期待値 | 対象 | 検証方法 | 備考 |
|---|---|---|---|---|---|---|
| EXP-001 | E2E-001 | UI表示 | 文書一覧にファイル名が表示される | 文書一覧 | 画面検証 | - |
```

## Output

Create or update `docs/spec-recovery/05_operation_expectation_groups.md`.

Recommended structure:

```markdown
# Operation / Expectation Groups

## Group: ドキュメント管理画面

### Operations
...

### Expectations
...

### Derived specification candidates
- SPEC-DOC-001: ドキュメント管理画面は文書アップロード操作を提供する
- SPEC-DOC-002: 文書一覧はファイル名と処理ステータスを表示する

## Group: RAG回答生成
...
```

## Abstraction rules

- Repeated operations imply screen capabilities.
- Repeated expectations imply stable UI/data/API specifications.
- Error expectations imply validation or recovery specifications.
- Permission expectations imply authorization requirements.
- RAG expectations imply retrieval/generation/citation quality requirements.

## Quality checks

Before finishing:

- Every E2E scenario has extracted operations and expectations.
- Similar operations are grouped but original IDs are preserved.
- Grouping does not erase edge cases.
- Derived specification candidates reference supporting OP/EXP IDs.
