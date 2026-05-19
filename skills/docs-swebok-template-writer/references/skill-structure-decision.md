# Skill Structure Decision

Decision: keep shared generation assets in `skills/docs-swebok-template-writer/`, but split product requirement writing guidance into dedicated skills.

## Compared Options

| Option | Strengths | Weaknesses | Fit for this repo |
|---|---|---|---|
| Single skill with per-document templates | One trigger, one naming rule, one generation script, easy to add new codes, low maintenance overhead | Skill description is broader; product requirement definitions can be too important to hide in a generic skill | Good for shared generation |
| Separate skill per document type | Higher trigger precision for each document type, room for definitions and specialized writing rules | Too many skills can duplicate naming guidance and generation logic | Good for product requirement subtypes only |

## Current Split

- `docs-swebok-template-writer`: shared directory map, template assets, and `CODE_NNN.md` file generation.
- `docs-functional-requirement-writer`: functional requirement definition and writing rules.
- `docs-nonfunctional-requirement-writer`: non-functional requirement definition and routing rules.
- `docs-technical-constraint-writer`: technical constraint definition and writing rules.
- `docs-service-quality-constraint-writer`: service quality constraint definition and writing rules.

## Why This Is Better Now

- Product requirement subtypes have definitions that affect classification, not just formatting.
- Functional requirements contain policy and process, while non-functional requirements split into technical constraints and service quality constraints.
- Dedicated skills improve trigger precision for common requirement-writing tasks.
- Shared generation stays centralized, so filenames and directory mappings do not drift.

## When To Split More Later

Split another document family into its own skill when the family gains a distinct workflow, not merely a distinct template.

Possible future split candidates:

- ADRs require decision-status automation, supersession checks, and architecture review integration.
- Incident reports need schema validation, timeline extraction, or links to monitoring data.
- API docs need OpenAPI generation and compatibility checks.
