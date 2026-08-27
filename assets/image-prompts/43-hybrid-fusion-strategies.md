# 43 ハイブリッド検索の統合方式

## 組み込み情報

- 出力ファイル: `assets/images/v4/43-hybrid-fusion-strategies.png`
- 対象Markdown: `docs/4.質問に合う根拠を探す/4.5.Hybrid retrieval.md`
- 挿入位置: スコア正規化とRRFの説明後
- 代替テキスト: `BM25とDenseの結果を、正規化後の重み付き融合または順位だけを使うRRFで統合する比較`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内のハイブリッド検索比較図
Primary request: BM25とDense retrievalの結果を統合するとき、score normalization後のweighted fusionと、順位だけを使うRRFがどう違うかを数式なしで示す。
Scene/backdrop: 画面端まで均一なオフホワイト #F7F6F1。ネイビー、くすんだ青、青灰、淡い黄。
Composition/framing: 16:9横長。左にBM25結果とDense結果の二つの順位表。中央から上下二経路へ分岐。上は「生スコア→正規化→重み付き融合」、下は「順位だけ→RRF」。右にそれぞれ統合Top-kを置く。未調整の生スコアを直接足さない注意を下部へ置く。
Text (verbatim): 「BM25」「Dense」「生スコアは尺度が違う」「正規化」「重み付き融合」「評価で重みを決める」「順位だけを使う」「RRF」「統合 Top-k」「未調整の生スコアを直接足さない」。
Constraints: 数式なし。weighted fusionは必ず正規化後に描く。RRFは生スコアではなく順位を使うことを明確にする。二方式は評価データで比較する代替経路として示し、一方が常に優れるとは描かない。日本語・英字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: 生スコアの直接加算、勝敗表現、写真、3D、派手な色、グラデーション。
```
