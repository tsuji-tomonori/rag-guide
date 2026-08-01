# v1.1.1 Finding解決記録

| ID | Severity | 対象 | 指摘 | 対応 | 状態 |
|---|---|---|---|---|---|
| ISSUE-01 | HIGH | 10.4.1、10.7.2 | Knowledge Basesの`HYBRID`対応先をOpenSearch Serverlessだけとする記述が、Aurora PostgreSQLとMongoDB Atlasへの拡張を反映していない | 10.1、10.4、10.7を更新し、対応storeを拡張。公式文書間の差異がある場合は同一日付の文書確認と対象regionでの疎通試験を必須化 | RESOLVED |
| ISSUE-02 | MEDIUM | 第10章 | 2026年6月17日に一般提供されたManaged Knowledge Baseが未反映 | 第10章序文、10.1、10.2、10.4、10.7へManaged Knowledge Baseの責務、`managedSearchConfiguration`、評価観点を追加 | RESOLVED |
| ISSUE-03 | MEDIUM | 索引 | ANNの参照先がMetadata・Provenance・ACL設計になっている | Index構築とライフサイクルへ修正 | RESOLVED |
| ISSUE-04 | MEDIUM | 第9章 | 引用件数の取得元、検索式、snapshotがなく再現できない | 可変の概数を本文から削除。`evidence/chapter-9-citation-counts/`に取得元、canonical ID、生応答、SHA-256を保存する規約とCSV schemaを追加 | RESOLVED |
| ISSUE-05 | LOW | 10.2 | file名とH1見出しが一致していない | `10.2.Embeddingとvector indexを設定する.md`へrename | RESOLVED |
| ISSUE-06 | LOW | 5.5 | Evidence Setが一般に標準化された固有形式であるように読める | 「本書では」と定義し、本書独自の設計上の呼称であることを明記 | RESOLVED |
| ISSUE-07 | LOW | 8.3 | prompt injection・data poisoning対策の残余リスクが冒頭で明示されていない | 完全防止を保証しないこと、監視、隔離、切り戻し、回帰試験と測定が必要であることを追記 | RESOLVED |
| ISSUE-08 | LOW | 10.7 | Retrieve 20件、rerank 5件などが固定推奨値に見える | すべて比較開始値であり、data、query、region、model、store、latency、costを固定して測定することを章冒頭へ明記 | RESOLVED |
| ISSUE-09 | LOW | 10.7.4 | 構造化data RAGの安全条件が構成パターン側では不足 | 読み取り専用、schema allowlist、parameter binding、SQL AST検査、tenant条件、row limit、timeout、cost上限、0行と失敗の区別を追記 | RESOLVED |
| ISSUE-10 | LOW | レビュー方法 | 初回レビューがrelease PDF binaryの全ページ目視検査ではない | 初回レビューの制約を明記。release PDF固定、全ページrender、page単位判定、修正後再検査を必須とするSkill、validator、CIを追加 | RESOLVED_BY_PROCESS |

## 検証予定

PRでは次を完了条件とします。

1. `validate-fact-check-skill.yml`が成功する。
2. `release-pdf.yml`が成功し、PDF artifactが生成される。
3. 生成されたPDF artifactに対して全ページをrenderする。
4. 全ページのvisual statusを確定する。
5. 目次、索引、内部参照、図、表、code blockに破綻がないことを確認する。

ISSUE-10は過去のrelease PDFを遡って検査済みにするものではありません。初回レビューの範囲制約を保持したまま、修正後PDFの検査を必須化する対応です。
