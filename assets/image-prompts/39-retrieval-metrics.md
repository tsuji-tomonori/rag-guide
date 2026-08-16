# 39 検索評価指標

## 組み込み情報

- 出力ファイル: `assets/images/v4/39-retrieval-metrics.png`
- 対象Markdown: `docs/7.品質を評価し改善する/7.4.Retrieval評価.md`
- 挿入位置: `7.4.2 candidate recallとranking quality`
- 代替テキスト: `同じ順位表に対してPrecision、Recall、MRR、MAP、nDCGが見る位置を比較する図`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内の検索評価指標図
Primary request: 同じ順位リストを使い、Precision@k、Recall@k、MRR、MAP、nDCGが何を見るかを、数式なしで示す。
Scene/backdrop: 画面端までオフホワイト #F7F6F1。ネイビー、くすんだ青、淡い黄。
Composition/framing: 16:9横長。左に1位から5位の順位リスト。候補を主要根拠・補助根拠・無関係で色分け。右に5カード。
Text (verbatim): 「検索指標は順位表の違う側面を見る」「1位」「2位」「3位」「4位」「5位」「主要根拠」「補助根拠」「無関係」「Precision@k：上位k件の正解密度」「Recall@k：必要根拠をどれだけ回収」「MRR：最初の正解が何位か」「MAP：各正解位置のPrecisionを平均」「nDCG：重要な根拠ほど上位を評価」「k・正解単位・関連度段階を評価前に固定する」。
Constraints: 数式なし。MRRとMAP、PrecisionとRecallを区別。nDCGは段階的関連度と順位を扱う。日本語・英数字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: パーセント値、具体的スコア、派手な色、グラデーション、写真、3D。
```
