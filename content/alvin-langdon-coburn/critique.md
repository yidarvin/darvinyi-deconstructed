verdict: revise

## Critique round — 2026-07-16

Reviewed all twelve proof PNGs against their overlay specs, analyzer records, source notes, research, manifest, and chapter text.

### Required

1. `01-corner-of-25-mortimer-street`: correct the `sources.md` “Why it matters” description. It calls the visible work a “narrow façade study” with a “window grid” and “street corner,” while the proof and overlay show a digitized mounted print of an interior with a seated figure, wall pictures, and fireplace. The chapter and spec already make the latter distinction; the source note must agree.
2. `03-portrait-of-george-bernard-shaw`: correct the `sources.md` “Why it matters” description. It claims a reclining outdoor portrait between “tree trunk and bright path,” but the proof, overlay, and chapter all show the close head-and-beard portrait against a dark field. This is a wrong visible subject/structure in the source record.
3. `09-spider-webs`: stop presenting the visible boat rigging and its reflection as a literal physical web. The two overlay polylines labeled `WEB STRAND`, the `WEB FIELD` frame, and the chapter/source language about “web strands” and a “complete net” teach the wrong object: the proof shows masts/rigging and reflected vertical lines. Retain *Spider-Webs* as the documented title if desired, but relabel and describe the traced features as rigging/reflected rigging (and may note that the title makes the lattice analogy).

### Advisory (non-blocking)

None.

## Resolution — 2026-07-16

Re-verified prior critique round: 2026-07-16 (`e67c836`).

1. `01-corner-of-25-mortimer-street`: `sources.md` now identifies the digitized mounted print's interior, seated figure, wall pictures, fireplace, and nested reproduction frame.
2. `03-portrait-of-george-bernard-shaw`: `sources.md` now identifies the close head-and-beard portrait against its dark field.
3. `09-spider-webs`: relabeled the rendered overlay as boat rigging, reflected rigging, waterline, and boat/reflection; corrected the source note, chapter, rendered chapter copy, and proof contact-sheet caption. The re-rendered proof received 100/100 with no deterministic deductions or warnings and passed visual review.

`content/alvin-langdon-coburn/chapter.mdx` and `src/chapters/alvin-langdon-coburn.mdx` were confirmed byte-identical. The full `scripts/check.sh` gate passed in an isolated worktree containing this resolution, preserving unrelated in-progress repository changes.

## Critique round — 2026-07-16

Reviewed all twelve current proof PNGs against the rendered specs, source/research records, chapter text, and analyzer records. The 100/100 deterministic scores confirm the stored analyzer geometry but do not validate the semantic names below. The three findings from the prior 2026-07-16 round remain resolved: `01` and `03` source descriptions name the visible portraits correctly, and `09` correctly identifies rigging and reflection rather than a literal web.

### Required

1. `03-portrait-of-george-bernard-shaw`: replace or relabel `SHOULDER BREAK` (`horizon_line`, `y: 0.393`). In the proof it crosses Shaw's upper face/cheeks; the shoulder and coat are materially lower in the frame. The matching analyzer value is a luminance split, not evidence of a shoulder at that location.
2. `08-the-bridge-venice`: move or relabel the `BRIDGE FIGURE` anchor at `(0.415, 0.304)`. It sits below the lone standing figure, on the bridge arch/deck area. Correct the matching overlay note and chapter sentence that say the anchor catches the figure.
3. `10-williamsburg-bridge`: correct both mis-traced structural claims. `DISTANT BRIDGE DECK` at `y: 0.664` crosses the lower foreground and silhouettes, not the distant bridge deck; the `DIAGONAL GIRDER` polyline `(0.23,0.92) -> (0.54,0.51) -> (0.82,0.12)` runs through the open aperture rather than either visible heavy girder. Re-trace the pictured structures or rename the primitives to what they actually indicate.
4. `12-max-weber`: correct the image description and anchor. This is a three-quarter/frontal portrait, not a profile; `PROFILE`, `PROFILE BALANCE`, and `PROFILE EYE` therefore misname the visible pose, and the `(0.784, 0.335)` anchor falls on the far-side ear/temple rather than the eye. Update the overlay and its note, the chapter paragraph/caption, and the `sources.md` description to match the visible portrait.
5. `sources.md`: correct the count in the rights-basis statement from “eleven downloaded files” to twelve. The current `manifest.json` contains the twelve ingested files `01` through `12-max-weber`, so the stated count is false.

### Advisory (non-blocking)

- `07-weirs-close-edinburgh`: tighten the first point of `SUNLIT PATH` if the overlay is next rendered; it begins slightly in dark paving before reaching the light wedge, but the diagonal still reads correctly.
