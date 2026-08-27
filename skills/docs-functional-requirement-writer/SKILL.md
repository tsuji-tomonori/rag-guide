---
name: docs-functional-requirement-writer
description: Write functional requirement documents for this repository. Use when documenting observable software behavior, business policies, business processes, user-visible actions, or what the software shall do under docs/1_要求_REQ/11_製品要求_PRODUCT/01_機能要求_FUNCTIONAL using REQ_FUNCTIONAL_NNN.md.
---

# Docs Functional Requirement Writer

Use this skill to create or refine functional requirement documents.

## Definition

機能要求とは、ソフトウェアが提供すべき観測可能な振る舞いを表す要求である。言い換えると、「ソフトウェアが何をするか」を述べる要求である。

## Write Here

- 方針: 常に守られるべき業務規則。
- プロセス: 実行される業務手続き。
- 入力、出力、状態変化。
- 例外時の振る舞い。
- 受け入れ基準へのトレース。

## Structured Natural Language

構造化自然言語とは、自然言語を使いながら、書き方に制約を加える方法である。

Prefer requirement statements that make these elements explicit:

- いつ: trigger or timing.
- 誰が / 何が: actor or subject.
- 何をする: observable action.
- どの条件で: condition, guard, or exception.

Use formats such as:

```text
<きっかけ>、<主体> は <対象> を <動作> する。ただし、<例外条件> の場合を除く。
```

Example:

```text
注文が出荷されたとき、システムは請求書を作成する。ただし、注文条件が前払いの場合を除く。
```

Also acceptable:

- Use case specification.
- User story: `<役割> として、<能力> がほしい。なぜなら、<便益> を得たいからである。`
- Decision table for conditional behavior.

## Trace To Acceptance Criteria

Every functional requirement should link to at least one acceptance criteria document.

Use a table like:

| 要求ID | 受け入れ基準 | 確認観点 | 状態 |
|---|---|---|---|
| FR-001 | `docs/1_要求_REQ/21_受入基準_ACCEPTANCE/REQ_ACCEPTANCE_XXX.md` | normal / alternative / exception | Draft |

Guidance:

- Policies should trace to criteria that check allowed behavior, prohibited behavior, and exceptions.
- Processes should trace to separate criteria for normal flow, alternative flow, and exception flow.
- If no acceptance criteria exists yet, write `TBD` and create it with `docs-acceptance-criteria-writer`.

## Avoid

- 技術名や実装方式の指定。
- 応答時間、可用性、信頼性などの品質水準。
- インフラ、ツール、プラットフォーム選定。

## Create File

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py REQ_FUNCTIONAL --title "Title"
```

Then fill the generated `REQ_FUNCTIONAL_NNN.md` template.

## Required While Writing

- Use `docs-requirement-attributes-writer` to fill requirement attributes.
- Use `docs-requirement-validation-reviewer` every time a requirement is added or materially changed.
- Do not leave review until the whole document is complete if the issue can be checked while writing.

## Mandatory Granularity Rule

- 機能要求は **1要件1ファイル** で記述する。
- 各 `REQ_FUNCTIONAL_NNN.md` には、対象要件の **受け入れ条件** セクションを必ず含める。
- 1ファイルに複数 FR を混在させない。
