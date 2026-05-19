---
name: e2e-scenario-writer-ja
description: 受け入れ条件から、日本語の画面操作、期待値、非UI検証、テストデータを含む E2E シナリオを作成する。
---

# E2E Scenario Writer JA

## What this skill does

受け入れ条件から、日本語のE2Eテストシナリオを作成する。画面操作と期待値を明確にし、後続の要件・仕様抽象化に使える粒度で書く。

## Inputs

- `docs/spec-recovery/03_acceptance_criteria.md`
- 画面一覧、ルーティング、既存E2Eテスト、UIコンポーネント、API仕様

## Scenario rules

- 1シナリオは1つの主目的に集中する。
- 画面操作はユーザー視点で書く。
- 期待値は画面表示、データ、ネットワーク/API、ログ、RAG品質を分けて書く。
- Playwright/Cypress等に変換しやすいように、操作対象を明示する。
- 不明な画面名やラベルは推定せず、`仮称` または `open_question` とする。
- UIで検証できない条件は `非UI検証` として分ける。

## Output

Create or update `docs/spec-recovery/04_e2e_scenarios.md`.

Use this format:

```markdown
# E2E Scenarios

## E2E-001: PDF文書をアップロードできる

- Acceptance Criteria: AC-001
- Target screen: ドキュメント管理画面
- Actor: 一般ユーザー
- Priority: high
- Confidence: confirmed
- Test data:
  - `fixtures/docs/sample.pdf`

### 前提条件
- ユーザーがログイン済みである
- ユーザーに文書登録権限がある

### 画面操作
1. サイドメニューの「ドキュメント管理」をクリックする
2. 「アップロード」ボタンをクリックする
3. ファイル選択ダイアログで `sample.pdf` を選択する
4. 「登録」ボタンをクリックする

### 期待値
- アップロード完了メッセージが表示される
- 文書一覧に `sample.pdf` が表示される
- ステータスが「処理中」または「完了」と表示される
- エラー通知が表示されない

### 非UI検証
- インデックス作成ジョブが作成されている
- 登録文書が現在のユーザーまたはテナントに紐づいている
```

## Expected result categories

Use categories when useful:

```text
UI表示
画面遷移
データ永続化
API呼び出し
権限制御
監査ログ
RAG検索結果
RAG回答内容
引用/参照元
エラー表示
性能/待ち時間
```

## E2E scenario variants

For each important feature, consider:

- 正常系
- 入力エラー
- 権限エラー
- 空状態
- 読み込み中
- 再試行
- ネットワーク/API失敗
- RAGの根拠あり
- RAGの根拠なし
- RAGの権限外文書混入防止

## Quality checks

Before finishing:

- Every E2E scenario references at least one acceptance criterion.
- Every operation has an observable expected result.
- Expected values avoid vague words such as “正しく” unless followed by concrete criteria.
- RAG expected values distinguish answer correctness, faithfulness, citation correctness, and access control.
