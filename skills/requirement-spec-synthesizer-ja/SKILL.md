---
name: requirement-spec-synthesizer-ja
description: task、受け入れ条件、E2E、操作・期待値グループから、要件と仕様を根拠付きで抽象化する。
---

# Requirement Spec Synthesizer JA

## What this skill does

E2Eの画面操作・期待値グループから、要件と仕様を抽象化する。画面操作をそのまま要件にせず、ユーザー目的、システム能力、画面仕様、データ仕様、API仕様、非機能要件へ分ける。

## Inputs

- `docs/spec-recovery/02_tasks.md`
- `docs/spec-recovery/03_acceptance_criteria.md`
- `docs/spec-recovery/04_e2e_scenarios.md`
- `docs/spec-recovery/05_operation_expectation_groups.md`

## Requirement/spec distinction

Use this distinction:

- 業務要件: なぜ必要か。ユーザー・業務上の目的。
- 機能要件: システムが何を可能にするか。
- 画面仕様: どの画面でどう操作・表示するか。
- データ仕様: どのデータを保持し、どの状態を持つか。
- API仕様: どの入出力とエラーを提供するか。
- 非機能要件: 性能、可用性、監査、運用、アクセシビリティなど。
- AI/RAG品質要件: 検索、根拠、忠実性、引用、不明時応答など。
- セキュリティ要件: 認証、認可、テナント分離、プロンプトインジェクション耐性など。

## Synthesis rules

- Convert repeated screen operations into screen capabilities.
- Convert expected results into verifiable specifications.
- Convert tasks into functional requirements.
- Convert RAG behavior into quality and safety requirements.
- Preserve trace links from REQ/SPEC to AC/E2E/OP/EXP/source facts.
- Mark unconfirmed abstractions as `inferred`.

## Output: requirements

Create or update `docs/spec-recovery/06_requirements.md`.

Use this format:

```markdown
# Requirements

## REQ-DOC-001: 文書をナレッジベースに登録できる

- Type: functional
- Actor: 文書登録権限を持つユーザー
- Priority: high
- Confidence: confirmed
- Source: TASK-001, AC-001, E2E-001

### Description
ユーザーは、許可された形式の文書をナレッジベースへ登録できる。

### Rationale
登録された文書を検索・回答生成の根拠として利用するため。

### Acceptance criteria
- AC-001
- AC-002

### Related specifications
- SPEC-DOC-001
- SPEC-IDX-001
```

## Output: specifications

Create or update `docs/spec-recovery/07_specifications.md`.

Use this format:

```markdown
# Specifications

## SPEC-DOC-001: ドキュメント管理画面のアップロード操作

- Requirement: REQ-DOC-001
- Type: screen
- Target: ドキュメント管理画面
- Confidence: confirmed
- Source: OP-001, EXP-001, E2E-001

### Specification
ドキュメント管理画面は、文書ファイルを選択してアップロードする操作を提供する。アップロード成功時、文書一覧にファイル名と処理ステータスを表示する。

### Verification
- E2E-001
```

## Anti-patterns

Avoid these:

- `ユーザーはアップロードボタンをクリックできる` を機能要件にする。
- 推定したファイルサイズ上限を確定仕様として書く。
- RAG回答の「正しい」を判定基準なしで書く。
- 画面表示だけでデータ永続化仕様を省く。

## Quality checks

Before finishing:

- Each requirement has at least one verification path.
- Each specification links to at least one requirement or is marked as orphan/gap.
- UI details are separated from user goals.
- Non-functional, security, and AI/RAG quality requirements are represented.
