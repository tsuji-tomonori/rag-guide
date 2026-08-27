# 図48: Vector Storeの選び分け

- 出力先: `assets/images/v4/48-aws-vector-store-choice.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.2.Batch Layerを構成する.md`
- 挿入位置: 「Vector Storeを選ぶ」の冒頭
- 代替テキスト: S3 VectorsとOpenSearch Serverlessを検索要件から選び分ける図
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の二列比較図。図44をスタイル参照とし、オフホワイト、ディープネイビー、くすんだ青、淡いブルーグレーだけを使う。タイトルは「Vector Storeの選び分け」。

左列は「S3 Vectors／Semantic中心」とし、「意味類似を探す」「Metadataは制約内」「変動・低頻度も比較」「運用範囲を小さく」を配置する。

右列は「OpenSearch Serverless／Hybrid中心」とし、「Keyword＋Vector」「Metadata・Analyzerを制御」「高頻度・低Latencyを比較」「運用範囲は広い」を配置する。

最下部に「同じ質問・Traffic・評価指標で品質と費用を比較」と表示する。文字を正確に大きくし、AWS公式ロゴ、写真、人物、グラデーション、架空の数値、細かい脚注を使わない。
