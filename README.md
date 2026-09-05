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

## 本文をWebで読む

[ガイド本文](https://tsuji-tomonori.github.io/rag-guide/guide/)では、全10章・章構成・参考文献・索引を読めます。
左に章一覧、右にページ内目次を表示し、上の検索で本文とハンズオンを横断検索できます。
各ページの右上にMarkdownコピーボタンがあり、図はクリックまたは「図を拡大」で拡大できます。
トップページと本文の入口から、公開済みのPDFも引き続きダウンロードできます。

Web本文はビルド時に `docs/` と `docs/章構成.md` から生成します。
生成先 `handson/aws-rag/src/content/docs/guide/` と `public/guide-assets/` はGit管理しません。
本文や図版を修正すると、GitHub ActionsがWeb版を再生成・公開します。
PDFは従来どおり `docs/` を入力として、上記のPDF生成・Release手順で利用できます。

## 社内勉強会スライド

[社内勉強会の案内](https://tsuji-tomonori.github.io/rag-guide/seminar/)から、
30〜40分用・全30枚の[発表スライド](https://tsuji-tomonori.github.io/rag-guide/slides/rag-intro/)を開けます。
RAGとは何か、アーキテクチャ、検索を支える技術要素、評価と改善、機能要件、AWSでRAGを設計する、の6分類・26小節とまとめで構成します。
図はガイドの既存図を共有し、四工程と二層は一枚の論理構成図で確認できます。
四工程・二層を中心に、主要技術、評価・セキュリティ・非機能、AWSへつなぎます。
キーボード操作、全画面、目次、スライドごとのURL、印刷に対応します。
別ウィンドウの発表者画面には説明ノート・次のスライド・30分／40分の時間配分・タイマーを表示し、投影画面と同期します。

編集元は `handson/aws-rag/` 配下の次のファイルです。

- 内容・ノート・出典・時間配分: `src/data/rag-seminar.ts`
- 表示: `src/pages/slides/rag-intro.astro`
- 操作: `src/scripts/seminar.ts`
- スタイル: `src/styles/seminar.css`

本文 `docs/` の更新時にはスライドの説明・出典も見直してください。
`npm run build && npm run test:site` で既存ページに加えてスライド・時間配分・参照リンクを検証します。

## AWS RAGハンズオン

`handson/aws-rag/`には、AWS CLIからAmazon Bedrock Knowledge Bases、S3 Vectors、S3、Converseを構築するAstro Starlight教材があります。各操作の直後にread-onlyの検証コマンドを実行し、期待状態を確認してから次へ進む構成です。

- 公開先: <https://tsuji-tomonori.github.io/rag-guide/>
- ローカル実行: `cd handson/aws-rag && npm ci && npm run dev`
- build検証: `cd handson/aws-rag && npm run build`

### ハンズオンの完了チェック

各章の「こうなれば成功」には、ログで確認できる具体的な出力例と、確認項目ごとのチェックボックスがあります。結果確認コマンドの最後に表示される `[CHECK]` 行を実際の出力と照合し、確認できた項目を押してください。

章末の「次へ進む前のチェック」は、章内の成功条件と同期します。すべての項目を確認すると `OK!` が表示されます。チェック状態はブラウザのページ単位で保存されるため、途中でページを閉じても同じブラウザなら再開できます。
