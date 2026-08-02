verdict: resolved

## Critique round — 2026-08-02

### Required fixes

1. Correct the image-specific descriptions and the pedagogical-necessity portions of the fair-use rationales in `sources.md` for `05-untitled-54`, `06-untitled-66`, `08-untitled-20`, `09-untitled-22`, `10-untitled-45`, and `11-untitled-52`. The linked Blindspot display JPEGs trace to the stated ingested plates (dimensions and decoded pixels match), but these entries describe different scenes: the current text respectively claims a patterned indoor group, a vertical isolated figure, repeated limbs, a low looping body band, an abstract interlocking pose, and a wide balance of separate bodies. The visible plates instead show the fish-and-liquid portrait, the woman on a horse, the blue-dress powder scene, the rooftop figure, the flower-crowned braided back, and red hands on a chest. This is a material source-note and fair-use-rationale mismatch that misidentifies the photographs. Retain the existing authoritative links, title/date/credit, and four-factor structure, but make each description and necessity statement specific to its actual complete frame.

### Advisory (non-blocking)

- `03-untitled-46`: the deterministic scorer prefers a phi grid to the displayed thirds grid (92/100, still above the acceptance threshold). The body-ridge argument remains clear and the chapter explicitly treats its grid as a measuring aid; this does not block publication.

### Review evidence

- Looked at all eleven current proof PNGs. Their labels trace visible kisses, contours, face row, leaf/ground break, fish, horse, dove, powder, rooftop, braid/flowers, and red hands; each overlay has three to four pedagogically relevant primitives.
- Re-ran the strict overlay scorer: ten overlays scored 100/100 and `03-untitled-46` scored 92/100. No primitive produced a strict annotation warning or failing score.
- The chapter and research notes accurately describe the displayed scenes and measured web-JPEG data, and they explicitly avoid undocumented camera or production settings.

## Resolution — 2026-08-02

Resolved required fix 1. Updated the six affected `sources.md` entries so that their descriptions and pedagogical-necessity statements identify the actual complete frames: fish and liquid, horse and branches, blue dress and powder, rooftop figure, flower-crowned braid, and red hands on a chest. The authoritative Blindspot links, title/date data, credits, and four-factor fair-use structure are retained.

Re-verified critique history: 2026-08-02, round 1 (the only prior round). All eleven existing overlay proofs remain visually aligned with their literal labels; strict scoring remains 100/100 for ten plates and 92/100 for `03-untitled-46`, above the required 80 threshold. The non-blocking phi-grid advisory was intentionally left unchanged because the existing thirds grid remains a documented, passing measuring aid.

## Critique round — 2026-08-02

### Required fixes

1. In `chapter.mdx`, correct the caption for `11-untitled-52`, which now says “Red hands make bilateral tension across a tightly cropped back.” The visible proof is a front chest crop (collarbones and chest are visible), and both its overlay (`CHEST AXIS`) and source note correctly call it a chest. Calling it a back is a material misidentification of the photographed body surface; revise the caption to say chest or torso.

### Advisory (non-blocking)

- None.

### Review evidence

- Looked at all eleven current proof PNGs against their overlay specs. Each has three or four relevant primitives whose literal labels trace the pictured kisses, body contours, faces, leaf/ground break, fish, horse, dove, powder, roof, braid/flowers, or red hands. `11-untitled-52` alone conflicts with its chapter caption as described above.
- Re-ran the overlay scorer: ten overlays score 100/100 and `03-untitled-46` scores 92/100. Its previously settled phi-grid preference remains advisory only; no resolved finding materially regressed.
- All eleven authoritative Blindspot gallery/display links returned HTTP 200. Sources retain an image-specific four-factor fair-use rationale and the chapter/research state no undocumented camera or production settings.

## Resolution — 2026-08-02

Resolved required fix 1. In both rendered chapter copies, the `11-untitled-52` caption now identifies the tightly cropped **chest**, matching the visible collarbones/chest, the `CHEST AXIS` overlay label, and its source note.

Re-verified critique history: the 2026-08-02 fair-use/source-note round and its prior resolution. The six corrected source entries still identify their actual complete frames (fish and liquid; woman, horse, and branches; blue dress and powder; rooftop figure; flower-crowned braid; and red hands on a chest), with their image-specific necessity rationales intact. I visually rechecked the resolved plate and re-ran strict scoring on all eleven current overlay specs: ten score 100/100 and `03-untitled-46` scores 92/100, all above the required threshold. The prior phi-grid item remains advisory and was deliberately not changed.
