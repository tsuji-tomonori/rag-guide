---
name: docs-acceptance-criteria-writer
description: Write acceptance criteria documents for this repository. Use when documenting done conditions, acceptance tests, ATDD, BDD scenarios, Given/When/Then examples, testable requirement criteria, or validation conditions using REQ_ACCEPTANCE_NNN.md.
---

# Docs Acceptance Criteria Writer

Use this skill to create or refine acceptance criteria documents.

## Definition

受け入れ基準とは、要求が満たされたと判断するための条件である。要求を受け入れ基準の形で書くと、テストと要求が強く結びつく。

## Write Here

- 要求が完了したと判断する条件。
- ATDD の観点で、実装前に合意する受け入れテスト。
- BDD の観点で、利用者の振る舞いを前提・事象・結果で表したシナリオ。
- 境界値分析、組合せテスト、同値分割などで補うべき確認観点。
- 決定表で整理すべき条件分岐。
- 未確認リスクと対象外シナリオ。

## ATDD and BDD

受け入れテスト駆動開発（ATDD）は、機能を作る前に、その機能が完成したと判断するテストを合意する方法である。

振る舞い駆動開発（BDD）は、利用者の振る舞いを「前提、事象、結果」の形で書く方法である。

Use:

```text
前提: <状態・条件>
事象: <利用者または外部システムの操作>
結果: <観測できる結果>
```

or:

```gherkin
Given <状態・条件>
When <操作・事象>
Then <観測できる結果>
```

This reduces ambiguity, but it does not guarantee completeness. Combine it with boundary value analysis, combinatorial testing, equivalence partitioning, and similar test techniques when deciding which scenarios to write.

## Test Technique Mini-Templates

Use boundary value analysis when a numeric, date, size, count, or range condition matters.

| 項目 | 最小未満 | 最小 | 代表値 | 最大 | 最大超過 | 期待結果 |
|---|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD | TBD | TBD |

Use equivalence partitioning when many inputs should behave the same.

| 入力・条件 | 有効同値クラス | 無効同値クラス | 代表値 | 期待結果 |
|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD |

Use combinatorial testing when multiple independent conditions interact.

| 条件A | 条件B | 条件C | 期待結果 | 備考 |
|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD |

Use a decision table when business rules depend on combinations of conditions.

| 条件 / 動作 | ルール1 | ルール2 | ルール3 | ルール4 |
|---|---|---|---|---|
| 条件: TBD | Y | Y | N | N |
| 条件: TBD | Y | N | Y | N |
| 動作: TBD | TBD | TBD | TBD | TBD |

## Create File

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py REQ_ACCEPTANCE --title "Title"
```

Then fill the generated `REQ_ACCEPTANCE_NNN.md` template.

## Requirement-local Acceptance Rule

- 受け入れ基準は、独立した一覧ファイルだけでなく、対応する要件ファイル内にも必ず明記する。
- レビュー時は「1要件1ファイル」「要件内受け入れ条件あり」を満たしているか確認する。
