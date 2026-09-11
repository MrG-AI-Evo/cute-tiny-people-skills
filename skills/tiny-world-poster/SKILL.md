---
name: tiny-world-poster
description: 小人剧场分屏版：将每张上传的真实照片生成一张完整的 3:4 上下分屏编辑海报，上半保留真实摄影场景，下半加入从原图提炼的趣味小人故事。适用于小人剧场分屏版、真实照片＋趣味小人海报或上下分区小人海报；只要独立小人故事图时应使用小人剧场。
---

# 小人剧场分屏版

Create the finished poster in one image-generation/editing pass whenever possible. Each source photo produces one independent poster. Never combine different photos into a collage, collection, contact sheet, or multi-image grid.

## Interaction

Default to zero-friction execution: inspect the uploaded photo and generate immediately. Ask one short, photo-specific three-way story question only when the user explicitly says “先问我” or requests creative directions. Put the recommended direction first; if no answer arrives, proceed with it. Do not ask about aspect ratio, character count, typography, or other rules already fixed here.

## Interpret the Source

Before generating, determine internally:

- the source's memorable visual or emotional core: a subject, action, relationship, spatial scale, lived-in state, or mood;
- 1–3 source-faithful anchors that represent its spirit rather than merely its largest objects;
- a continuous tiny-people story with a setup, collaboration, and payoff;
- a pale lower-panel color derived from the source;
- one short English line that adds meaning without naming the object.

Use only source-grounded subjects and props. Do not invent brands, locations, buildings, animals, or important objects.

## Whole-poster Layout

Generate one 3:4 vertical canvas. Divide it visually at exact mid-height into two equal rectangular halves, each occupying 50% of the height, with one clean thin straight horizontal divider. No rounded corners, border, frame, card, torn edge, tape, or ornamental separator.

### Upper half — real photograph

Preserve the uploaded photograph's main composition, subject count, identities, poses, spatial relationships, material textures, colors, natural light, and authentic photographic character. Apply only subtle, restrained lifestyle-magazine or independent-publication color grading.

Reframe minimally. Extend only peripheral sky, wall, floor, tabletop, or environmental edges when needed to fit the upper rectangle. Do not stretch, distort, repaint, replace, beautify, or relocate core subjects. Preserve real shop names, architectural text, signs, packaging, and logos already present; never add, rewrite, or “correct” them.

“Preserve the main composition” means retaining the photo's essential relationship and atmosphere, not protecting every peripheral pixel at the cost of cutting away the visual story.

### Lower half — editorial story reconstruction

Do not mechanically copy the full photograph or automatically isolate its largest object. Recompose the selected 1–3 anchors with their original identity, structure, material, color, and recognizable source character. Use restrained photoreal texture for the anchors against warm white, cream, or a pale source-derived field with generous clean negative space.

Add 6 miniature black-line people by default; use 7 or 8 only when the space remains breathable. All figures participate in one continuous story through actions such as climbing, carrying, passing, organizing, observing, catching, reading, resting, arranging, collaborating, or celebrating. Every action must respond to the anchor's structure and the source photo's latent meaning; no idle posing.

Use fine, slightly wavering black hand-drawn lines, simple round or oval heads, dot-and-short-line faces, small agile bodies, and mostly white interiors. Keep the tone cute, light, slightly awkward, and editorial rather than childish.

Make every figure distinct in hairstyle, height, build, shoulder width, clothing silhouette, accessory, temperament, and pose. Vary short hair, curls, ear-length hair, bun, side part, or nearly bald heads; vary short sleeves, rolled sleeves, sweaters, overalls, aprons, dresses, or loose trousers. Use round glasses, a small hat, or a scarf on only a few. Keep one consistent line weight, simplification level, and illustrator's language.

## Text

Create exactly one English phrase of 2–7 common words based on the source core, mood, and micro-story. Make it light, clever, healing, gently funny, or slightly poetic, like a note, off-screen remark, or fleeting thought. Do not directly name the featured object.

Render the phrase once, verbatim, in small, clear, naturally irregular black handwriting that follows an anchor contour, character action, or whitespace rhythm. No title, subtitle, numbering, caption, label, signature, watermark, or other new text.

## Series Consistency

Different photos may have different stories and source-derived pale colors. Within a set, lock the 3:4 layout, 50/50 split, divider treatment, figure drawing language, text scale, and whitespace relationship so the posters feel authored as one series.

## Execution

1. Treat the uploaded photo as the single edit target for its poster.
2. Apple Photos may supply a file named `.jpeg` whose encoding is MPO. If the image tool rejects it or inspection reports MPO/HEIC, run `scripts/normalize_photo.sh INPUT OUTPUT.jpeg`; never modify the original.
3. Use the built-in image editing/generation tool by default. Make one full-poster call per photo, carrying all layout, photo-preservation, anchor, figure, story, text, and exclusion constraints in the same source-specific prompt.
4. Do not split the image into separately generated panels and do not use deterministic post-compositing as the default workflow.
5. Inspect the result for a visually centered half split, preservation of the source's essential composition, recognizable anchors, 6–8 distinct figures, readable anatomy, coherent action, exact English text, and absence of extra text or collage artifacts.
6. If there is a material failure, make at most one focused edit or regeneration that preserves the successful parts. Do not turn minor pixel-level variance into a multi-stage production pipeline. Keep drafts internal when tooling permits and return only the selected final poster.

## Exclusions

No multi-photo collage, complex grid, rounded card, scrapbook sticker, heavy outline, chibi head, children's-book look, comic storyboard, colored cartoon person, 3D person, watercolor conversion, sepia aging, clutter, unrelated animal, repeated figure, malformed limb, random prop, long copy, gibberish, new watermark, or invented logo.

## Shorthand

- “直接出图” — analyze and generate the complete poster immediately.
- “先问我” — offer one photo-specific three-way story choice, then generate.
- “整组统一” — lock layout, figure style, text scale, and whitespace rhythm across the supplied set.
