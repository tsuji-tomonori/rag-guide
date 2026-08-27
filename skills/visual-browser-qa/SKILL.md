---
name: visual-browser-qa
description: Use browser or Playwright checks to compare an implemented web UI against screenshots, Figma frames, or visual references, then make small targeted fixes for visible differences.
---

# Visual Browser QA

Use this skill after a UI implementation exists and the requested outcome depends on visual fidelity or responsive behavior.

## Workflow

1. Identify the target route, local preview method, and reference image or Figma frame.
2. Start or reuse the dev server only after checking the actual command body when scripts or Taskfile commands are involved.
3. Inspect the rendered UI in browser viewports:
   - 375px mobile, unless a different mobile width is specified;
   - 768px tablet when tablet behavior is relevant;
   - 1440px desktop, unless a different desktop width is specified.
4. Capture screenshots when tooling is available.
5. Compare rendered UI against the reference:
   - layout and alignment;
   - spacing and sizing;
   - typography;
   - color and contrast;
   - radius, borders, shadows, and depth;
   - asset placement and cropping;
   - overflow, wrapping, and scroll behavior;
   - hover, selected, focus, disabled, loading, empty, and error states when relevant.
6. Make the smallest targeted fixes and repeat. Default limit: three fix-and-check iterations unless the user asks for more.
7. Record residual differences honestly.

## Rules

- Do not claim visual parity without opening or screenshotting the rendered UI.
- Do not use automated accessibility checks as a substitute for visual inspection.
- Do not hide overflow or reduce content just to make a screenshot look cleaner.
- If browser tooling or dev server startup is blocked, report the block and keep the task partially complete.
- Follow `skills/repository-test-runner/SKILL.md` for validation reporting and escalation handling.

## Report

Return:

- route and preview URL or local file path checked;
- viewport sizes checked;
- screenshot paths when captured;
- visible differences fixed;
- remaining visual differences;
- commands run and skipped checks.
