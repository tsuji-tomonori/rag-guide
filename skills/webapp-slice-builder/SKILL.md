---
name: webapp-slice-builder
description: Implement one focused web app screen or feature slice from a UI spec or visual reference, using the existing repository stack, routes, components, styles, assets, and validation commands.
---

# Webapp Slice Builder

Use this skill after a UI spec exists, or when the user asks to implement one focused UI slice from a visual reference.

## Scope

Implement one coherent slice at a time:

- one screen or route;
- one modal, panel, or form flow;
- one dashboard or app section;
- one responsive variant of an existing screen.

If the request spans multiple independent surfaces, split the work into task files or clearly stage the implementation.

## Workflow

1. Inspect the repository before editing:
   - app entry points and routing;
   - components and local UI primitives;
   - CSS, tokens, and layout conventions;
   - asset folders and icon systems;
   - data flow, state, and persistence;
   - available validation commands.
2. Confirm the UI spec acceptance checklist and target viewports.
3. Reuse existing components, tokens, icons, assets, and data patterns.
4. Implement the smallest complete slice that satisfies the spec.
5. Add responsive behavior from the smallest supported viewport upward.
6. Keep empty, loading, error, disabled, and permission states honest.
7. Update durable docs only when behavior, workflow, public API, or developer usage changes.
8. Run the selected validation checks and report anything skipped with a reason.

## Implementation Rules

- Preserve unrelated files and existing behavior.
- Do not add production dependencies unless the repo lacks a reasonable existing option and the need is documented.
- Do not hard-code fake product state in production UI.
- Prefer semantic HTML and native controls. Add ARIA only when native semantics cannot express the required role, state, or value.
- Use `asset-mapper` before adding, approximating, or replacing visible image/icon/logo assets.
- Use `visual-browser-qa` after implementation whenever the output is expected to match a visual reference.

## Deliverables

Return:

- changed files;
- route or file to inspect;
- validations run and results;
- assumptions and known differences from the visual reference;
- next verification step.
