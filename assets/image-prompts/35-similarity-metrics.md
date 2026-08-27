# 35 類似度尺度

## 組み込み情報

- 出力ファイル: `assets/images/v4/35-similarity-metrics.png`
- 対象Markdown: `docs/4.質問に合う根拠を探す/4.4.Dense retrieval.md`
- 挿入位置: `4.4.3 Query・document encodeとsimilarity metric`
- 代替テキスト: `コサイン類似度は向き、内積は向きと大きさ、L2距離は点間距離を見る比較`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内の距離尺度図
Primary request: コサイン類似度、内積、L2距離がベクトルの何を見ているかを、数式なしで同じ2本の矢印と点を使って比較する。
Scene/backdrop: 画面端までオフホワイト #F7F6F1。ネイビー、くすんだ青、淡いブルーグレー。
Composition/framing: 16:9横長。3カードで、左は矢印の向きと角度、中央は向きと長さ、右は2点間の直線距離を強調。
Text (verbatim): 「類似度尺度は“近い”の見方が違う」「コサイン類似度」「内積」「L2距離」「向きの近さ」「向きと大きさ」「点どうしの距離」「質問」「文書A」「文書B」「モデル学習時の尺度と正規化に合わせる」「類似度は正答確率ではない」。
Constraints: 数式なし。3尺度を視覚的に区別し、どれか一つを常に最良と描かない。日本語を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: 3次元グラフ、複雑な座標値、確率ゲージ、派手な色、グラデーション、写真、3D。
```
