verdict: resolved

## Critique round — 2026-07-25

### Required

1. **01-rebellious-silence — correct the `RIGHT EYE` anchor and its prose claim.** The proof places the `subject_anchor` at `(0.607, 0.413)`, on the right cheek/calligraphic field below the visible right eye (roughly `(0.59, 0.30)`), not on the eye named by the label. This is materially outside the placement tolerance and makes the chapter's statement that the `(0.607, 0.413)` anchor is a right-eye anchor false. Move the primitive to the visible eye and revise the coordinate claim accordingly, or relabel it truthfully and remove the eye-specific claim.

2. **06-offered-eyes — make the `SINGLE EYE` ellipse trace the eye.** The ellipse at `(0.50, 0.46)` with radii `(0.44, 0.20)` surrounds the eyebrow and forehead and only partly encloses the eye; it does not trace the single eye that its label names. Tighten and lower it to the actual eye outline, then confirm the chapter's “eye ellipse” description remains literal.

### Advisory (non-blocking)

- **03-faceless — `INSCRIBED FACE FIELD` ellipse:** its top arc includes some veil above the exposed face, but it still clearly identifies the face field and does not mislead.

### Evidence checked

All seven current proof PNGs; their overlay and analyzer JSON; `chapter.mdx`, `research.md`, `manifest.json`, and `sources.md`. The documented fair-use records are present for every image, include the four-factor rationale and public institutional source routes, and the chapter correctly avoids treating delivery-file EXIF as Neshat camera data.

## Builder resolution — 2026-07-25

1. **01-rebellious-silence:** retained the analyzer-supported point at
   `(0.607, 0.413)` but relabeled it `RIGHT CHEEK / SCRIPT FIELD`; the mirrored
   chapter text now identifies it as an inscribed cheek field and locates the
   direct eyes above the rifle. The re-rendered proof is visually truthful and
   scores 100/100.
2. **06-offered-eyes:** tightened and lowered the `SINGLE EYE` ellipse to
   `(cx 0.46, cy 0.55, rx 0.38, ry 0.11)`, where it follows the visible eye
   rather than the brow. The re-rendered proof is visually clean and scores
   100/100.

Re-verified required fixes from the complete prior critique history: the
2026-07-25 critique round. Both chapter copies remain byte-identical.
