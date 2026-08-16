# 40 RAG生成評価指標

## 組み込み情報

- 出力ファイル: `assets/images/v4/40-generation-metrics.png`
- 対象Markdown: `docs/7.品質を評価し改善する/7.6.Generation評価.md`
- 挿入位置: 章冒頭
- 代替テキスト: `質問、根拠、回答の主張、引用の対応に対して五つの生成評価観点を分ける図`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内の生成評価指標図
Primary request: Faithfulness、Answer Relevance、Citation Correctness、Citation Completeness、Answerabilityをどう区別するかを、数式なしで示す。
Scene/backdrop: 画面端までオフホワイト #F7F6F1。ネイビーとくすんだ青、淡い黄。
Composition/framing: 16:9横長。中央に「質問」「根拠D1・D2」「回答の主張1・主張2」「引用」の対応図。周囲に5つの評価カードを配置して評価対象へ結ぶ。
Text (verbatim): 「生成評価は“正しそう”を一つの点数にしない」「質問」「根拠 D1・D2」「主張1 [D1]」「主張2 [D2]」「Faithfulness：主張が根拠に支えられるか」「Answer Relevance：質問に答えているか」「Citation Correctness：引用先が主張を支持するか」「Citation Completeness：必要な主張に引用があるか」「Answerability：根拠不足なら保留できるか」「検索品質と生成品質を分けて測る」。
Constraints: 数式なし。FaithfulnessとCitation Correctness、Answer Relevanceと事実正確性を同一視しない。Answerabilityは根拠不足時の保留を含む。日本語・英数字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: 総合点だけのゲージ、派手な色、グラデーション、写真、3D。
```

生成後、外周背景だけを均一な `#F7F6F1` へ修正し、5カードと対応線を維持した。
