# Excel workbook schema

Skillが生成するExcelは、次の5 sheetを必須とします。列を削る場合は、情報が別の列または別sheetで追跡可能であることを確認します。

## Summary

| 列 | 内容 |
|---|---|
| Key | 項目名 |
| Value | 値 |
| Notes | 制約、取得方法、補足 |

最低限、repository、tag、release、source commit SHA、PDF asset、取得日時、旧PDF SHA-256、旧PDF page count、新PDF SHA-256、新PDF page count、レビュー日時、reviewer、FactCheck件数、Finding件数、未解決件数、制約を記録します。

## FactCheck

| 列 | 必須 | 内容 |
|---|---:|---|
| FactCheckID | yes | `FC-0001`形式の一意ID |
| Chapter | yes | 章番号 |
| Section | yes | `X.X.X`。H3がない節は`X.X.0` |
| Heading | yes | 小節見出し |
| SourceFile | yes | 生成元file |
| PDFPageStart | yes | PDF上の開始page |
| PDFPageEnd | yes | PDF上の終了page |
| Claim | yes | 一つの原子的な主張 |
| ClaimType | yes | product、research、standard、security、numeric、definition、internalなど |
| TemporalScope | no | 版、日付、region、対象task |
| Status | yes | Skillで定義した6判定 |
| Confidence | yes | HIGH、MEDIUM、LOW |
| Severity | yes | CRITICAL、HIGH、MEDIUM、LOW、NONE |
| EvidenceIDs | conditional | `EV-0001;EV-0002`形式 |
| FindingIDs | conditional | `FN-0001;FN-0002`形式 |
| EvidenceSummary | conditional | 根拠が何を支持・反証するか |
| CurrentText | no | 修正前の該当記述 |
| RecommendedText | no | 推奨記述 |
| ReviewerNotes | no | 調査過程と制約 |

一つの行へ複数の独立claimを入れません。同じ`Section`に複数行があって構いません。

## Findings

| 列 | 必須 | 内容 |
|---|---:|---|
| FindingID | yes | `FN-0001`形式 |
| Section | yes | 主対象の`X.X.X` |
| FactCheckIDs | yes | 関連するFactCheck ID |
| Category | yes | accuracy、scope、currency、evidence、terminology、layout、linkなど |
| Severity | yes | CRITICAL、HIGH、MEDIUM、LOW |
| ResolutionStatus | yes | OPEN、IN_PROGRESS、RESOLVED、ACCEPTED_RISK |
| Problem | yes | 問題の説明 |
| CurrentText | no | 修正前記述 |
| RecommendedText | yes | 推奨記述または対応 |
| Rationale | yes | Evidenceに基づく理由 |
| AffectedFiles | yes | 影響file |
| ResolutionCommit | resolved時 | commit SHA |
| PullRequest | resolved時 | PR番号またはURL |
| Verification | resolved時 | build、test、PDF再検査 |
| Owner | no | 担当 |
| Notes | no | 残余リスク |

## Evidence

| 列 | 必須 | 内容 |
|---|---:|---|
| EvidenceID | yes | `EV-0001`形式 |
| SourceType | yes | standard、government、official-doc、release-note、peer-reviewed-paper、repositoryなど |
| Title | yes | 資料名 |
| AuthorPublisher | yes | 著者または発行元 |
| URL | yes | 正本URL |
| PublishedAt | no | 公開日 |
| UpdatedAt | no | 更新日 |
| AccessedAtUTC | yes | 取得日時 |
| CanonicalIDType | no | DOI、arXiv、ACL、OpenReviewなど |
| CanonicalID | no | 一意ID |
| Scope | yes | region、version、task、dataset、API operationなど |
| EvidenceSummary | yes | 支持・反証内容の要約 |
| Relation | yes | SUPPORTS、CONTRADICTS、QUALIFIES、SEARCH_ATTEMPT |
| Volatile | yes | TRUEまたはFALSE |
| QueryRequest | volatile時 | 実際の検索式またはrequest |
| RawSnapshotPath | volatile時 | 生応答への相対path |
| RawSnapshotSHA256 | volatile時 | 64桁のSHA-256 |
| Notes | no | 公式文書の不一致、取得制約など |

## PDFInspection

旧PDFと修正後PDFを別行として識別できるよう、`PDFVersion`を持たせます。

| 列 | 必須 | 内容 |
|---|---:|---|
| PDFVersion | yes | BEFOREまたはAFTER |
| PDFSHA256 | yes | 対象PDFのSHA-256 |
| Page | yes | 1始まりのpage number |
| RenderPath | yes | page imageへのpath |
| VisualStatus | yes | PASSまたはFAIL |
| TextExtractionStatus | yes | PASS、WARN、FAIL、NOT_APPLICABLE |
| Checks | yes | layout、font、figure、table、link、header/footerなど |
| Findings | no | 異常の説明 |
| VerifiedBy | yes | reviewer |
| VerifiedAtUTC | yes | 確認日時 |

## Spreadsheet formatting

`artifact_tool`で次を設定します。

- header rowを固定し、filterを有効にする
- 長文列をwrapする
- ID、section、status、severityの列幅を固定する
- URLをhyperlinkにする
- status、severity、resolution statusへdata validationを設定する
- `NEEDS_CORRECTION`、`NEEDS_SUPPLEMENT`、`FAIL`、`OPEN`をconditional formattingで強調する
- 1行目を太字にし、sheetごとにtable範囲を設定する
- Summaryに判定内訳とseverity内訳を数式で集計する
- 数式がerrorになっていないことを検査する

Excel生成に`openpyxl`を使いません。
