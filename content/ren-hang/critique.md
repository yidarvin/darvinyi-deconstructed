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

## Critique round — 2026-08-02

### Required fixes

1. `01-untitled-16`: reposition both `UPPER KISS` and `LOWER KISS` subject anchors onto their respective visible mouth-contact points. In the current proof, the upper anchor at `(0.638, 0.491)` sits in the central sitter's dark hair, below and to the right of the upper kiss; the lower anchor at `(0.370, 0.689)` likewise sits left and above the lower lips. These labels make literal, false claims about the points they mark.

2. `04-untitled-50`: remove or replace the `vanishing_point` labelled `STEM CONVERGENCE` at `(0.339, 0.597)`. The marker lands on bare ground beside the figure, where no stems converge. The fallen lotus stem is a visible directional contour, but it is not a perspective convergence; use a literal contour/leading-line claim if retaining that teaching point.

### Advisory (non-blocking)

- `11-untitled-52`: the unrendered overlay `notes` field still calls the pictured surface a “tightly cropped back.” The reader-facing caption, source note, and `CHEST AXIS` label were correctly resolved to chest, and the renderer does not expose `notes`, so this is not a publication blocker; align the metadata on the next builder pass to prevent future confusion.
- `03-untitled-46`: the deterministic scorer continues to prefer phi to the displayed thirds grid (92/100). This is the previously settled, non-blocking grid preference; its visible body-ridge argument remains clear.

### Review evidence

- Looked at all eleven current proof PNGs against their matching overlay specs. Apart from the two required corrections above, the labels trace visible kisses, contours, faces, leaf/ground break, fish, horse, dove, powder, rooftop, braid/flowers, and red hands; each overlay retains three or four compositionally relevant primitives.
- Re-ran strict scoring on every spec: ten score 100/100 and `03-untitled-46` scores 92/100; all pass the 80 threshold. The score does not detect the two semantic errors above, which are visible in the current proofs.
- Rechecked all eleven Blindspot Gallery display-file URLs and the estate gallery record: each returned HTTP 200. Every source entry retains a traceable link, credit, and image-specific four-factor fair-use rationale. Chapter and research claims match the visible plates and measured web-file data, and state no undocumented camera settings.

## Resolution — 2026-08-02

Resolved required fixes 1–2. `01-untitled-16` now marks each visible lip-contact point with a small labeled contact ellipse (`UPPER KISS` at `(0.444, 0.324)` and `LOWER KISS` at `(0.514, 0.707)`). These replace the detector-led subject anchors, which were visibly in hair rather than at the kisses. `04-untitled-50` now replaces the false `STEM CONVERGENCE` vanishing point with a literal `FALLEN LOTUS STEM` contour tracing the visible fallen stem. The advisory metadata wording in `11-untitled-52` now also says “chest.”

Re-verified critique history: all three 2026-08-02 rounds — the fair-use/source-note correction, the `11-untitled-52` chest-caption correction, and this overlay-correction round. The six source entries retain their corrected actual-frame descriptions and image-specific necessity rationales; the rendered and source chapter copies remain byte-identical and identify the final plate as a chest. I re-analyzed the two changed plates, visually checked their rendered proofs, and re-ran strict scoring across all eleven overlays: ten score 100/100 and `03-untitled-46` scores 92/100, all above the 80 threshold. The previously settled `03-untitled-46` phi-grid preference remains advisory and unchanged. `scripts/check.sh` passes.
