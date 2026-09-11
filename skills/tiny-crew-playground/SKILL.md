---
name: tiny-crew-playground
description: Create one standalone 3:2 editorial tiny-people story image from each uploaded real photo by extracting 1–3 source-faithful visual anchors. Use for 小人故事图、趣味小人图、只要小人部分、不要上下拼接, or when the user invokes this skill. Do not use when the user requests a complete 3:4 split poster containing the original photograph above.
---

# 小人忙着呢

Turn each supplied photograph into one newly generated, independent tiny-people story image. Do not include the original photograph as a separate panel and do not composite an upper/lower poster.

## Interaction

Default to immediate generation. Ask one short, photo-specific three-way story question only when the user explicitly says “先问我” or asks for directions. Put the recommended idea first and proceed with it if the user does not choose. Do not ask about fixed technical settings.

## Read the Photo

Inspect the real source and determine internally:

- the memorable action, relationship, scale, lived-in detail, or mood;
- 1–3 recognizable source-faithful visual anchors;
- a continuous micro-story with a setup, collaboration, and small payoff;
- a pale background color derived from the photo;
- one short English thought that adds meaning without naming the featured object.

Select anchors for meaning rather than size. Preserve their identity, structure, material, color, and distinctive imperfections. Do not invent brands, locations, animals, architecture, or important props.

## Image

Create exactly one borderless 3:2 horizontal image per source photo. The composition is a spacious warm-white, cream, or pale source-derived field containing the 1–3 anchors in restrained photoreal detail. It should feel like the memorable pieces of the photo have been lifted into a quiet editorial stage, not like the full photo was copied or converted into an illustration.

Add 6 miniature black-line people by default; use 7 or 8 only when the spatial structure genuinely supports them. Every person must contribute to one readable story through actions such as climbing, carrying, passing, organizing, observing, catching, reading, resting, arranging, collaborating, or celebrating. No one should merely stand and pose.

Use fine, slightly wavering hand-drawn black lines, simple round or oval heads, dot-and-short-line faces, small bodies, and mostly white interiors. Keep the work cute, light, a little awkward, and restrained enough for an independent magazine.

Every figure must be visibly distinct in hairstyle, height, build, shoulder width, clothing silhouette, accessory, temperament, and pose. Vary short hair, curls, ear-length hair, bun, side part, or nearly bald heads; vary short sleeves, rolled sleeves, sweaters, overalls, aprons, dresses, or loose trousers. Use round glasses, a small hat, or a scarf sparingly. Maintain one illustrator's consistent line weight and simplification across the image.

## Figure Systems

Auto-select one system and keep it unified within an image:

- **细线编辑** — delicate observational figures for quiet lifestyle scenes.
- **松弛涂鸦** — quicker elastic poses for food, movement, work, and playful scenes.
- **几何极简** — controlled angular bodies for architecture, interiors, and products.
- **诗意轮廓** — sparse slow gestures for atmospheric or spacious photographs.

When several photos form a set, preserve the same figure system, line weight, text scale, and whitespace rhythm unless the user requests variation.

## Text

Write exactly one English phrase of 2–7 common words. Make it light, clever, tender, gently funny, or slightly poetic, like a note or passing thought. Do not directly identify the featured object. Render it once in small, legible, naturally irregular black handwriting along an anchor contour, character action, or negative-space rhythm. No title, subtitle, number, caption, signature, watermark, or other new text.

## Execution

1. Treat the photo as a factual visual reference, not as a panel to preserve in the output.
2. Apple Photos may supply a file named `.jpeg` whose encoding is MPO. If the image tool rejects it or inspection reports MPO/HEIC, run `scripts/normalize_photo.sh INPUT OUTPUT.jpeg`; never modify the original.
3. Use the built-in image generation tool by default. State the anchors, full six-to-eight-person action chain, chosen figure system, exact English phrase, pale field, and exclusions in one source-specific prompt.
4. Make one generation call per source photo. Do not request variants unless the user asks.
5. Inspect anchor fidelity, figure count and differences, anatomy, story continuity, whitespace, and verbatim text. Make at most one focused retry for a material failure. Keep drafts internal when tooling permits and return only the selected final image.

## Exclusions

No original-photo upper panel, before/after comparison, split poster, multi-image collage, grid, rounded card, scrapbook, sticker, heavy outline, chibi head, children's-book style, comic panel, colored or 3D person, watercolor, sepia aging, clutter, unrelated animal, repeated figure, malformed limb, random prop, long copy, gibberish, watermark, or invented logo.

## Shorthand

- “直接出图” — choose everything from the photo and generate immediately.
- “先问我” — offer one three-way story choice, then generate.
- “小人风格：细线 / 涂鸦 / 几何 / 诗意” — select the corresponding figure system.
- “整组统一” — lock figure system, line weight, text scale, and whitespace rhythm across all supplied photos.
