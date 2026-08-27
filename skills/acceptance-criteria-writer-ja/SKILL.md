---
name: acceptance-criteria-writer-ja
description: task から正常系、異常系、境界値、権限、非機能、RAG品質、セキュリティを含む日本語の受け入れ条件を作成する。
---

# Acceptance Criteria Writer JA

## What this skill does

`TASK-*` から、日本語の受け入れ条件を作成する。通常のUI機能だけでなく、異常系、権限、境界値、非機能、RAG品質、セキュリティも含める。

## Inputs

- `docs/spec-recovery/02_tasks.md`
- 関連する仕様、画面、API、テスト、作業レポート

## Acceptance criteria principles

- 受け入れ条件は検証可能に書く。
- 1つの条件には1つの期待結果を書く。
- Given/When/Then 形式を優先する。
- 画面表示だけでなく、データ状態、権限、ログ、RAG回答品質も書く。
- AI/RAGの期待値は曖昧にせず、評価可能な条件にする。
- 推定は `Confidence: inferred` とする。

## Coverage dimensions

For each task, consider these dimensions:

```text
normal_path
error_path
permission
boundary
empty_state
loading_state
retry_or_recovery
data_persistence
audit_log
rag_retrieval_quality
rag_answer_faithfulness
citation_correctness
security_prompt_injection
multi_tenant_isolation
non_functional
```

## Output

Create or update `docs/spec-recovery/03_acceptance_criteria.md`.

Use this format:

```markdown
# Acceptance Criteria

## AC-001: PDF文書をアップロードできる

- Task: TASK-001
- Type: normal_path
- Confidence: confirmed
- Source: FACT-001

### Given
- ユーザーがログイン済みである
- ユーザーに文書登録権限がある

### When
- ユーザーがドキュメント管理画面からPDFファイルをアップロードする

### Then
- ファイルが文書一覧に表示される
- インデックス作成ジョブが作成される
- ステータスが「処理中」または「完了」と表示される
```

## RAG-specific acceptance criteria examples

```markdown
## AC-RAG-001: 回答は根拠文書に基づく

- Task: TASK-xxx
- Type: rag_answer_faithfulness
- Confidence: inferred

### Given
- ユーザーがアクセス可能な文書に質問の根拠が含まれている

### When
- ユーザーが文書内容に関する質問を送信する

### Then
- 回答内容は取得された根拠チャンクにより支持される
- 回答には参照元文書または引用が表示される
- 根拠に含まれない断定を行わない
```

```markdown
## AC-RAG-002: 根拠がない場合は推測しない

### Given
- アクセス可能な文書に質問への回答根拠が存在しない

### When
- ユーザーがその質問を送信する

### Then
- システムは根拠が見つからないことを示す
- 根拠のない回答を生成しない
```

## Quality checks

Before finishing:

- Every task has at least one acceptance criterion.
- Every critical user-facing task has normal and error path criteria.
- Every privileged operation has permission criteria.
- RAG tasks have retrieval, answer, citation, and no-answer criteria.
- Any missing threshold becomes an open question, not a fabricated number.
