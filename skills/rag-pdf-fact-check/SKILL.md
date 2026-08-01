---
name: rag-pdf-fact-check
description: RAG技術文書のリリースPDFを、X.X.X単位の原子的な主張へ分解し、一次情報の証跡、判定、修正案、全ページのPDF実体検査をExcelへ残す。PDF、技術ガイド、リリース文書のファクトチェック、要修正・要補足の抽出、修正後の再検証を依頼されたときに使用する。
---

# RAG PDF Fact Check

## 目的

リリースされたPDFそのものを対象に、内容の正確性、条件、時点、出典、用語、数値、図表、リンク、ページ表示を検証します。Markdownなどの生成元だけを確認して、PDFを検査したと表現してはいけません。

成果物は、第三者が「どの主張を、どの根拠で、いつ、どう判定したか」を追跡できるExcelと、必要に応じた本文修正、修正後PDFの再検査記録です。

## 必須入力

開始前に次を確定します。

- repositoryと対象ref：tag、release、commit SHAのいずれか
- 対象PDFの実体：release asset、workflow artifact、または指定ファイル
- PDFのSHA-256とpage count
- PDF生成元のcommit SHA
- レビュー時点と対象とする製品・標準・法令の時点
- 出力Excelの保存先

branch名だけで対象を固定しません。release名とtagが異なる場合は両方を記録します。PDFを取得できない場合は、生成元レビューとして限定し、PDF実体を検査したとは記録しません。

## 完了条件

次をすべて満たすまで完了にしません。

1. 対象PDF、tag、commit、SHA-256、page countを記録した。
2. PDFの全ページを画像化し、各ページを目視確認した。
3. 全章をX.X.X単位で走査し、外部検証可能な主張を原子的な行へ分けた。
4. 各主張に判定または「外部ファクトなし」を付けた。
5. 判定に使った一次情報と、確認日時、適用範囲を記録した。
6. 変動する値は、生応答またはスナップショットとSHA-256を保存した。
7. 要修正・要補足を本文へ反映し、該当FactCheck行へ解決commitを結び付けた。
8. 修正後PDFを再生成し、全ページを再検査した。
9. Excelの参照整合性を `scripts/validate_review.py` で検証した。
10. PDF build、link、figure、heading、Skill validatorのCIが成功した。

## 手順

### 1. 対象を不変に固定する

PDFを取得したら、次を保存します。

```sh
sha256sum <pdf>
pdfinfo <pdf>
```

ExcelのSummaryへ、repository、tag、release、commit SHA、asset名、取得URLまたはartifact ID、取得日時、PDF SHA-256、page countを記録します。

release assetを取得できる場合は、その実体を使います。ローカルで同じsourceから再生成したPDFを、release assetの代替として扱いません。両方を比較する場合は別のSHA-256として記録します。

### 2. PDFを全ページ画像化する

`PyMuPDF`を用意し、次を実行します。

```sh
python skills/rag-pdf-fact-check/scripts/inspect_pdf.py \
  path/to/document.pdf \
  --out-dir work/pdf-pages \
  --json work/pdf-inspection.json
```

各ページについて、少なくとも次を確認します。

- 文字切れ、重なり、はみ出し、欠落、文字化け
- 表、図、caption、脚注、数式、code blockの可読性
- 章・節番号、header、footer、page number
- 目次、索引、内部参照、外部URLの表示
- 空白ページ、重複ページ、ページ順
- 図の内容と本文の説明の整合

`inspect_pdf.py`は画像化しただけでは`PASS`を付けません。全ページを人またはvision modelが確認し、`PDFInspection`の各行へ`PASS`または`FAIL`と所見を入力します。未確認ページが1ページでもあれば未完了です。

### 3. 文書構造をX.X.Xへ正規化する

章、節、小節を抽出します。

- H1：章
- H2：節
- H3：小節
- H3がない節：`X.X.0`
- H4以下：直近のX.X.Xへ所属させ、必要ならclaimを分ける

見出し行だけを1行にするのではなく、各X.X.Xに含まれる外部検証可能な主張を原子的に分けます。同じ小節に5個の独立した主張があれば5行作ります。

次は別のclaimに分けます。

- 製品が機能へ対応する
- 数値上限がNである
- 特定条件でのみ有効である
- 研究が改善を報告した
- 標準が統制を要求する
- 用語が一般標準である

定義、意見、設計上の提案、例示も、一般事実と本書独自の規約を分けます。本書独自の用語は「本書では」と明示されているか確認します。

### 4. 根拠を取得する

根拠の優先順位は次です。

1. 標準本文、法令、政府機関、公式API Reference、公式User Guide
2. 査読付き原著論文、学会公式ページ、出版社の正本
3. 公式release note、公式announcement、公式repository
4. 高品質な二次資料

製品仕様、対応region、価格、上限、API fieldなど変動する事実は、必ずレビュー当日に確認します。単一の公式ページだけでなく、User Guide、API Reference、release noteを突き合わせます。公式文書同士が矛盾する場合は、両方をEvidenceへ登録し、対象regionで最小のAPI疎通試験を行い、request、response、日時を保存します。

研究結果は、paperが実際に評価したtask、dataset、baseline、metric、条件へ限定します。「改善した」を一般化せず、どの条件で何と比較したかを記録します。

引用は必要最小限にし、Evidence Summaryは原則として要約します。原文の長い転載をExcelへ入れません。

### 5. 変動する値の証跡を保存する

引用件数、価格、対応model、region、service limit、benchmark leaderboardなどは`volatile=true`とします。次を必須にします。

- 取得元
- 取得時刻をUTCで記録
- 実際のqueryまたはrequest
- canonical ID
- 生応答またはsnapshotへの相対path
- 生応答のSHA-256
- 対象region、account条件、version

生応答を保存できない値は、本文の断定へ使いません。参考値として示す場合も、再現不能であることを明示します。

### 6. 判定する

FactCheckの判定は次のいずれかです。

- `SUPPORTED`：主張の範囲、条件、時点を根拠が直接支持する
- `SUPPORTED_WITH_CONDITIONS`：主張は概ね正しいが、条件、region、版、対象taskの明記が必要
- `NEEDS_SUPPLEMENT`：誤りとは言えないが、重要な前提、例外、残余リスク、出典が不足
- `NEEDS_CORRECTION`：根拠と矛盾する、または断定範囲が広すぎる
- `UNVERIFIABLE`：十分な一次情報を取得できない
- `NO_EXTERNAL_FACT`：本書の構成、例示、推奨、内部規約で、外部事実の判定対象ではない

`NO_EXTERNAL_FACT`を、調査省略の逃げ道にしません。製品名、数値、研究効果、標準要件、一般用語を含む場合は外部検証します。

severityは次を使います。

- `CRITICAL`：安全性、法令、権限、重大な誤実装へ直結する
- `HIGH`：主要設計判断を誤らせる
- `MEDIUM`：条件不足、古い仕様、再現性不足がある
- `LOW`：用語、表現、参照先、軽微な補足
- `NONE`：修正不要

### 7. Excelを作成する

Excelは`artifact_tool`で作成します。`openpyxl`を使用しません。列定義は `references/workbook-schema.md` に従います。

必須sheetは次です。

- `Summary`
- `FactCheck`
- `Findings`
- `Evidence`
- `PDFInspection`

見出しを固定し、filter、折り返し、適切な列幅、URL hyperlink、statusのdata validation、severityとstatusのconditional formattingを設定します。FactCheck、Findings、Evidenceには一意なIDを付けます。

FactCheckからEvidenceとFindingsをIDで参照します。セル内に根拠を貼り付けて参照関係を失わせません。

### 8. 要修正・要補足を反映する

`NEEDS_CORRECTION`と`NEEDS_SUPPLEMENT`をFindingsへ集約します。各Findingへ、現行記述、問題、根拠、推奨記述、影響範囲、severity、解決条件を記録します。

修正では次を守ります。

- 断定を弱めるだけで根拠不足を隠さない
- 対応region、version、時点、例外を明記する
- 公式文書同士の矛盾を黙って片方へ寄せない
- 独自用語は「本書では」と明示する
- 初期値と固定推奨値を区別する
- セキュリティ対策には残余リスクを示す
- file名、見出し、章構成、索引を同期する

修正commit、PR、変更fileをFindingへ記録します。

### 9. 修正後PDFを再検査する

本文修正後にPDFを再生成します。build成功だけで完了にしません。

1. 新PDFのSHA-256とpage countを記録する。
2. 全ページを再画像化する。
3. 全ページを目視確認する。
4. 変更箇所のpageと、前後pageのlayoutを重点確認する。
5. 目次、索引、内部参照、URL、図番号を確認する。
6. 旧PDFと新PDFを別のartifactとして記録する。

### 10. 検証する

レビューJSONを作る場合は、次を実行します。

```sh
python skills/rag-pdf-fact-check/scripts/validate_review.py review.json
```

次の状態では失敗にします。

- X.X.Xでないsection ID
- Evidence参照切れ
- Finding参照切れ
- volatile evidenceのsnapshotまたはSHA-256不足
- page countとPDFInspection行数の不一致
- 未確認ページ
- `NEEDS_CORRECTION`または`NEEDS_SUPPLEMENT`にFindingがない
- 解決済みFindingにcommitまたはPRの記録がない

## 禁止事項

- Markdownだけを読んで「PDFを全ページ確認した」と書く
- search snippetだけで判定する
- 取得日だけを残し、検索式や生応答を残さない
- 引用件数だけで方式の有効性を判断する
- 製品仕様を古い記憶で断定する
- 一つのFactCheck行へ複数の独立claimを詰め込む
- source URLだけをEvidenceとし、支持内容と適用条件を記録しない
- build成功をvisual inspectionの代替にする
- 未確認を`SUPPORTED`として埋める

## 出力時の報告

最終報告には次を含めます。

- 対象tag、commit、PDF SHA-256、page count
- FactCheck件数と判定内訳
- severity別Finding件数
- 修正したfileと主要変更
- 検証commandと結果
- 新PDFのSHA-256と全ページ検査結果
- branch、commit、PR
- 残った`UNVERIFIABLE`と理由
