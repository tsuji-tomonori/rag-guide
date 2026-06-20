---
name: paper-onepage-summary-imagegen-ja
description: Generate Japanese one-page paper summary images as 1920x1080 PNGs with image_gen, using the P002-style numbered-card template by default. Use when Codex must condense a paper Markdown/PDF summary such as pdf/P001.md into a single self-contained visual summary image, save it as pdf/{id}/{id}_summary.png, keep takeaway titles explicit, use article-like information density, match pdf/P002/P002_summary.png when available, and exclude review/総評 sections when requested.
---

# Paper Onepage Summary ImageGen JA

Create one self-contained Japanese paper-summary image for reading. The final visual must be generated with the built-in `image_gen` tool and saved as `pdf/{id}/{id}_summary.png` by default.

## Non-Negotiable ImageGen Requirement

- Always call built-in `image_gen` for the final visual.
- Do not replace `image_gen` with HTML, SVG, CSS, canvas, Mermaid, browser screenshots, matplotlib, reportlab, PIL-only drawing, or any other deterministic renderer.
- Do not create a local HTML/SVG/mock layout as the final or as a fallback final.
- If a deterministic helper is used at all, it may only post-process the `image_gen` raster output, for example resizing/cropping/padding the generated PNG to `1920x1080`.
- If the built-in `image_gen` output is not visible as a normal file, extract the generated PNG from the session log's `image_generation_call.result` base64. Do not switch to HTML or another renderer.
- If `image_gen` fails and no `image_generation_call.result` exists, stop and report that image generation failed instead of fabricating the requested image with another renderer.

## Core Workflow

1. Read the design spec.
   - Prefer project root `レイアウト・デザイン規定.md` when present.
   - Read `references/onepage-summary-guidelines.md` for this skill's one-page layout rules.
   - When `pdf/P002/P002_summary.png` exists, inspect it and treat it as the canonical visual template for spacing, card style, numbered badges, and density.
2. Read `pdf/{id}.md`.
3. Inspect `pdf/{id}.pdf` when useful for title, abstract, tables, metrics, or ambiguous claims.
4. Exclude `総評`, `査読結果`, `総合評価`, review/rating content, and any user-specified exclusions.
5. Reorganize the paper into one-page summary blocks:
   - paper identity
   - core claim
   - problem/background
   - method
   - experiment setup
   - main results
   - limitations or practical implications
6. Write one `image_gen` prompt with:
   - a unique marker such as `{id} onepage summary regen v1`
   - exact output intent: one 1920x1080 Japanese reading summary image
   - exact title, section headings, body text, chart labels, and output filename
   - a required instruction to match the P002-style template: large left-aligned title; two paper-identity lines; 7 numbered cards; left stack for background/claim; central method diagram; right experiment/results; bottom reading/implication cards
   - constraints from the design spec
7. Generate with built-in `image_gen`. This is mandatory for the final visual.
8. Persist the `image_gen` result into `pdf/{id}/{id}_summary.png`.
   - First look under `$CODEX_HOME/generated_images/` and other tool-reported image paths.
   - If no file is present, decode `image_generation_call.result` base64 from the active session log by matching the unique marker in `revised_prompt`.
   - The decoded bytes must be the direct `image_gen` PNG result.
9. Normalize final image to `1920x1080` PNG when needed by resizing or padding the `image_gen` raster output only.
10. Validate filename, dimensions, text scope, color consistency, no excluded sections, and no temporary artifacts.

## Allowed And Forbidden Post-Processing

Allowed after `image_gen`:

- Copying or moving the generated image into `pdf/{id}/{id}_summary.png`.
- Decoding `image_generation_call.result` base64 from the session log.
- Resizing, cropping, or padding the generated raster image to exactly `1920x1080`.
- Visual inspection with `view_image`.

Forbidden:

- Producing the final image from HTML/CSS/browser screenshot.
- Producing the final image from SVG/canvas/Mermaid.
- Recreating the layout with a local drawing library as a substitute for `image_gen`.
- Keeping a renderer source file such as `{id}_summary.html` as part of the deliverable.

## One-Page Content Model

Use a single-page infographic/article layout, not a mini slide deck. The default visual pattern is the P002-style template.

- Top band: large left-aligned takeaway title, then paper name and authors/venue as compact identity lines.
- Main left: numbered cards `1 背景` and `2 中心主張`.
- Main center: largest numbered card `3 手法図：...` with a flow diagram.
- Main right: numbered cards `4 実験設定` and `5 主要結果` with a compact table/KPI.
- Bottom band: numbered cards `6 読み取り方` and `7 制約と実用上の示唆`.

Keep the image readable at 1920x1080. Use 6-8 information blocks total. Prefer concise Japanese text over long paragraphs.

## Canonical P002-Style Template

Default to the same visual system as `pdf/P002/P002_summary.png` when that file is present:

- 16:9 1920x1080, warm off-white background, dense but readable one-page article layout.
- Outer margin about 40-50px, consistent gutters, no page number.
- Large navy title at the top-left, not centered. Put the paper name and authors/venue below it in smaller blue/gray text.
- Use seven bordered cards with small blue rounded number badges (`1` through `7`) attached to each heading.
- Use thin blue-gray card borders, horizontal rules inside cards, and dotted separators for short line groups.
- Keep the central method card visually dominant and wider than side cards.
- Put result numbers in the right middle card as a small table or KPI list; use accent blue for stronger values.
- Use the bottom row for interpretation and limitations/practical implications, split into two wide cards.
- Avoid ornamental icons unless they directly explain the block; keep icon style simple line art matching P002.

## /goal Prompt Template

When the user asks for a reusable `/goal` prompt, read `references/goal-prompt-template.md` and return the smallest template that fits.

- Require only the screen/paper ID by default.
- Put optional audience, emphasis, density, output path, and exclusions under `追加指定`.
- Mention `$paper-onepage-summary-imagegen-ja` explicitly so the skill triggers.

## Design Rules

Use `references/onepage-summary-guidelines.md`. Key rules:

- Use 16:9, final `1920x1080`.
- Use background `#F7F6F1`, main text `#2B3A4A`, accent `#5E7E96`, helper text `#9AA4AD`.
- Use a single clear takeaway title, not just the paper name.
- Use moderate-high reading density, but group information into clear blocks.
- Match the P002-style numbered-card template by default; generic layouts are fallback only when the user explicitly requests a different design.
- Use diagrams/charts to compress information, not decoration.
- Avoid review/rating content unless explicitly requested.

## Prompt Pattern

```text
{ID} onepage summary regen v1.
Use case: productivity-visual.
Asset type: one complete 16:9 Japanese paper summary image, final raster image.
Primary request: Generate a single self-contained reading summary image for {ID}.
Canvas: 16:9 landscape, 1920x1080 composition.
Design: follow レイアウト・デザイン規定.md and paper-onepage-summary-imagegen-ja guidelines. Background #F7F6F1, text #2B3A4A, accent #5E7E96, helper text #9AA4AD.
Layout: match the P002-style template. Top-left takeaway title and paper identity; 7 numbered bordered cards; left cards 1-2 for background/core claim; center card 3 as the largest method diagram; right cards 4-5 for experiment/results table; bottom cards 6-7 for reading/limitations/practical implications.
Text (render exactly, no extra text):
Title: "..."
...
Output filename: "pdf/{ID}/{ID}_summary.png"
Constraints: readable Japanese, same design system as pdf/P002/P002_summary.png when available, no logo, no watermark, no "総評", no review/rating content.
```

## Validation Checklist

- `pdf/{id}/{id}_summary.png` exists.
- Final image is `1920x1080`.
- The image was produced by built-in `image_gen`; if extracted from logs, the source is `image_generation_call.result`.
- Any size correction only post-processed the `image_gen` raster output.
- No HTML/SVG/canvas/browser screenshot fallback was used for the final image.
- No `{id}_summary.html`, `{id}_summary.svg`, or renderer source artifact remains.
- It is one image, not multiple slides.
- Title states the paper's takeaway.
- Blocks cover problem, method, experiment, results, and implication.
- Visual design matches the P002-style template: large left title, 7 numbered cards, central method diagram, right results table/KPI, and bottom reading/implication cards.
- Excluded sections such as `総評`, `査読結果`, and `総合評価` do not appear.
- Colors and typography match the design spec.
- The image is readable as a standalone summary.
