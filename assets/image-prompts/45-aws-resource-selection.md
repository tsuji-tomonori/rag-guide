# 図45: 要件からAWSリソースを選ぶ

- 出力先: `assets/images/v4/45-aws-resource-selection.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.1.構成方式を選ぶ.md`
- 挿入位置: 「10.1.2. リソースをサービス名ではなく要件から選ぶ」の説明文の直後
- 代替テキスト: 要件からAWSリソースを段階的に選ぶ判断フロー

## 生成プロンプト

日本語の技術書に掲載する、RAG要件からAWSリソースを選択する横長の判断フロー図。16:9、白背景、濃紺・青緑・AWSオレンジを使ったフラットで整理されたデザイン。左端の「要件」から右へ、次の五段階を太い矢印で接続する。

1. 「運用責任」: Managed Knowledge Base / カスタマーマネージド型
2. 「文書特性」: default parser / Bedrock Data Automation・foundation model parser
3. 「検索要件」: S3 Vectors（semantic）/ OpenSearch Serverless（hybrid）/ Aurora PostgreSQL（vector + relational）
4. 「制御粒度」: RetrieveAndGenerate / Retrieve → rerank → Converse / AgenticRetrieveStream
5. 「独自処理の実行」: Lambda / Step Functions / ECS on Fargate

各段階の下に、判断軸を短く表示する。「運用委任か直接制御か」「text中心かlayout・multimodalか」「semanticだけか語彙一致も必要か」「標準引用かEvidence Setか」「短時間かworkflowか長時間containerか」。最終到達点は「構成候補を固定し、同じ評価データで比較」。AWS公式アイコンの模倣ではなく、読みやすいカード、分岐線、抽象アイコンを使う。サービス一覧の羅列ではなく選択順序が一目で分かること。日本語ラベルを正確に表示し、写真、人物、装飾的な背景、細かすぎる注釈は使わない。
