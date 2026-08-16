# 42 質問変換アルゴリズム

## 組み込み情報

- 出力ファイル: `assets/images/v4/42-query-transformation-algorithms.png`
- 対象Markdown: `docs/4.質問に合う根拠を探す/4.2.Query変換.md`
- 挿入位置: Query decompositionの説明後
- 代替テキスト: `同じ元質問をQuery rewriting、expansion、decomposition、HyDEで変換して検索する違い`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内の質問変換比較図
Primary request: 一つの元質問からQuery rewriting、query expansion、query decomposition、HyDEへ分岐し、検索へ渡すものがどう変わるかを数式なしで示す。
Scene/backdrop: 画面端まで均一なオフホワイト #F7F6F1。ネイビー、くすんだ青、青灰、淡い黄。
Composition/framing: 16:9横長。左に元質問カード、中央に四つの方式カード、右に検索索引。各方式カードは入力をどう変え、何を検索へ渡すかを一例で示す。HyDEの仮文書には「最終回答ではない」と注意を添える。
Text (verbatim): 「元の質問」「昨日からログインできない」「Query rewriting」「単独で読める検索文へ」「Query expansion」「関連語を加える」「Query decomposition」「小質問へ分ける」「HyDE」「仮の回答文を作る」「最終回答ではない」「検索」「対象・期間・否定・版を変えない」。
Constraints: 数式なし。四方式の目的を混同しない。書き換えは意図保持、展開は語の追加、分解は複数の小質問、HyDEは検索用の仮文書として描く。HyDEの生成文を事実確定や最終回答に見せない。日本語・英字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: 会話UI、写真、3D、派手な色、グラデーション、方式間の優劣を示す順位。
```

生成後、外周背景だけを均一な `#F7F6F1` へ修正し、四つの分岐と注意書きを維持した。
