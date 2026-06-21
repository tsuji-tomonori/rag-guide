---
name: paper-reading-slide-imagegen-ja
description: Generate Japanese reading-oriented paper summary slide decks as 1920x1080 PNG images with image_gen. Use when Codex must turn paper Markdown/PDF summaries such as pdf/P001.md into consistent, information-rich, article-like slides, rewrite slide design rules, regenerate slides under pdf/{id}/{id}_{number}.png, keep title takeaways explicit, and exclude review/総評 sections when requested.
---

# Paper Reading Slide ImageGen JA

Create Japanese paper-summary slide images for reading, not live presentation. Use `image_gen` page-by-page and save final PNGs under `pdf/{id}/{id}_{番号}.png`.

## Core Workflow

1. Read the authoritative design spec first.
   - Prefer the project root `レイアウト・デザイン規定.md` when present.
   - Also read `references/layout-design-guidelines.md` in this skill for the reusable baseline.
2. Read the target paper summary Markdown under `pdf/{id}.md`.
3. Inspect the source PDF when useful for title, claims, metrics, tables, or ambiguous details.
4. Derive the slide scope from the Markdown headings.
   - Exclude `総評`, `査読結果`, `総合評価`, review/rating content, and any section the user says not to create.
   - Recompute total page count after exclusions.
5. For each page, write a prompt with:
   - a unique marker such as `{id} reading slide regen <version> slide 03 of 07`
   - exact page number text such as `03 / 07`
   - chapter label
   - takeaway-style title
   - exact body text and diagram labels
   - color, typography, and layout constraints from the design spec
6. Generate each page with built-in `image_gen`.
7. Persist every generated image into the workspace.
   - If the built-in tool returns image data in the session log, decode the `image_generation_call.result` base64 for the unique marker.
   - Do not leave project-bound outputs only under `$CODEX_HOME`.
8. Normalize final images to 1920×1080 PNG when needed.
9. Validate file count, filenames, dimensions, uniqueness, slide content, excluded-section absence, title consistency, color consistency, and reading density.

## /goal Prompt Template

When the user asks for a reusable `/goal` prompt, read `references/goal-prompt-template.md` and provide the smallest template that fits the request.

- Require only the target ID by default.
- Put optional reader, density, tone, exclusions, and emphasis under `追加指定`.
- Keep the prompt self-contained enough that a future run can execute without reading this conversation.
- Mention `$paper-reading-slide-imagegen-ja` explicitly so the skill triggers.

## Design Rules

Use the detailed rules in `references/layout-design-guidelines.md`. The key constraints are:

- Use 16:9, final `1920x1080`.
- Use `#F7F6F1` background, `#2B3A4A` main text, `#5E7E96` accent, `#9AA4AD` page number.
- Keep title color and size consistent across pages.
- Make every title state the page's conclusion, not just the section name.
- Use moderate reading density: 3-5 information blocks plus a supporting chart, table, or diagram.
- Use diagrams to clarify the paper, not as decoration.
- Keep page numbers fixed at top right in `NN / TT` format.

## Prompt Pattern

Use short, exact Japanese text to reduce generated-text drift.

```text
{ID} reading slide regen vN slide 03 of 07.
Use case: productivity-visual.
Asset type: complete 16:9 Japanese reading slide, final raster image.
Primary request: Generate slide 03 for {ID}. This is for reading, not presentation.
Canvas: 16:9 landscape, 1920x1080 composition.
Design: follow レイアウト・デザイン規定.md. Background #F7F6F1, text #2B3A4A, accent #5E7E96, page number #9AA4AD. Keep title style consistent.
Layout: chapter label top left, takeaway title below, page number top right, body with 3-5 information blocks and a supporting diagram.
Text (render exactly, no extra text):
Chapter label: "3. 提案手法"
Title: "DPRは質問と通路を同じベクトル空間で比べる"
...
Page number: "03 / 07"
Constraints: readable Japanese, no logo, no watermark, no "総評", no review/rating content.
```

## Saving From Session Logs

When the generated image is available in the Codex session log rather than a normal file path, decode it by unique marker:

```bash
latest_session=$(find /home/t-tsuji/.codex/sessions -type f -name '*.jsonl' -printf '%T@ %p\n' | sort -nr | head -1 | cut -d' ' -f2-)
python3 - "$latest_session" <<'PY'
import base64, json, pathlib, re, sys
session = pathlib.Path(sys.argv[1])
outdir = pathlib.Path("pdf/P001")
marker = "P001 reading slide regen v1 slide"
found = {}
for line in session.open(encoding="utf-8"):
    payload = (json.loads(line).get("payload") or {})
    if payload.get("type") != "image_generation_call":
        continue
    prompt = payload.get("revised_prompt") or ""
    result = payload.get("result")
    if not result or marker not in prompt:
        continue
    m = re.search(r"slide\s+(0[1-9]\d*)\s+of\s+(\d+)", prompt)
    if m:
        found[m.group(1)] = result
for n, data64 in sorted(found.items()):
    (outdir / f"P001_{n}.png").write_bytes(base64.b64decode(data64))
PY
```

Adapt `outdir`, `marker`, and filename prefix to the target ID.

## Validation Checklist

- Exactly the requested PNG files exist under `pdf/{id}/`.
- All final images are `1920x1080`.
- Hashes are not all identical.
- Page numbers match the final page count.
- Titles are takeaway statements.
- Color and title style are visually consistent.
- Information density is suitable for reading.
- Excluded sections such as `総評` do not appear.
- No temporary HTML or non-requested final artifacts remain in the output directory.
