---
name: docs-technical-constraint-writer
description: Write technical constraint requirement documents for this repository. Use when documenting requirements that mandate or prohibit named technologies, platforms, infrastructure, tools, languages, databases, browsers, automation technologies, or libraries using REQ_TECHNICAL_CONSTRAINT_NNN.md.
---

# Docs Technical Constraint Writer

Use this skill to create or refine technical constraint documents.

## Definition

技術制約とは、特定の自動化技術やインフラを使うこと、または使わないことを指定する要求である。ここでは「名前のある技術を指定しているか」に注目すると見分けやすい。

## Write Here

- 指定する技術名または禁止する技術名。
- 指定理由。
- 適用範囲。
- 許容される代替案。
- 設計・運用・保守への影響。

## Avoid

- 技術名を伴わない一般的な品質水準。
- 利用者から見える振る舞いそのもの。

## Create File

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py REQ_TECHNICAL_CONSTRAINT --title "Title"
```

Then fill the generated `REQ_TECHNICAL_CONSTRAINT_NNN.md` template.

## Required While Writing

- Use `docs-requirement-attributes-writer` to fill requirement attributes.
- Use `docs-requirement-validation-reviewer` every time a requirement is added or materially changed.
- Do not leave review until the whole document is complete if the issue can be checked while writing.
