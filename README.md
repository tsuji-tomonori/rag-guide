# RAGエンジニアガイド

検索拡張生成（RAG）を設計・実装・評価・運用するための日本語ガイドです。

## 本文の正本

本文の正本は [`docs/`](docs/) 配下の章別Markdownです。内容を変更するときは、
`docs/` を直接更新してください。印刷版PDFもこのディレクトリを入力として生成します。

本文の章・節・小節の正本は [`docs/章構成.md`](docs/章構成.md) です。

## 目的別の読む順

- **最初に作る**：第1章で採用条件、第2章で全体像、第3章から第6章で実装契約、第10章でAWSへの対応を確認します。
- **品質を改善する**：第2章で失敗工程を特定し、第7章で評価契約を作り、対象工程の章へ戻ります。
- **安全性を審査する**：第1章で適用境界、第8章で認可・監査・可用性・費用、第7章で公開条件を確認します。
- **高度化を検討する**：第7章で基準構成の失敗を再現してから、第9章の比較表で最小の候補を選びます。

本文の主線は実務上の判断と手順です。「研究上の位置づけ」と明記した段落は、方式の由来、評価条件、限界を確認したい読者向けの補足です。

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

`handson/aws-rag/`には、AWS CloudShellからAmazon Bedrock Knowledge Bases、S3 Vectors、S3、Converseを構築するAstro Starlight教材があります。各操作の直後にread-onlyの検証コマンドを実行し、期待状態を確認してから次へ進む構成です。

- 公開先: <https://tsuji-tomonori.github.io/rag-guide/>
- ローカル実行: `cd handson/aws-rag && npm ci && npm run dev`
- build検証: `cd handson/aws-rag && npm run build`
