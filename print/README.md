# 印刷版PDF

章別Markdownを一冊へ統合し、LuaLaTeXでA4判の技術資料として組版します。
図版は元画像を変更せず、`docs`内で実際に参照されている画像だけを
ビルド時にグレースケール化します。同じ画像の複数回参照にも対応しています。

```sh
make -C print
```

生成物は `dist/rag-engineering-guide.pdf` です。

## GitHub Releaseへの添付

`.github/workflows/release-pdf.yml`は、PRと`main`へのpushでPDFを生成・検査します。
`main`へのpushで`VERSION`に対応するタグが未作成の場合は、検査後にタグとReleaseを作り、
`rag-engineering-guide.pdf`を添付します。

既存ReleaseのPDFを作り直す場合は、Actions画面からワークフローを手動実行し、
`release_tag`へ対象のタグを指定します。

生成PDFはActions実行結果の成果物としても14日間保持します。

## 追加図の生成画像

v1.1.7で追加した24点の図は、内蔵`image_gen`で生成した`assets/images/v6/*.png`へ
差し替えました。モデル名を指定する引数は使っていません。
日本語・数値・矢印を目視確認し、誤りがある画像は同じ生成ツールで修正しました。

- `imagegen-prompts.json`: 初回生成と修正のプロンプト
- `imagegen-manifest.json`: 採用画像の寸法・SHA-256・生成方法・確認記録
- `diagrams.json`と`figures.py`: 旧図の内容と数値例を照合するための記録

ビルド時は採用済みPNGを使います。旧SVGは資料として保持し、自動再生成しません。
画像を再生成して採用する場合は、目視確認後にmanifestのハッシュも更新してください。
