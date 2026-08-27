---
name: docs-service-quality-constraint-writer
description: Write service quality constraint requirement documents for this repository. Use when documenting measurable quality levels such as performance, response time, throughput, accuracy, reliability, availability, scalability, security, operability, or quality attributes using REQ_SERVICE_QUALITY_NNN.md.
---

# Docs Service Quality Constraint Writer

Use this skill to create or refine service quality constraint documents.

## Definition

サービス品質制約とは、特定の技術名を指定せず、ソフトウェアが達成すべき品質水準を表す要求である。利用者や運用者が受け取るサービスの品質として、性能、信頼性、可用性、正確性、セキュリティ、拡張性などの水準を定める。

## Write Here

- 品質属性。
- 通常時、ピーク時、障害時などの条件。
- 達成すべき水準。
- 測定方法。
- 許容できる例外。
- 関連する機能要求。

## Avoid

- 特定技術、製品、クラウド、ライブラリの指定。
- 利用者から見える処理手順そのもの。

## Create File

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py REQ_SERVICE_QUALITY --title "Title"
```

Then fill the generated `REQ_SERVICE_QUALITY_NNN.md` template.

## Required While Writing

- Use `docs-requirement-attributes-writer` to fill requirement attributes.
- Use `docs-requirement-validation-reviewer` every time a requirement is added or materially changed.
- Do not leave review until the whole document is complete if the issue can be checked while writing.
