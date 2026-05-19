---
name: screenshot-to-ui-spec
description: Convert screenshots, Figma frames, image references, or visual mockups into a structured UI implementation spec before coding. Use this before building or changing a web app UI from a visual reference.
---

# Screenshot To UI Spec

Use this skill before implementing a UI from a screenshot, Figma frame, or visual mockup.

Do not jump from image to code. First produce a concise implementation spec that another agent can build from.

## Workflow

1. Inspect the repository context first:
   - existing routes and entry points;
   - component and styling conventions;
   - design tokens, icons, assets, and existing UI patterns;
   - relevant product data sources and empty/loading/error states.
2. Analyze every provided visual reference:
   - viewport or frame size;
   - page purpose and likely route;
   - layout regions and hierarchy;
   - spacing, typography, color, borders, radius, shadows, and depth;
   - components, controls, states, and interactions;
   - responsive behavior implied by multiple references;
   - assets, icons, logos, illustrations, and media.
3. Write or update a UI spec before coding. Prefer `docs/ui-spec.md` only when no task-specific spec path exists.
4. Record unknowns as assumptions unless they block implementation.
5. Create an acceptance checklist that can be verified in browser viewports.

## Spec Contents

The spec must include:

- source references: file names, URLs, frame names, or screenshot labels;
- route or screen name;
- desktop and mobile layout structure;
- component inventory;
- visual tokens and measurements, with approximate values when exact values are unavailable;
- content inventory;
- interaction and state inventory;
- asset mapping notes;
- accessibility expectations;
- unknowns and assumptions;
- acceptance checklist.

## Rules

- Treat the visual reference as the source of truth for visual hierarchy, not as permission to invent unrelated sections.
- If Figma data is available, prefer Figma structure and exported assets over screenshot-only inference.
- If a value is inferred from pixels, mark it as approximate.
- Do not introduce placeholder product data as if it were real data; follow `skills/no-mock-product-ui/SKILL.md`.
- Use `skills/mobile-first-web-app-ui-ux-a11y/SKILL.md` when acceptance criteria or review scope includes mobile UI, keyboard behavior, screen readers, or WCAG/JIS checks.

## Handoff

Return:

- UI spec path;
- key assumptions;
- acceptance checklist;
- assets that must be supplied, reused, or intentionally approximated;
- recommended next skill, usually `asset-mapper` and then `webapp-slice-builder`.
