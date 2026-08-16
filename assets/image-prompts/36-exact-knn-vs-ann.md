# 36 exact k-NNとANN

## 組み込み情報

- 出力ファイル: `assets/images/v4/36-exact-knn-vs-ann.png`
- 対象Markdown: `docs/4.質問に合う根拠を探す/4.4.Dense retrieval.md`
- 挿入位置: `4.4.4 ANN検索と切替条件`
- 代替テキスト: `exact k-NNが全件比較し、ANNが索引で候補を絞って一部だけ比較する違い`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内の探索アルゴリズム図
Primary request: exact k-NNの全件比較とANNの候補を絞る近似探索の違いを、数式なしで示す。
Scene/backdrop: 画面端までオフホワイト #F7F6F1。ネイビーとくすんだ青。
Composition/framing: 16:9横長。左は質問点から全ての文書点を比較、右は索引で近そうな領域へ導き一部候補だけを比較。双方からTop-kへ接続。
Text (verbatim): 「全件比較から近似探索へ切り替える」「exact k-NN」「ANN」「質問」「全件を比較」「索引で候補を絞る」「Top-k」「exact：基準となる結果・遅くなりやすい」「ANN：高速化・取りこぼしを測る」「一部の質問でexactとの差を確認」。
Constraints: 数式なし。ANNは索引を使い、全件比較の結果を品質基準にする。日本語と英数字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: HNSW・IVF・PQの詳細、確率ゲージ、派手な色、グラデーション、写真、3D。
```
