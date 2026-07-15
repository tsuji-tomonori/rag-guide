# RAGエンジニアガイド

検索拡張生成（RAG）を設計・実装・評価・運用するための日本語ガイドです。

## 本文の正本

本文の正本は [`docs/`](docs/) 配下の章別Markdownです。内容を変更するときは、
`docs/` を直接更新してください。印刷版PDFもこのディレクトリを入力として生成します。

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
