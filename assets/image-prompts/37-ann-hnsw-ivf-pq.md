# 37 HNSW・IVF・PQ

## 組み込み情報

- 出力ファイル: `assets/images/v4/37-ann-hnsw-ivf-pq.png`
- 対象Markdown: `docs/4.質問に合う根拠を探す/4.4.Dense retrieval.md`
- 挿入位置: `4.4.4 ANN検索と切替条件`
- 代替テキスト: `HNSWの階層グラフ、IVFのセル探索、PQのベクトル圧縮を比較する図`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内のANNアルゴリズム比較図
Primary request: HNSW、IVF、PQの内部の探し方・圧縮方法を、数式なしで比較する。
Scene/backdrop: 画面端までオフホワイト #F7F6F1。ネイビー #2B3A4A、くすんだ青 #5E7E96、補助 #9AA4AD。
Composition/framing: 16:9横長。3カード。HNSWは疎な上位層から密な下位層へ降りる。IVFは点をセルに分け近いセルだけを探索。PQは長いベクトルを区画へ分け短いコードへ置換。
Text (verbatim): 「ANN索引は探索範囲と保存量を減らす」「HNSW」「IVF」「PQ」「グラフをたどる」「近いセルを調べる」「ベクトルを短いコードへ圧縮」「入口」「上位層」「下位層」「質問」「探索セル」「非探索セル」「分割」「コード」「PQはIVFやHNSWと組み合わせることもある」「探索幅を広げるほどRecallと遅延が変わる」。
Constraints: 数式なし。HNSW、IVF、PQを明確に区別し、PQを排他的な三択として描かない。日本語・英数字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: 3D、確率ゲージ、派手な色、グラデーション、写真。
```
