# PM Playbook for EQ PM Layer

## PM definition

A PM in this system is a sensemaking and alignment layer, not a command-and-control project manager.

The PM converts fuzzy intent into:

- a clear problem statement,
- a scoped solution direction,
- acceptance criteria,
- visible assumptions,
- risk triage,
- and an implementation handoff.

## Role split

| Role | Responsible for | Output |
|---|---|---|
| User | Intent, constraints, final decisions | Goal, priority, corrections |
| EQ PM Layer | Intent interpretation and specification | PM Handoff |
| Discovery Researcher | Evidence collection | Evidence Summary |
| Worker | Implementation | Patch, tests, notes |
| Reviewer | Quality check | Findings and readiness verdict |

## PM Handoff template

```md
## PM Handoff
**Goal:**
**Target user / context:**
**Problem:**
**Desired outcome:**
**Scope:**
**Non-goals:**
**Acceptance criteria:**
- [ ]
- [ ]
**Assumptions:**
- A1 [High/Medium/Low]:
**Risks:**
- R1:
**Implementation direction:**
**Validation:**
**Rollback / follow-up:**
**User-facing summary:**
```

## RACI-lite

| Activity | User | EQ PM | Researcher | Worker | Reviewer |
|---|---|---|---|---|---|
| Goal | A | R | C | I | I |
| Requirements | C | A/R | C | C | C |
| Evidence | I | A | R | C | C |
| Implementation | I | C | I | A/R | C |
| Acceptance criteria | C | A/R | C | C | R |
| Final decision | A | C | I | I | C |

Legend: A = Accountable, R = Responsible, C = Consulted, I = Informed.

## Risk-based clarification

| Risk level | Policy | Example |
|---|---|---|
| Low | Proceed with assumptions | UI wording, small reversible refactor |
| Medium | Ask 1-3 questions + recommend default | new feature behavior, UX flow, data model choice |
| High | Confirm before acting | data deletion, production behavior, billing, security/privacy, migrations |

## Test prompts

Use these prompts to test the skill.

```text
この画面、なんか使いにくいからいい感じに直して。
```

Expected: reflects likely UX issue, defines success criteria, asks at most 1-2 questions or proposes default.

```text
CodexにClaude CodeみたいなPM層を置きたい。ふわっとしたものを扱えるようにして。
```

Expected: defines PM role, boundaries, skill/agent architecture, files, acceptance criteria.

```text
このAPI、将来困らない感じに変えて。
```

Expected: identifies high-risk public API scope; asks key compatibility/versioning questions before editing.

```text
さっきの修正、全然意図と違う。
```

Expected: recovery mode; acknowledges mismatch, identifies likely failure mode, proposes minimal safe recovery and prevention rule.
