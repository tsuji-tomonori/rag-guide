# 図44: AWS RAGの四工程と二層

- 出力先: `assets/images/v4/44-aws-four-stages-two-layers.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.1.構成方式を選ぶ.md`
- 挿入位置: 「10.1.1. 四工程と二層をAWSリソースへ対応付ける」の対応表の直後
- 代替テキスト: 四工程と二層にAWSサービスとリソースを対応付けた構成図

## 生成プロンプト

日本語の技術書に掲載する、AWS上のAdvanced RAGアーキテクチャの横長インフォグラフィック。16:9、白背景、濃紺とAWSオレンジをアクセントにした端正なフラットデザイン。左から右へ「検索前処理」「検索」「検索後処理」「生成」の四工程を大きな矢印で接続し、上下を「Batch Layer」と「Real-time Layer」の二層に分ける。

Batch Layerには、Amazon S3、Bedrock Knowledge Basesのdata source、parser、chunking、embedding、S3 VectorsまたはOpenSearch Serverless、評価データと回帰評価を配置する。Real-time Layerには、query変換・metadata filter、RetrieveまたはAgenticRetrieveStream、Bedrock Rerank、LambdaまたはStep FunctionsによるEvidence Set、ConverseとGuardrails、citation検査を配置する。二層を横断する細い帯としてIAM、KMS、CloudWatch、traceを置く。

各要素はAWS公式アイコンの模倣ではなく、サービス名が読める簡潔なカードと抽象アイコンで表現する。工程と層の境界、データの流れ、Batchで作成したindexをReal-time検索が利用する関係が一目で分かること。過度な装飾、立体表現、写真、人物、余分な説明文は不要。日本語ラベルを正確に、書籍本文と同じ用語で表示する。
