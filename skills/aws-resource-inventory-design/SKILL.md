---
name: aws-resource-inventory-design
description: AWS CDKスタックから、作成されるAWSリソース数・役割・責務境界・主要設定値を棚卸しして設計書としてまとめる。
---

# AWSリソース設計書（MemoRAG Bedrock MVP）

## 1. 対象と前提

- 対象スタック: `MemoRagMvpStack`
- 参照実装: `infra/lib/memorag-mvp-stack.ts`
- 実リソース数の根拠: `infra/test/__snapshots__/memorag-mvp-stack.snapshot.json`
- デプロイ前提:
  - サーバレス構成（VPC / NAT / RDS / OpenSearch なし）
  - S3 Vectors をカスタムリソース経由で作成

## 2. AWSリソース数一覧（CloudFormation Type別）

| リソースタイプ | 個数 | 用途概要 |
|---|---:|---|
| `AWS::S3::Bucket` | 3 | アクセスログ、ドキュメント、フロント配信資産 |
| `AWS::S3::BucketPolicy` | 3 | S3バケットのアクセス制御 |
| `Custom::S3AutoDeleteObjects` | 3 | スタック削除時のオブジェクト自動削除 |
| `AWS::DynamoDB::Table` | 1 | 人手確認質問の保存 |
| `AWS::Lambda::Function` | 4 | API実行、S3 Vectors作成、CDK補助Lambda |
| `AWS::Logs::LogGroup` | 4 | Lambda/APIアクセスログ |
| `AWS::IAM::Role` | 4 | 各Lambda実行ロール |
| `AWS::IAM::Policy` | 3 | Lambdaに付与する権限ポリシー |
| `AWS::CloudFormation::CustomResource` | 1 | S3 Vectors index作成トリガ |
| `AWS::ApiGatewayV2::Api` | 1 | HTTP APIエンドポイント |
| `AWS::ApiGatewayV2::Integration` | 2 | `/` と `/{proxy+}` のLambda連携 |
| `AWS::ApiGatewayV2::Route` | 2 | APIルーティング |
| `AWS::ApiGatewayV2::Stage` | 1 | `$default` ステージ（自動デプロイ） |
| `AWS::Lambda::Permission` | 2 | API GatewayからLambda呼び出し許可 |
| `AWS::CloudFront::OriginAccessControl` | 1 | CloudFront→S3のOAC |
| `AWS::CloudFront::Distribution` | 1 | SPA配信 + HTTPS終端 |

## 3. リソースごとの役割・境界・主要設定

## 3.1 Storage境界

### AccessLogsBucket（S3）
- **役割**: S3/CloudFrontアクセスログの集約先。
- **境界**: 監査ログ専用。業務データを置かない。
- **設定値**: SSE-S3、Public Block、SSL強制、ライフサイクル90日、`RemovalPolicy.DESTROY`。

### DocumentsBucket（S3）
- **役割**: 文書アップロード保管。
- **境界**: API LambdaのみRW。外部公開しない。
- **設定値**: SSE-S3、Public Block、SSL強制、アクセスログ出力先=AccessLogsBucket。

### FrontendBucket（S3）
- **役割**: SPA静的配信アセット格納。
- **境界**: CloudFront OAC経由で配信、直接公開しない。
- **設定値**: SSE-S3、Public Block、SSL強制、アクセスログ出力あり。

## 3.2 Data境界

### HumanQuestionsTable（DynamoDB）
- **役割**: 人手確認が必要な質問を記録。
- **境界**: API Lambda経由でのみ操作。
- **設定値**:
  - PK: `questionId` (String)
  - 課金: `PAY_PER_REQUEST`
  - PITR: 有効
  - `RemovalPolicy.DESTROY`

## 3.3 Compute/Integration境界

### ApiFunction（Lambda）
- **役割**: チャットAPIの本体処理。
- **境界**: HTTP APIからのみ呼ばれ、S3/DynamoDB/Bedrock/S3Vectorsにアクセス。
- **設定値（主要）**:
  - Runtime: `nodejs22.x` / ARM64
  - Memory: 1024MB
  - Timeout: 60秒
  - Env: `DOCS_BUCKET_NAME`, `QUESTION_TABLE_NAME`, `VECTOR_BUCKET_NAME`, `DEFAULT_MODEL_ID`, `EMBEDDING_MODEL_ID`, `EMBEDDING_DIMENSIONS`, `MIN_RETRIEVAL_SCORE=0.20`
  - IAM追加権限: `bedrock:InvokeModel*`, `s3vectors:{Put,Query,Get,Delete,List}Vectors`（`*` リソース）

### S3VectorsProviderFn（Lambda）
- **役割**: デプロイ時にS3 Vectors indexを作成/更新/削除するカスタムリソースハンドラ。
- **境界**: 実行契機はCloudFormationのみ（業務APIパス外）。
- **設定値**:
  - Runtime: `nodejs22.x` / ARM64
  - Timeout: 2分
  - IAM: `s3vectors:*` on `*`

### S3VectorsResources（CloudFormation CustomResource）
- **役割**: ベクトルバケットと2つのindexを宣言的に管理。
- **境界**: インフラ作成時のみ有効。
- **設定値**:
  - `vectorBucketName=memorag-${ACCOUNT}-${REGION}-${suffix}`
  - `indexNames=[memory-index, evidence-index]`
  - `dimension=embeddingDimensions`（既定1024）
  - `distanceMetric=cosine`

### HttpApi / Stage / Route / Integration（API Gateway v2）
- **役割**: 外部HTTP受付とLambdaプロキシ統合。
- **境界**: 入口はHTTP API、アプリ責務はLambda内。
- **設定値**:
  - Stage: `$default`, `autoDeploy=true`
  - Route: `/` と `/{proxy+}` のANY
  - CORS: Origin `*`, Header `Content-Type`, Method `GET/POST/DELETE/OPTIONS`, MaxAge 1日
  - Access Log: CloudWatch LogsへJSON形式出力

## 3.4 Delivery境界

### FrontendDistribution（CloudFront）
- **役割**: フロント配信、HTTPS化、SPAフォールバック。
- **境界**: 表層配信レイヤ。API処理は持たない。
- **設定値**:
  - デフォルトオブジェクト: `index.html`
  - OAC: 有効（S3直接公開なし）
  - Viewer Protocol: HTTP→HTTPSリダイレクト
  - TLS最小: `TLS_V1_2_2021`
  - エラーフォールバック: 403/404→`/index.html` を200で返却
  - ログ: AccessLogsBucketへ出力

## 4. 責務境界（責任分離の定義）

- **CloudFront/S3(Frontend)**: 静的配信責務。
- **API Gateway**: 入口制御とHTTPルーティング責務。
- **ApiFunction**: RAG業務ロジック責務。
- **S3 + DynamoDB**: 永続化責務（文書/質問履歴）。
- **S3 Vectors + CustomResource**: ベクトルindexの作成・検索責務。
- **Bedrock**: 推論・埋め込み責務（モデル実行）。
- **CloudWatch Logs**: 監査/運用観測責務。

## 5. セキュリティ境界と注意点

- S3バケットは全てPublic Block + SSL強制。
- Frontend配信はCloudFront OAC経由。
- IAMは一部ワイルドカード権限（Bedrock/S3Vectors）を使用しており、MVP後にARN絞り込みが必要。
- 認証認可（Cognito/OIDC）とWAFはMVPスコープ外。商用化時に追加必須。

## 6. 変更時チェックリスト

- `embeddingDimensions` 変更時は API環境変数 `EMBEDDING_DIMENSIONS` とS3Vectors index次元の一致を確認。
- `defaultModelId` / `embeddingModelId` 変更時は、対象リージョンでのBedrockモデル有効化を確認。
- CORS緩和（`*`）を継続するか、公開範囲に応じて許可Originを絞るかを判断。
- `RemovalPolicy.DESTROY` はMVP前提。本番では `RETAIN` 検討。
