# Docs Directory Map

Use this map to decide where a document belongs and what it should contain.

| Code | Directory | Write here | Avoid writing here |
|---|---|---|---|
| `REQ_PROJECT` | `docs/1_要求_REQ/01_プロジェクト要求_PROJECT/` | Project purpose, owner intent, constraints, working style, Codex collaboration rules, scope boundaries | Detailed feature behavior or implementation design |
| `REQ_PRODUCT` | `docs/1_要求_REQ/11_製品要求_PRODUCT/` | Product requirements index, classification policy, cross-cutting product-level notes | Detailed functional or non-functional requirement bodies |
| `REQ_FUNCTIONAL` | `docs/1_要求_REQ/11_製品要求_PRODUCT/01_機能要求_FUNCTIONAL/` | Observable software behavior, business policies, business processes, user-visible actions | Technology choices, response-time targets, infrastructure constraints |
| `REQ_NON_FUNCTIONAL` | `docs/1_要求_REQ/11_製品要求_PRODUCT/11_非機能要求_NON_FUNCTIONAL/` | Non-functional requirements index, quality/constraint overview, classification rationale | Specific named technology constraints or measurable service-quality scenarios when those fit child directories |
| `REQ_TECHNICAL_CONSTRAINT` | `docs/1_要求_REQ/11_製品要求_PRODUCT/11_非機能要求_NON_FUNCTIONAL/01_技術制約_TECHNICAL_CONSTRAINT/` | Requirements that specify named technologies, platforms, infrastructure, tools, or prohibited technologies | General quality levels without named technologies |
| `REQ_SERVICE_QUALITY` | `docs/1_要求_REQ/11_製品要求_PRODUCT/11_非機能要求_NON_FUNCTIONAL/11_サービス品質制約_SERVICE_QUALITY/` | Quality levels such as performance, reliability, availability, security, scalability, accuracy, operability | Requirements that primarily mandate a named technology or implementation option |
| `REQ_ACCEPTANCE` | `docs/1_要求_REQ/21_受入基準_ACCEPTANCE/` | Acceptance criteria, done conditions, ATDD/BDD scenarios, examples, testable scenarios, boundary/equivalence/combinatorial checks | Long test logs or implementation notes |
| `REQ_CHANGE` | `docs/1_要求_REQ/31_変更管理_CHANGE/` | Requirement changes, scope decisions, rationale, impact, superseded requirements | Ordinary bug reports or release notes |
| `ARC_CONTEXT` | `docs/2_アーキテクチャ_ARC/01_コンテキスト_CONTEXT/` | System context, external actors, dependencies, boundaries, deployment context | Detailed component internals |
| `ARC_VIEW` | `docs/2_アーキテクチャ_ARC/11_ビュー_VIEW/` | Logical, process, deployment, data-flow, or module views | One-off implementation notes |
| `ARC_ADR` | `docs/2_アーキテクチャ_ARC/21_重要決定_ADR/` | Architecture decision records, options, tradeoffs, consequences | Minor coding preferences without architectural impact |
| `ARC_QA` | `docs/2_アーキテクチャ_ARC/31_品質属性_QA/` | Quality attribute scenarios such as performance, security, modifiability, reliability | Raw benchmark output without interpretation |
| `DES_HLD` | `docs/3_設計_DES/01_高レベル設計_HLD/` | High-level design, subsystem responsibilities, major flows, interfaces between modules | Low-level function details |
| `DES_DLD` | `docs/3_設計_DES/11_詳細設計_DLD/` | Detailed design, algorithms, edge cases, module behavior, error handling | Product requirement negotiation |
| `DES_UI_UX` | `docs/3_設計_DES/21_UI_UX/` | Screens, flows, interaction states, wording, accessibility expectations | Backend-only design decisions |
| `DES_DATA` | `docs/3_設計_DES/31_データ_DATA/` | Data model, schema, migration notes, retention, data ownership | API endpoint behavior unless it affects data shape |
| `DES_API` | `docs/3_設計_DES/41_API_API/` | API contracts, request/response shape, errors, compatibility | Internal implementation details not visible at boundary |
| `OPS_PLAN` | `docs/4_運用_OPS/01_運用計画_PLAN/` | Operating assumptions, environments, backup, security posture, manual procedures | Product roadmap |
| `OPS_RELEASE` | `docs/4_運用_OPS/11_リリース_RELEASE/` | Release steps, rollback, migration, version notes, verification checklist | Deep architecture rationale |
| `OPS_MONITORING` | `docs/4_運用_OPS/21_監視_MONITORING/` | Signals, logs, metrics, alerts, health checks, diagnostics | Full incident narratives |
| `OPS_INCIDENT` | `docs/4_運用_OPS/31_インシデント_INCIDENT/` | Incident report, timeline, impact, cause, response, prevention | Routine maintenance plans |
| `OPS_MAINTENANCE` | `docs/4_運用_OPS/41_保守_MAINTENANCE/` | Maintenance tasks, technical debt, dependency updates, recurring checks | Individual release execution logs |

## Selection Heuristic

- If it explains **why the product should exist or what it must do**, use `REQ`.
- If it explains **observable behavior or business rules**, use `REQ_FUNCTIONAL`.
- If it explains **conditions, quality levels, or implementation/operation constraints**, use `REQ_NON_FUNCTIONAL` or one of its child directories.
- If it names **a specific technology, platform, tool, infrastructure, or prohibited technology**, use `REQ_TECHNICAL_CONSTRAINT`.
- If it names **a measurable quality level without primarily choosing a technology**, use `REQ_SERVICE_QUALITY`.
- If it explains **system shape, constraints, or tradeoffs**, use `ARC`.
- If it explains **how a feature or component should be built**, use `DES`.
- If it explains **how to run, release, observe, recover, or maintain it**, use `OPS`.
