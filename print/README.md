# 印刷版PDF

章別Markdownを一冊へ統合し、LuaLaTeXでA4判の技術資料として組版します。
図版は元画像を変更せず、`docs`内で実際に参照されている画像だけを
ビルド時にグレースケール化します。同じ画像の複数回参照にも対応しています。

```sh
make -C print
```

生成物は `dist/rag-engineering-guide.pdf` です。

必要なものはPython 3、LuaLaTeX、latexmk、makeindex、SVG入力に対応したFFmpeg、
Noto CJK・DejaVu・TeX Gyreフォントです。TeXのキャッシュは`print/build/tex-cache`へ保存します。

## 本文・図表・索引・参考文献

- 本文は`docs`の章番号順に結合します。構成は第1〜10章、参考文献、索引、奥付です。
- `diagrams.json`と`figures.py`から、処理手順や数値例のSVG図を再生成します。
- 表は3列以内に分け、10.5ptの折り返しセルで組版します。改ページ時は見出しを繰り返します。
- `references.json`は本文の外部参照をすべて収録します。本文の文献番号から該当項目へ移動できます。
- `terms.json`は索引に添える短い説明、`index-readings.json`は和語の読みを管理します。
  本文の太字用語と具体的な技術名を索引化し、初出・見出し・強調箇所を中心に参照先を付けます。
- `print/build/publication-audit.json`に、文献数、索引語数、太字用語の収録漏れを記録します。

ビルド前に、書誌情報、索引、図番号、表の列数、コード保持、図中の計算例を検査します。
検査だけを実行する場合は、リポジトリ直下で次のコマンドを使います。

```sh
python3 -m unittest discover -s print -p 'test_*.py' -v
```

今回の編集判断と資料確認の範囲は`REVIEW-2026-09-05.md`に記録しています。
この記録はPDF本文には含めません。

## GitHub Releaseへの添付

`.github/workflows/release-pdf.yml`は、GitHub Releaseが公開されたときに
対象タグの内容からPDFを生成し、`rag-engineering-guide.pdf`としてReleaseへ添付します。
同じタグに対して再実行した場合は、既存のPDFを新しい生成物で置き換えます。

既存ReleaseのPDFを作り直す場合は、Actions画面からワークフローを手動実行し、
`release_tag`へ対象のタグを指定します。

`main` ブランチへのpushでもPDFを生成し、Actions実行結果の成果物として14日間保持します。
このトリガーではGitHub Releaseを新規作成しません。
