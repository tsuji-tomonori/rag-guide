# 22 検索対応学習の設計空間

## 組み込み情報

- 出力ファイル: `assets/images/v3/22-ra-llm-design-space.png`
- 対象Markdown: `docs/9.失敗パターンに応じて高度化する/9.2.RA-LLM／retrieval-aware training.md`
- 挿入位置: `## 9.2.2 主な構成の違い`の比較表後
- 代替テキスト: `入力追加型、FiD型、REALM型、RETRO型の検索結合位置と運用負荷の比較`

## 生成プロンプト

Use case: scientific-educational
Asset type: 日本語RAG技術ガイド内の設計比較図
Primary request: 検索結果を言語モデルへ結合する位置が、入力追加型、FiD型、REALM型、RETRO型で異なり、結合が強いほど学習と運用の管理対象が増えることを比較する図を作る。
Scene/backdrop: オフホワイト `#F7F6F1`。
Style/medium: ベクトル風の4カラム設計比較。モデル内部は簡略化した層で示す。
Composition/framing: 16:9横長、1920×1080。四辺に120px相当の安全余白。4カラムに各方式の小さな構成図。下部に左から右へ伸びる「モデルとの結合」「運用負荷」の2本の軸。右上にページ番号。
Color palette: `#F7F6F1`、`#2B3A4A`、`#5E7E96`、`#9AA4AD`、淡いブルーグレーのみ。
Typography: Noto Sans JP相当。
Text (verbatim): タイトル「検索対応学習は結合位置と学習対象で運用負荷が変わる」。方式「入力追加型」「FiD型」「REALM型」「RETRO型」。補助「入力で結合」「生成側で融合」「事前学習から検索」「モデル内部で頻繁に参照」。軸「モデルとの結合」「運用負荷」。ページ番号「22 / 28」。
Constraints: 4方式の結合位置の違いを模式的に描く。優劣順位ではなく運用上の違いとして表現する。日本語と固有名を正確に描画する。ロゴと透かしなし。
Avoid: 論文ロゴ、性能順位、派手な色、グラデーション、強い影、写真、3D。
