---
name: work-report-task-extractor-ja
description: 作業レポート、チケット、PR、コミットログ、既存仕様から、要件復元に使う事実、task、根拠、推定、矛盾、未確定点を日本語で抽出する。
---

# Work Report Task Extractor JA

## What this skill does

作業レポート、チケット、PR、コミットログ、議事録、既存仕様から、要件復元に使える事実と task を抽出する。

## Inputs

- 作業レポート本文
- チケット/Issue/PR本文
- コミットログ
- 既存ドキュメント
- 画面メモ
- テストログ

## Extraction policy

1. 事実と推定を分ける。
2. task は「誰が」「何を」「何のために」「どういう結果を得るか」に分解する。
3. 1つの task に複数の目的を混ぜない。
4. 画面、API、データ、バッチ、RAG処理など対象コンポーネントを明示する。
5. 根拠が薄いものは `inferred` または `open_question` にする。
6. 矛盾がある場合は片方を捨てず、`conflict` として併記する。

## Task extraction heuristics

次の表現は task 候補である。

- 「追加した」「実装した」「対応した」「修正した」「できるようにした」
- 「表示する」「登録する」「削除する」「検索する」「回答する」
- 「エラーになる」「警告する」「再試行する」
- 「管理者のみ」「ログイン済みの場合」「権限がない場合」
- 「引用を表示」「文書を検索」「チャンク化」「埋め込み」「再インデックス」

## Output: facts

Create or update `docs/spec-recovery/01_report_facts.md`.

Use this format:

```markdown
# Report Facts

| ID | Source | 原文抜粋 | 抽出事実 | 対象 | 信頼度 | 備考 |
|---|---|---|---|---|---|---|
| FACT-001 | RPT-001 | ... | ... | ... | confirmed | ... |
```

## Output: tasks

Create or update `docs/spec-recovery/02_tasks.md`.

Use this format:

```markdown
# Tasks

## TASK-001: 文書をアップロードする

- Actor: 一般ユーザー
- Intent: ナレッジベースに文書を登録する
- Outcome: 文書が登録され、検索・回答生成の対象になる
- Component: ドキュメント管理画面 / indexing pipeline
- Source: FACT-001
- Confidence: confirmed
- Related data: Document, KnowledgeBase, IndexJob
- Notes:
  - ファイルサイズ上限は未確認
- Open questions:
  - Q-001: 対応ファイル形式はPDFのみか
```

## Classification tags

Attach tags when possible:

```text
ui, api, data, auth, admin, rag-search, rag-answer, citation, indexing, audit, non-functional, security, error-handling
```

## Quality checks

Before finishing:

- No task should be a vague implementation activity such as “リファクタリングした” unless it affects observable behavior.
- Split compound tasks.
- Ensure each task has at least one source or explicit `inferred` marker.
- Create open questions for missing actor, condition, data, or expected outcome.
