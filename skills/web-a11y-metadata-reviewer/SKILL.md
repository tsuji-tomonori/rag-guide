---
name: web-a11y-metadata-reviewer
description: Use when adding, reviewing, or generating documentation for Web UI accessibility metadata such as accessible names, descriptions, ARIA state, live regions, labels, and alt text.
---

# Web A11y Metadata Reviewer

Use this skill for Web UI work that touches React components, generated UI inventories, buttons, links, forms, status messages, error messages, dialogs, navigation, tables, panels, icons, or any custom component that behaves like an interactive control.

## Goal

Give screen reader users enough Japanese metadata to understand:

- what an element is
- what action it performs
- what state it is in
- what result or risk the action has
- which field, help text, error, or panel it relates to

Do not add metadata to every DOM element. Add it where it improves understanding or operation.

## Elements That Must Be Reviewed

Add or verify accessible metadata for:

- Interactive controls: `button`, `a`, `input`, `select`, `textarea`, and custom components that act like controls.
- Icon-only or visual-only controls: copy, close, expand/collapse, download, delete, favorite, debug step, navigation icon, and menu controls.
- Risky or high-impact actions: delete, suspend, unsuspend, role assignment, publish, disable, reject, benchmark cancel, reindex stage, reindex cutover, rollback, and data export/download.
- Stateful UI: active navigation, selected rows/items, expanded/collapsed panels, tabs, loading, copied/saved/submitted state, disabled controls, progress, and current page/view.
- Forms: every input/select/textarea must have a visible `label`, `aria-label`, or `aria-labelledby`. Help text and error text should be connected with `aria-describedby`.
- Dynamic messages: loading/status should use `role="status"` or `aria-live="polite"` when useful; errors should use `role="alert"` or an assertive live region when the user must notice them.
- Media and SVG: meaningful images need `alt` or equivalent accessible name. Decorative icons/SVGs should be hidden with `aria-hidden="true"` or rendered through an icon component that is decorative by default.

## Preferred Techniques

1. Prefer semantic HTML before ARIA.
   - Use `button` for actions, `a` for navigation, `label htmlFor` for form fields, headings for structure, and `progress` for progress values.
2. Prefer visible Japanese text as the accessible name.
   - Do not add `aria-label` that merely repeats visible button text.
3. Use `aria-label` for icon-only controls or controls whose visible text is not enough.
   - Example: `aria-label="回答をコピー"`
4. Use `aria-describedby` for supplemental explanation, risk, constraints, or current status.
   - Example: delete/reindex/cancel operations should reference short help text when the risk is not obvious from the name.
5. Use state attributes for stateful controls.
   - `aria-current` for current navigation.
   - `aria-expanded` and `aria-controls` for expand/collapse.
   - `aria-selected` for selected items where the widget semantics require it.
   - `aria-invalid` plus `aria-describedby` for invalid fields.
   - `aria-busy` for containers being updated.
6. Keep Japanese metadata short.
   - Good: `aria-label="会話を削除"`
   - Avoid: long instructional text inside `aria-label`.

## What To Avoid

- Do not add `aria-label` to static text, plain containers, or headings that already speak for themselves.
- Do not override clear visible labels with different hidden names.
- Do not describe layout or visual styling unless it affects operation.
- Do not make decorative icons focusable or announced.
- Do not use `role` to replace native semantics without a clear need.
- Do not mark checks as complete when only static analysis was run.

## Review Checklist

- [ ] Every interactive control has an accessible name from visible text, `aria-label`, `aria-labelledby`, `alt`, or associated label.
- [ ] Icon-only controls have short Japanese `aria-label`.
- [ ] Risky actions expose the target and risk through accessible name or `aria-describedby`.
- [ ] Form fields are associated with labels and relevant help/error text.
- [ ] Stateful controls expose state with appropriate `aria-*`.
- [ ] Loading, success, copied, submitted, and error messages are perceivable where needed.
- [ ] Decorative icons/SVGs are hidden from assistive technology.
- [ ] Generated documentation distinguishes confirmed metadata from static-analysis warnings.

## Validation

Run the smallest relevant checks:

- `npm run docs:web-inventory`
- `npm run docs:web-inventory:check`
- `npm run typecheck -w @memorag-mvp/web`
- `npm run test -w @memorag-mvp/web`
- `npm run lint`
- `git diff --check`

If Playwright or manual screen reader testing is not run, report it as a limitation.
