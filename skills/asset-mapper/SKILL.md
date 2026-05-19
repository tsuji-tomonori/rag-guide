---
name: asset-mapper
description: Map visible assets from screenshots, Figma frames, or visual references to existing repository assets, icon components, SVGs, generated assets, or explicitly documented placeholders before UI implementation.
---

# Asset Mapper

Use this skill before implementing or changing visible assets from a screenshot, Figma frame, or visual mockup.

## Workflow

1. Inventory assets visible in the reference:
   - logos and brand marks;
   - icons and controls;
   - product images, avatars, backgrounds, illustrations, textures, and media;
   - state-specific assets such as selected, disabled, hover, or error icons.
2. Search existing repository asset locations before adding anything:
   - `public/`;
   - `assets/`;
   - `src/assets/`;
   - `app/`;
   - component-local image or icon folders;
   - existing icon components or design-system primitives.
3. Choose an implementation source for each asset:
   - exact existing asset;
   - provided source asset;
   - existing icon component;
   - simple inline SVG or CSS shape;
   - generated bitmap asset when an exact bitmap is required and generation is allowed;
   - documented placeholder only when no exact asset is available and the user or task permits it.
4. Record the mapping in the UI spec or task notes before implementation.

## Rules

- Prefer exact provided or existing assets over approximations.
- Never approximate logos or brand marks with unrelated marks.
- Do not add a new icon package when a local icon system or simple SVG is sufficient.
- Do not use emoji as product icons unless the existing design system already does so.
- Do not silently replace missing product imagery with stock-like or unrelated visuals.
- If exact reproduction requires an unavailable source asset, document the gap and ask only when it blocks the build.

## Output

Return an asset mapping table with:

- reference asset description;
- chosen source path or component;
- implementation method;
- exactness level: exact, close, approximate, placeholder, or blocked;
- notes and follow-up needs.
