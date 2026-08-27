# Mobile-First Web App UI/UX/A11y Reference

This reference is for design, implementation, review, and QA of mobile-first Web application screens such as search home, search results, video detail, save/share, filters, tags, forms, and media UI.

## 1. Fix the Conformance Target First

Purpose: keep design, implementation, and QA decisions aligned.

Rules:

- MUST use WCAG 2.2 Level AA as the product's default target. Level AA includes Level A and Level AA success criteria.
- MUST reference JIS X 8341-3:2016 Level AA for Japan-facing services, and add WCAG 2.1/2.2 mobile, touch, and cognitive-load criteria where JIS X 8341-3:2016 does not cover newer topics.
- SHOULD document accessibility policy, target scope, exceptions, test results, known issues, and improvement plans.

Acceptance:

- Before release, every new screen/component has passed checks for WCAG 2.2 A/AA, keyboard operation, screen reader behavior, contrast, tap area, and reflow.

## 2. Design Mobile First, Then Expand

Purpose: make the smallest screen define the core information and operation model.

Rules:

- MUST make mobile the base CSS and expand to tablet/desktop with `min-width` breakpoints.
- MUST preserve content and functionality at 320 CSS px width, or equivalent 400% zoom, without requiring two-dimensional scrolling in normal page flows.
- SHOULD use one column on mobile, two columns on tablet, and add sidebars or auxiliary panels on desktop only when they improve scannability.

Acceptance:

- Widths 320 px, 375 px, 768 px, and 1024 px or wider work.
- 200% and 400% zoom work.
- Search, filtering, save, detail navigation, and back navigation can be completed without horizontal scrolling.

## 3. Support Touch, Pointer, and Keyboard

Purpose: keep all functions available to touch users, keyboard users, switch users, voice input users, and assistive technology users.

Rules:

- MUST make interactive targets at least 24 x 24 CSS px.
- SHOULD make primary buttons and icon buttons at least 44 x 44 CSS px, or 48 x 48 dp equivalent, where layout permits.
- MUST NOT depend only on swipe, drag, or long press. Provide a single-pointer alternative.
- MUST make all functions operable with keyboard alone.
- MUST avoid keyboard traps.
- MUST keep focused elements from being fully hidden by fixed headers, bottom navigation, modals, or toasts.

Acceptance:

- `Tab`, `Shift+Tab`, `Enter`, `Space`, and `Esc` can complete search, suggestion selection, filter open/close, save, share, video detail navigation, comment input, and modal close.

## 4. Guarantee Visibility and Readability Numerically

Purpose: ensure text, controls, and state indicators remain readable under low vision, aging, outdoor use, and low-brightness displays.

Rules:

- MUST provide at least 4.5:1 contrast for normal text.
- MUST provide at least 3:1 contrast for large text.
- MUST provide at least 3:1 contrast for meaningful non-text UI, including button borders, input boundaries, focus indicators, icons, and charts.
- MUST NOT use color alone to convey state. Selection, errors, saved state, popularity, and active filters need text, icon, shape, or label support.
- MUST preserve content and function at 200% text scaling.

Acceptance:

- Design tokens such as `text/default`, `text/subtle`, `border/focus`, `surface/card`, `state/error`, and `state/saved` have recorded contrast results.

## 5. Prefer Semantic HTML; Minimize ARIA

Purpose: let screen readers, voice control, browser extensions, search engines, and future assistive technology understand the UI structure.

Rules:

- MUST use `button` for buttons, `a` for links, `input`/`textarea`/`select` for inputs, `ul`/`ol` for lists, and `h1`-`h6` for headings.
- MUST NOT make pseudo-buttons from clickable `div` or `span` elements.
- MUST ensure every UI component exposes name, role, state, and value programmatically.
- SHOULD follow WAI-ARIA Authoring Practices Guide patterns for custom UI.
- MUST use ARIA only when native HTML cannot express the intended semantics.

Acceptance:

- A screen reader naturally announces the search field, suggestion list, filters, cards, save button, video player, comment field, and navigation.

## 6. Keep Navigation and Information Architecture Consistent

Purpose: help users understand where they are, what they can do next, and how to return.

Rules:

- MUST make page titles, headings, and labels describe each screen's purpose.
- MUST keep repeated navigation in the same order with the same names.
- SHOULD preserve system status visibility, user-language wording, undo/back paths, platform conventions, recognition over recall, minimal display, and useful help.

Acceptance:

- Search results preserve and show search term, active filters, result count, sort order, saved state, and return position after visiting details.

## 7. Make Search, Forms, and Input Help Accessible

Purpose: keep search, tags, filters, login, and comments understandable and recoverable.

Rules:

- MUST provide visible and programmatic labels for inputs.
- MUST NOT use placeholders as the only label.
- MUST explain input errors in text.
- SHOULD provide correction suggestions when known.
- MUST NOT ask users to re-enter information already provided in the same process when it can be auto-filled or selected.
- MUST NOT make authentication depend only on memory tests, puzzles, or non-copyable strings.

Acceptance:

- Search suggestions are keyboard selectable and screen-reader readable.
- Filter chips expose selected state and removal actions.
- Input errors appear both near the field and in a summary when useful.

## 8. Announce State Changes, Save Results, and Errors

Purpose: make loading, saved, shared, failed, and empty states clear visually and non-visually.

Rules:

- MUST communicate loading, save, delete, submit, and failure state changes through on-screen text and assistive-technology status messages.
- MUST NOT trigger navigation or major context changes merely on focus.
- SHOULD provide confirmation, undo, or restore flows for destructive actions.

Acceptance:

- Pressing Save updates button state, text, icon, and an `aria-live`-equivalent notification.
- Failure states show the reason and the next available action.

## 9. Make Media, Animation, and Autoplay Controllable

Purpose: avoid unnecessary load for hearing, vision, cognitive, and vestibular accessibility.

Rules:

- MUST provide purpose-appropriate alternative text for meaningful images, thumbnails, and icons.
- MUST hide purely decorative images from assistive technology.
- MUST provide captions for prerecorded video.
- SHOULD provide audio description or text alternative when visual content is essential.
- MUST provide stop, pause, or volume control for audio that autoplays longer than 3 seconds.
- MUST provide stop, pause, hide, or frequency control for moving, blinking, scrolling, or auto-updating information.
- MUST avoid flashes above three times per second.
- SHOULD respect `prefers-reduced-motion` and reduce or disable nonessential animation.

Acceptance:

- Video detail screens expose keyboard and screen-reader operable play, pause, volume, captions, fullscreen, seek, save, and share controls.

## 10. Specify Language, Reading Order, and Structure

Purpose: make Japanese UI, English titles, tags, creator names, dates, numbers, and comments read naturally.

Rules:

- MUST specify the page language, such as `lang="ja"`.
- MUST specify language changes for meaningful sections in other languages when practical.
- MUST align visual order, DOM order, and reading order when sequence affects meaning.
- SHOULD make dates, durations, view counts, tags, and state labels meaningful when read aloud.

Acceptance:

- A search result card reads in a natural order: title, category, date, duration, views, saved state, and actions.

## 11. Design for Mobile Constraints

Purpose: prevent breakage under one-hand use, small screens, rotation, bottom navigation, virtual keyboards, and safe areas.

Rules:

- MUST NOT lock the UI to only portrait or only landscape unless the orientation is essential.
- MUST keep inputs, submit buttons, errors, and suggestion lists visible when the virtual keyboard is open.
- SHOULD place primary actions where thumbs can reach them, while ensuring fixed bottom UI does not hide focus, content, toasts, or modal controls.

Acceptance:

- On a phone, important actions remain reachable and visible when search is focused, filters are open, comments are being entered, and errors are displayed.

## 12. Make Automated and Manual Testing a Quality Gate

Purpose: avoid approving UI only by visual inspection or automated checks.

Rules:

- MUST NOT treat automated tests alone as sufficient.
- MUST check keyboard operation, screen reader behavior, zoom, reflow, contrast, target size, form errors, and video controls for every release.
- SHOULD use quick checks for early discovery, but not as a comprehensive evaluation.

Acceptance:

- PR or release checks include axe/Lighthouse or equivalent automation, keyboard manual test, VoiceOver or NVDA check, 320 px/400% zoom check, and real-device checks for main flows.

## Minimum Implementation Checklist

1. WCAG 2.2 Level AA is the stated baseline.
2. 320 px width and 200%/400% zoom do not break content or functionality.
3. All operations are possible with keyboard alone.
4. Focus is visible and not hidden.
5. Touch targets are at least 24 x 24 CSS px; primary actions are 44-48 px class where practical.
6. Normal text has at least 4.5:1 contrast; meaningful UI parts have at least 3:1.
7. Color is not the only way state is conveyed.
8. Inputs have labels, descriptions, errors, and correction suggestions where useful.
9. Semantic HTML is used before ARIA.
10. Save, delete, search, loading, and other state changes are announced.
11. Video has captions, alternatives where needed, and operable controls.
12. Real mobile devices, screen readers, keyboard, and zoom have been tested.

## Source References

- W3C: Web Content Accessibility Guidelines (WCAG) 2.2, https://www.w3.org/TR/WCAG22/
- NICT: JIS X8341-3:2016 overview, https://www.nict.go.jp/info-barrierfree/jis/gaiyou.html
- Digital Agency: Web Accessibility Introduction Guidebook, https://www.digital.go.jp/resources/introduction-to-web-accessibility-guidebook
- Cabinet Office: Reasonable accommodation obligation leaflet, https://www8.cao.go.jp/shougai/suishin/sabekai_leaflet-r05.html
- Digital Agency: Web accessibility test result example, https://www.digital.go.jp/accessibility-statement/test-result-2025
- MDN: Responsive web design, https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Responsive_Design
- W3C WAI: ARIA Authoring Practices Guide, https://www.w3.org/WAI/ARIA/apg/
- W3C WAI: APG Read Me First, https://www.w3.org/WAI/ARIA/apg/practices/read-me-first/
- Nielsen Norman Group: 10 Usability Heuristics for User Interface Design, https://www.nngroup.com/articles/ten-usability-heuristics/
- W3C WAI: Easy Checks - A First Review of Web Accessibility, https://www.w3.org/WAI/test-evaluate/preliminary/
