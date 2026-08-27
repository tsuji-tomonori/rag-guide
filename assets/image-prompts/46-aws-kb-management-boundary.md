# 図46: Knowledge Baseの管理範囲

- 出力先: `assets/images/v4/46-aws-kb-management-boundary.png`
- 使用箇所: `docs/10.AWSで設計・実装する/10.2.Batch Layerを構成する.md`
- 挿入位置: 「Knowledge Baseの管理範囲を選ぶ」の冒頭
- 代替テキスト: Managed Knowledge Base、Customer-managed Knowledge Base、直接構成の管理境界を比較した図
- 生成方法: image-gen 2.0

## 生成プロンプト

日本語の技術書に掲載する16:9の比較図。図44をスタイル参照とし、オフホワイト、ディープネイビー、くすんだ青、淡いブルーグレーだけを使う。タイトルは「Knowledge Baseは管理範囲で選ぶ」。

三つの縦列を均等に配置し、左から右へ利用者の制御度が高くなる矢印を置く。

- 「Managed Knowledge Base／AWSが広く管理」：取り込み・保存・索引、Hybrid検索、既定Embedding・Rerank、運用を減らす
- 「Customer-managed Knowledge Base／AWSと利用者で分担」：取り込み・検索API、Embeddingを選ぶ、Vector Storeを選ぶ、方式を選ぶ
- 「Knowledge Basesなし／利用者が構成」：Pipeline、複数Retriever、Evidence・検証、制御を最大化

最下部に「要件を満たす最も左の構成から始める」と表示する。日本語を正確に大きく表示し、AWS公式ロゴ、写真、人物、グラデーション、細かい注記、交差する矢印を使わない。
