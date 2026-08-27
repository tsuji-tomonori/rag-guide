# Image-gen prompt specification

全ページ共通: Use case `productivity-visual`。1920×1080相当の16:9、日本語の社内技術研修スライド。背景 `#F7F6F1`、文字 `#2B3A4A`、アクセント `#5E7E96`、補助文字 `#9AA4AD`。Noto Sans JP相当。フラットで精密なベクター図解、十分な安全余白、影・グラデーション・写真・紫・ピンク・オレンジなし。タイトルは左上、短い本文と図を中密度で配置。ページ番号は必ず右下に `<NN> / 13`。全ページで完全に同じテンプレート、配色、線幅、タイトル位置を使う。

ページ固有の画面文言と構図は `../deck.md` の各ページをそのまま使用する。日本語は一字一句正確に描画し、文字を追加・省略・言い換えない。図中ラベルもdeck記載の語だけを使う。

識別子: `RAG-TRAINING-2026-P<NN>` を画像外メタ情報として扱い、画面には表示しない。

## ページ別構図

1. 表紙。中央に要点タイトル、下にサブタイトルと4つの学習項目。右側に質問→根拠候補→根拠付き回答の小図。
2. LLM単体・検索・RAGの3カラム比較と、下部に4つの判断軸。
3. 左に一つの誤答、右へ4つの原因工程へ分岐する診断図。
4. 画面中央を横断する四工程パイプライン。各工程の下に入出力カード。
5. sourceからversioned indexまでのoffline factory図と、4つの設計要点。
6. sparseとdenseがhybridへ合流し、metadata filterを通る検索図。
7. 候補群がrerank・dedup・compressionを通って整列contextになる図。
8. 根拠から回答・引用・回答保留へ分岐する出力契約図。
9. 上段Offline、下段Onlineの二本レーン。中央にversioned index境界。
10. Stage 1→2→3の段階的ロードマップ。各段の下に追加条件。
11. 四工程のテスト表と右側にE2E公開ゲート。
12. 上段にS3→Bedrock Knowledge Base→Titan→S3 Vectors、下段にPython→Retrieve / RetrieveAndGenerate→Claude→回答・引用。
13. 四工程・二層・評価ゲート・AWSを4チェックカードでまとめ、下部にTakeaway。

