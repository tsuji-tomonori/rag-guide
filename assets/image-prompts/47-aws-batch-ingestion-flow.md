# 図47: Batch Layerの取り込みフロー

- 出力先: `assets/images/v4/47-aws-batch-ingestion-flow.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.2.Batch Layerを構成する.md`
- 挿入位置: 「原文から公開索引までをつなぐ」の冒頭
- 代替テキスト: Batch Layerで原文を解析し、分割、埋め込み、索引公開する流れ
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の工程図。図44をスタイル参照とし、オフホワイト、ディープネイビー、くすんだ青、淡いブルーグレーだけを使う。タイトルは「Batch Layer：原文から公開索引まで」。

左から右へ五つの大きなカードを矢印で接続する。

1. 「正本／Amazon S3／原文・版・Metadata」
2. 「解析／Default / BDA / FM／Text・表・図」
3. 「分割／Chunking／検索単位を作る」
4. 「埋め込み／Bedrock Embedding／Model・次元・型」
5. 「索引／S3 Vectors / OpenSearch／検索可能な版」

最下部に全幅で「評価に合格した索引だけをReal-time Layerへ公開」と表示する。各ラベルをカード内へ収め、矢印を文字と交差させない。AWS公式ロゴ、写真、人物、グラデーション、余分な工程は使わない。
