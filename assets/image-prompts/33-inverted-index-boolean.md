# 33 転置インデックスとBoolean検索

## 組み込み情報

- 出力ファイル: `assets/images/v4/33-inverted-index-boolean.png`
- 対象Markdown: `docs/4.質問に合う根拠を探す/4.3.Sparse retrieval.md`
- 挿入位置: `4.3.1 Sparse retrievalの役割と転置index`
- 代替テキスト: `文書から語ごとの文書IDリストを作り、Boolean条件の共通部分から候補を得る転置インデックス`

## 生成プロンプト

```text
Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内のアルゴリズム図解
Primary request: 転置インデックスとBoolean検索の内部処理を、数式なしで初学者にも分かるように示す。
Scene/backdrop: 画面端まで連続するオフホワイト #F7F6F1。内側の白いページ枠や外枠は作らない。
Style/medium: 平面的なベクトル風教育図。細いネイビー線、淡いブルーグレーのカード、控えめなアイコン。
Composition/framing: 16:9横長。左から「文書」「語→文書ID」「Boolean条件」「候補」の4段階。質問は「ログイン AND ERR-1042」。
Text (verbatim): 「転置インデックスは語から文書を逆引きする」「文書」「語→文書ID」「Boolean条件」「候補」「ログイン」「ERR-1042」「手順」「ログイン AND ERR-1042」「ログイン：D1・D3」「ERR-1042：D1・D2」「共通部分：D1」「AND：両方を含む」「OR：どちらかを含む」。
Constraints: 数式なし。ログインのlistはD1・D3、ERR-1042のlistはD1・D2、AND結果はD1だけ。語から文書IDへ逆引きする。日本語・英数字を正確に描画。ロゴ、透かし、ページ番号なし。
Avoid: ベクトル空間、ニューラルネットワーク、確率表現、派手な色、グラデーション、強い影、写真、3D。
```

生成後、右側集合見出しの誤記だけを `ERR-1042 D1・D2` へ修正し、他の要素を維持した。
