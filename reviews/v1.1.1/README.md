# v1.1.1 ファクトチェック記録

## 対象

- repository: `tsuji-tomonori/rag-guide`
- tag: `v1.1.1`
- release commit: `1cf0628d4b3dd71fa7bb7097dc6620eef9fcc5ba`
- review date: 2026-07-31
- review workbook: `rag_guide_v1_1_1_factcheck_review.xlsx`

## 重要な範囲制約

初回のExcelレビューは、v1.1.1 PDFの生成元である`docs/`を本文相当として確認した結果です。release PDF binaryの全ページ画像化と目視確認を完了したものではありません。この制約を解消せずに「PDFを全ページ確認済み」と表現してはいけません。

本PRでは、今後のレビューが同じ状態にならないよう、`skills/rag-pdf-fact-check/`を追加しました。このSkillは、release PDFのSHA-256固定、全ページrender、pageごとの目視判定、修正後PDFの再検査を完了条件にしています。

## 結果

初回レビューでは109件のFactCheck行と10件のFindingを作成しました。Findingへの対応状況は[Finding解決記録](finding-resolution.md)にまとめています。

本文修正後は、PRのPDF build artifactを対象にSkillを再実行し、`PDFInspection`を全ページ分作成してからrelease判断を行います。
