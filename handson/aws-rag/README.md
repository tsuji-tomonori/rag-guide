# AWS RAG Hands-on site

AWS規範ガイダンス「RAGのオプションとアーキテクチャ」の日本語PDFをAWS CLIから`curl`で取得し、Amazon Bedrock Knowledge Bases、S3 Vectors、S3、ConverseでRAGを構築するAstro Starlight教材です。

## Local development

```bash
cd handson/aws-rag
npm ci
npm run dev
```

## Validation

```bash
npm run build
```

GitHub Pagesでは`https://tsuji-tomonori.github.io/rag-guide/`へ公開します。`main`へのpushで`.github/workflows/deploy-handson-pages.yml`がbuildとdeployを行います。

## ガイド本文の生成とコピー

`npm run dev` / `build` / `check` の前に `scripts/prepare-guide.mjs` が動きます。
リポジトリ全体をチェックアウトして実行してください。章の読み順は `docs/章構成.md` を参照し、
本文は章内のMarkdownを結合します。ローカルMarkdownリンクはWebページ・節アンカーへ変換し、
参照する画像だけをコピーします。元のMarkdown・画像・PDF生成処理は変更しません。

ガイドのコピーはページのMarkdown本文（タイトル付き、frontmatterなし）です。
ハンズオンのMDXは表示されたコンポーネントも含めてMarkdownへ変換するため、
コマンド・設定表・成功条件をコピーできます。リンクと画像URLは絶対URLへ変換します。
クリップボードが拒否された場合は、手動選択できるダイアログを表示します。

ビルド後の検証（Node.js 24）:

```bash
npm run test:site
```

全ページの内部リンク・節アンカー・図版・コピーボタン、コマンドの文字列保存、
表のMarkdown変換と、日本語・英数字・略語8語のPagefind検索を検証します。
`npm run dev` 実行中に正本 `docs/` を編集した場合は、開発サーバーを再起動して再生成してください。
