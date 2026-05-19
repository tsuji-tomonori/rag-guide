---
name: mobile-first-web-app-ui-ux-a11y
description: Use when designing, implementing, reviewing, or writing acceptance criteria for mobile-first web application UI/UX/accessibility, especially search home, search results, video detail, save/share, filter, tag, form, media, responsive layout, touch target, keyboard, screen reader, WCAG 2.2 AA, or JIS X 8341-3:2016 related work.
---

# Mobile-First Web App UI/UX/A11y Skill

Use this skill for mobile-first Web application design, implementation, review, QA planning, or acceptance criteria where UI/UX and accessibility quality are part of the expected outcome.

## Standard

- Treat **WCAG 2.2 Level AA** as the default implementation target.
- For Japan-facing services, also reference **JIS X 8341-3:2016 Level AA**, then cover newer mobile, touch, and cognitive-load requirements through WCAG 2.1/2.2.
- Do not treat automated accessibility checks as sufficient. Combine automation with keyboard, screen reader, zoom/reflow, mobile viewport, and real-device checks.

## Quick Workflow

1. Fix the target conformance level and scope before detailed design.
2. Start with the smallest mobile viewport and expand upward with `min-width` breakpoints.
3. Check every interaction across touch, pointer, keyboard, and assistive technology.
4. Validate visibility, contrast, text scaling, focus visibility, and target size numerically.
5. Prefer semantic HTML. Add ARIA only when native HTML cannot express the required role, state, or value.
6. Preserve consistent navigation, labels, status messages, form feedback, and media controls.
7. Verify mobile constraints: virtual keyboard, safe area, orientation, fixed nav, and one-hand use.
8. Record validation evidence and unresolved risks before release.

## Load Detailed Reference When Needed

Read `references/mobile_first_web_app_ui_ux_a11y.md` when:

- drafting UI/UX/a11y acceptance criteria;
- reviewing a screen, component, PR, design, or implementation;
- building mobile-first search, result list, video detail, save/share, filter, tag, or form UI;
- deciding concrete thresholds for target size, contrast, zoom, reflow, keyboard behavior, captions, or status messages;
- writing a checklist or QA gate for release.

## Minimum Acceptance Gate

A new screen or component is not ready unless it passes:

- WCAG 2.2 A/AA requirement review for relevant criteria.
- Keyboard-only operation with visible, unobscured focus.
- Screen reader check for names, roles, states, values, order, and status messages.
- Contrast checks for text, UI boundaries, focus indicators, icons, and state cues.
- Touch target checks: at least 24 x 24 CSS px, with 44-48 px class targets for primary actions where practical.
- Reflow checks at 320 CSS px and high zoom without loss of content or functionality.
- Mobile checks for virtual keyboard, fixed header/footer, orientation, and safe-area behavior.

## Review Output Shape

When reviewing, lead with concrete findings. For each issue, include:

- affected screen/component;
- violated rule or principle;
- user impact;
- required fix;
- verification method.

If no issue is found, state the checks performed and any residual untested risk.
