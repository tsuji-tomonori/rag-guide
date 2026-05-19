---
name: docs-nonfunctional-requirement-writer
description: Write non-functional requirement documents for this repository. Use when documenting implementation constraints, operating quality constraints, technical constraints, service quality constraints, or conditions under which product behavior must be realized under docs/1_要求_REQ/11_製品要求_PRODUCT/11_非機能要求_NON_FUNCTIONAL using REQ_NON_FUNCTIONAL_NNN.md.
---

# Docs Non-Functional Requirement Writer

Use this skill to create or refine non-functional requirement overview documents.

## Definition

非機能要求とは、ソフトウェアの実装技術や運用品質を制約する要求である。「何をするか」ではなく、「どのような条件で、どの水準で、どの技術的制約のもとで実現するか」に関わる。

## Write Here

- 非機能要求全体の対象範囲。
- 技術制約とサービス品質制約の分類方針。
- 機能要求との関係。
- 優先度、根拠、測定方法の概要。

## Route Details

- 名前のある技術を指定する場合は `docs-technical-constraint-writer` を使う。
- 品質水準を指定する場合は `docs-service-quality-constraint-writer` を使う。

## Create File

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py REQ_NON_FUNCTIONAL --title "Title"
```

Then fill the generated `REQ_NON_FUNCTIONAL_NNN.md` template.

## Required While Writing

- Use `docs-requirement-attributes-writer` to fill requirement attributes.
- Use `docs-requirement-validation-reviewer` every time a requirement is added or materially changed.
- Do not leave review until the whole document is complete if the issue can be checked while writing.

## Mandatory Granularity Rule

- 非機能要求は **1要件1ファイル** で記述する。
- 各 `REQ_NON_FUNCTIONAL_NNN.md` には、対象要件の **受け入れ条件** セクションを必ず含める。
- 1ファイルに複数 NFR を混在させない。
