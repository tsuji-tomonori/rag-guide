---
name: no-mock-product-ui
description: Use when implementing or reviewing production UI/API behavior to prevent hard-coded mock business data, demo fallback values, fake counts, fake users/groups, fixed dates, fixed storage usage, or placeholder actions from shipping in real product paths.
---

# No Mock Product UI Skill

Use this skill before editing production UI, API response shaping, hooks, stores, or agent instructions that affect user-visible product behavior.

## Rule

Production paths must render or return values from real inputs, API responses, persisted state, configuration, or an explicit empty/error/loading state. Do not ship hard-coded demo data as fallback behavior.

## Prohibited In Production Paths

- Fake business folders, documents, users, groups, departments, roles, dates, counts, storage capacity, usage ratios, costs, or metrics.
- `Math.max`, default arrays, default objects, fixed years, fixed IDs, or fixed names used to make an empty state look populated.
- Estimated values presented as actual data unless the UI clearly labels them as estimated and the estimate is a product requirement.
- Placeholder controls for actions that are not implemented, such as rename, move, filter, pagination, share, or export buttons without a real handler.
- Test/demo labels such as mock, sample, dummy, lorem, fixture, or example leaking into production UI.

## Allowed

- Test fixtures, Storybook/demo-only data, visual regression route mocks, and local development seed data when they are isolated from production components or clearly injected by tests.
- Empty, loading, permission-denied, unavailable, or not-configured states.
- Optional API fields displayed only when present.
- Explicitly labeled estimates when the requirement, source, and confidence are documented.

## Workflow

1. Search changed production files for hard-coded domain values and fallback collections.
2. Trace every displayed value to props, API data, persisted state, configuration, or an explicit state label.
3. Remove nonfunctional controls or wire them to a real handler.
4. Add or update tests that fail when fake production fallback data reappears.
5. In PR text, call out any intentionally displayed estimate or intentionally unavailable metric.

## Review Gate

Before completion, confirm:

- Empty API responses render honest empty states.
- Missing optional fields do not produce fake values.
- Counts, dates, storage, users, groups, and document metadata are real or absent.
- Mock data exists only in tests, examples, or local development setup.
