---
name: docs-swebok-template-writer
description: Create lightweight SWEBOK-aligned Markdown documents under this repository's docs/ tree. Use when drafting requirements, architecture, design, operations, release, monitoring, incident, maintenance, ADR, API, data, UI/UX, or acceptance-criteria docs that should follow the repo's docs naming convention such as REQ_PROJECT_001.md.
---

# Docs SWEBOK Template Writer

Use this skill to create or update repository documentation under `docs/` using the SWEBOK-lite structure already adopted in this repository.

## Workflow

1. Identify the target document type from the request.
2. Read `references/directory-map.md` when selecting a directory or explaining what belongs there.
3. Read `references/skill-structure-decision.md` when changing this skill's structure or considering separate skills per document type.
4. Create the document with `scripts/new_doc.py` whenever possible so the filename uses the next available `CODE_NNN.md`.
5. Keep the document lightweight. Fill only sections that are known; leave `TBD` for deliberate follow-up.
6. Put transient Codex work logs in `reports/`, not in `docs/`.
7. Before finalizing docs changes, run a repository-defined docs validation command when available, or use a targeted whitespace/diff check.

## Diagram Policy

- Use Mermaid diagrams for architecture documents such as `ARC_CONTEXT`, `ARC_VIEW`, `ARC_ADR`, and `ARC_QA` when describing system context, component relationships, data flow, deployment, state transitions, or sequence flows.
- Keep Mermaid diagrams close to the text they explain, and prefer simple `flowchart`, `sequenceDiagram`, or `stateDiagram-v2` blocks over decorative diagrams.
- If an architecture document intentionally omits diagrams, state the reason in the document.

## Validation Policy

- Treat `docs/` as the durable location for requirements, architecture, design, and operations artifacts. Use `reports/working/` only for auxiliary work reports.
- Do not use Markdown hard-break trailing spaces in generated reports or docs; the repository pre-commit hook removes trailing whitespace and will interrupt commits.
- When searching for Markdown code fences, avoid shell patterns that include raw triple backticks in double quotes. Prefer repository-defined docs validation commands when present, or simpler `rg -n 'mermaid' ...` checks.

## Skill Structure Policy

This skill remains the shared generator and routing map for the docs tree.

For product requirement subtypes, use the dedicated skills because their definitions and classification rules matter during writing:

- `docs-functional-requirement-writer`
- `docs-nonfunctional-requirement-writer`
- `docs-technical-constraint-writer`
- `docs-service-quality-constraint-writer`
- `docs-acceptance-criteria-writer`
- `docs-requirement-attributes-writer`
- `docs-requirement-validation-reviewer`

Keep shared filenames, directory mapping, and template assets here. Put document-type-specific writing guidance in the dedicated skill.


## Project-specific routing

When editing `docs/`, follow `docs/DOCS_STRUCTURE.md` first.
If legacy flat files (e.g. `REQUIREMENTS.md`, `ARCHITECTURE.md`) must be updated, keep them aligned with SWEBOK-lite metadata and atomic requirement style to ease incremental migration.

## Naming

Use:

```text
<AREA>_<SUBAREA>_<NNN>.md
```

Examples:

- `REQ_PROJECT_001.md`
- `ARC_ADR_002.md`
- `DES_API_001.md`
- `OPS_INCIDENT_003.md`

`NNN` is a zero-padded sequential number within the target directory.

## Script

List supported document codes:

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py --list
```

Preview the next file path:

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py REQ_PRODUCT --dry-run
```

Create a document:

```bash
python3 skills/docs-swebok-template-writer/scripts/new_doc.py REQ_PRODUCT --title "CLI conversion requirements"
```

The script copies the matching template from `assets/templates/` and writes it under the mapped `docs/` directory.

## Template Editing

- Template assets live in `assets/templates/<CODE>.md`.
- Keep each template focused on what a solo developer and Codex need to make decisions later.
- Do not add heavy approval workflows unless the project actually starts needing them.

## Requirement File Granularity Policy

- 要件ドキュメントは **1要件1ファイル** を必須とする。
- 各要件ファイルには、その要件専用の **受け入れ条件** を同一ファイル内に必ず記載する。
- `docs/REQUIREMENTS.md` はインデックス用途とし、要求本文は分割ファイルを正とする。
