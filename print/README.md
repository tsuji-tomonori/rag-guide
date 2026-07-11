# 印刷版PDF

章別Markdownを一冊へ統合し、LuaLaTeXでA4判の技術資料として組版します。
図版は元画像を変更せず、`docs`内で実際に参照されている画像だけを
ビルド時にグレースケール化します。同じ画像の複数回参照にも対応しています。

```sh
make -C print
```

生成物は `dist/rag-engineering-guide.pdf` です。

## GitHub Releaseへの添付

`.github/workflows/release-pdf.yml`は、GitHub Releaseが公開されたときに
対象タグの内容からPDFを生成し、`rag-engineering-guide.pdf`としてReleaseへ添付します。
同じタグに対して再実行した場合は、既存のPDFを新しい生成物で置き換えます。

既存ReleaseのPDFを作り直す場合は、Actions画面からワークフローを手動実行し、
`release_tag`へ対象のタグを指定します。
