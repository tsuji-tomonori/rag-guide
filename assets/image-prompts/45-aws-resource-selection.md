# 図45: 要件からAWSリソースを選ぶ

- 出力先: `assets/images/v4/45-aws-resource-selection.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.1.全体構成と選定の順序.md`
- 挿入位置: 「AWSリソースを選ぶ順序」の冒頭
- 代替テキスト: 運用範囲、文書、検索、生成の順にAWSリソースを選ぶ図
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の横長インフォグラフィック。背景はオフホワイト`#F7F6F1`、文字はディープネイビー`#2B3A4A`、アクセントはくすんだ青`#5E7E96`、補助図形は淡いブルーグレーだけを使う。

「要件からAWSリソースを選ぶ」をタイトルにし、左から右へ四つの問いを配置する。

1. 「どこまで運用を委ねるか」：Managed Knowledge BaseとCustomer-managed Knowledge Base
2. 「文書は何を含むか」：Default parserとBDA / FM parser
3. 「何を検索したいか」：S3 Vectors、OpenSearch Serverless、Aurora PostgreSQL
4. 「生成・根拠制御をどうするか」：RetrieveAndGenerate、Retrieve→Rerank→Converse、AgenticRetrieveStream

最下部に「最小構成を固定評価データで比較し、要件を満たした構成だけを採用」と表示する。文字を大きくし、矢印を文字と交差させない。写真、人物、AWS公式ロゴ、強い影、グラデーション、余分な説明文は使わない。
