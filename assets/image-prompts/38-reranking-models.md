# 38 再ランキングモデル

## 組み込み情報

- 出力ファイル: `assets/images/v4/38-reranking-models.png`
- 対象Markdown: `docs/5.根拠を選別・整形する/5.3.Reranking.md`
- 挿入位置: `5.3.1 Rank fusionとの違いとcross-encoder`
- 代替テキスト: `bi-encoder、cross-encoder、learning-to-rankが候補を取得・再評価してTop-kを選ぶ違い`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内の再ランキング図
Primary request: bi-encoder、cross-encoder、learning-to-rankの役割と処理の違いを、数式なしで示す。
Scene/backdrop: 画面端までオフホワイト #F7F6F1。ネイビーとくすんだ青。
Composition/framing: 16:9横長。左から候補取得、再評価、最終Top-k。bi-encoderは質問と文書を別々に符号化、cross-encoderは質問と候補を一緒に読む、learning-to-rankは特徴と人手ラベルから学習。
Text (verbatim): 「広く拾い、詳しく読んで、上位だけを残す」「Bi-encoder」「Cross-encoder」「Learning-to-rank」「質問」「文書」「別々に符号化」「候補N件」「質問＋候補を一緒に読む」「特徴量」「人手ラベル」「学習済み順位付け器」「Top-k」「候補にない根拠はrerankerでは戻せない」「精度・遅延・教師データで選ぶ」。
Constraints: 数式なし。first-stage retrieval、候補だけの再評価、教師データを使う学習を区別。RRFと混同しない。日本語・英数字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: LLMが新規文書を生成する表現、確率ゲージ、派手な色、グラデーション、写真、3D。
```
