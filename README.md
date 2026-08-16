# RAGエンジニアガイド

検索拡張生成（RAG）を設計・実装・評価・運用するための日本語ガイドです。

## 本文の正本

本文の正本は [`docs/`](docs/) 配下の章別Markdownです。内容を変更するときは、
`docs/` を直接更新してください。印刷版PDFもこのディレクトリを入力として生成します。

本文の章・節・小節の正本は [`docs/章構成.md`](docs/章構成.md) です。

`assets/images/v4/` には本文で参照する図版を、`assets/image-prompts/` には
それらを再生成するときのプロンプトを置いています。

## PDFを生成する

LuaLaTeX、Python 3、FFmpegを用意してから次を実行します。

```sh
make -C print
```

生成物は `dist/rag-engineering-guide.pdf` です。

## GitHub Release

GitHub Releaseを公開すると、[PDFリリースワークフロー](.github/workflows/release-pdf.yml)が
そのタグの `docs/` からPDFを生成し、Releaseへ `rag-engineering-guide.pdf` として添付します。
既存Releaseを作り直す場合は、Actions画面でワークフローを手動実行し、`release_tag`を指定してください。

`main` ブランチへのpushでも同じPDFを生成します。この場合はGitHub Releaseを新規作成せず、
Actions実行結果の成果物として14日間ダウンロードできます。

## AWS RAGハンズオン

`handson/aws-rag/`には、AWS CLIからAmazon Bedrock Knowledge Bases、S3 Vectors、S3、Converseを構築するAstro Starlight教材があります。各操作の直後にread-onlyの検証コマンドを実行し、期待状態を確認してから次へ進む構成です。

- 公開先: <https://tsuji-tomonori.github.io/rag-guide/>
- ローカル実行: `cd handson/aws-rag && npm ci && npm run dev`
- build検証: `cd handson/aws-rag && npm run build`
