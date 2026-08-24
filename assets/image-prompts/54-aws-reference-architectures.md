# 図54: 要件別Reference Architecture

- 出力先: `assets/images/v4/54-aws-reference-architectures.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.1.全体構成と選定の順序.md`
- 挿入位置: 「比較する五つの構成パターン」の冒頭
- 代替テキスト: 要件別に五つのAWS RAGリファレンス構成を比較した図
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の五列比較図。図44をスタイル参照とし、オフホワイト、ディープネイビー、くすんだ青、淡いブルーグレーだけを使う。タイトルは「要件別のAWS RAG構成」。

横一列に次の五枚のカードを均等に配置する。

- 「A 最大限マネージド／Managed KB／運用対象を減らす」
- 「B Semantic中心／KB＋S3 Vectors／意味類似・大量Vector」
- 「C Hybrid中心／KB＋OpenSearch／Keyword＋Vector」
- 「D 制御重視／直接検索＋Evidence／独自Fusion・監査」
- 「E Agentic／AgentCore＋Tool／複数Step・Memory」

カード下に「運用を委ねる　←　利用者が制御する範囲　→　機能を拡張」、最下部に「要件を満たす最小構成を固定評価データで選ぶ」と表示する。AWS公式ロゴ、写真、人物、グラデーション、細かい箇条書きを使わない。
