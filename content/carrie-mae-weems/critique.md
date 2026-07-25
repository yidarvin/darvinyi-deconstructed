verdict: revise

## Critique round — 2026-07-25

Reviewed all twelve rendered proofs against their overlay specifications, analysis records, chapter, research, manifest, and source notes. All proofs render at the natural square aspect; all twelve current specs score 100/100 (including strict scoring), but that geometric result does not validate the semantic claims below. Source titles, credits, official artist-page links, per-image four-factor fair-use notes, and the chapter's no-settings statement are adequate.

### Required (blocking)

1. **`symmetry_axis` is used as a generic alignment line rather than a claim of bilateral frame symmetry** — `01-man-and-mirror`, `03-eating-lobster`, `04-man-reading-newspaper-1`, `05-woman-and-phone`, `07-girlfriends-2`, `08-woman-brushing-hair`, `09-woman-and-daughter-with-makeup`, `10-woman-standing-alone`, `11-woman-feeding-bird`, and `12-woman-playing-solitaire`. In this schema, a symmetry axis says that the frame mirrors across it. The dashed lines instead accompany labels such as “LAMP / MIRROR AXIS” and “LAMP / BODY AXIS” in visibly asymmetric scenes. Remove or replace these primitives with annotations that make only supportable, visible claims; do not merely relabel a `symmetry_axis`.

2. **`02-man-smoking` draws two table edges that are not table edges.** The `FRONT TABLE EDGE` horizon line at `y: 0.892` crosses uninterrupted tabletop, while `RIGHT-SIDE TABLE EDGE` follows the foreground man’s shoulder/torso. Remove or retarget both claims. Revise `chapter.mdx:13`, which incorrectly says the overlay follows the actual right table edge.

3. **`05-woman-and-phone` and `06-girlfriends-1` mislabel detector lines as table edges.** `05`’s `TABLE EDGE` at `y: 0.836` crosses tabletop rather than an edge. In `06`, `FRONT TABLE EDGE` likewise crosses the tabletop, and `LEFT TABLE EDGE` terminates in the figures rather than tracing a table boundary. Remove or redraw these primitives and revise `chapter.mdx:31`, which depends on the false left-side perspective line.

4. **`08-woman-brushing-hair`’s `BRUSHING GESTURE` does not follow the visible grooming action.** After beginning near the brush/head contact, it runs down the seated woman’s face and chest. Retarget it tightly to the hand-to-hair action or remove it, and correct the corresponding claim in `chapter.mdx:39` that the diagram follows the visible brush path.

5. **`11-woman-feeding-bird` mistakes the standing mirror for the cage.** The ellipse labeled `CAGE CIRCLE` outlines the large round mirror; the birdcage is the rectangular form within that mirror. Its `REACH TOWARD CAGE` polyline also begins below the raised arm and crosses torso/empty space rather than following the arm or hand. Correct or remove both annotations and revise `chapter.mdx:53`, including its false assertion that the cage itself is circular.

6. **`12-woman-playing-solitaire`’s `TABLE-PLANE CONVERGENCE` point is on the figure’s chest/neckline, not a visible convergence of the tabletop.** Remove it or replace it with a claim that the image visibly supports.

### Advisory (non-blocking)

- `12-woman-playing-solitaire`: the thin three-point `CARD FIELD` polyline marks only an upper strip of the spread, while `chapter.mdx:57` describes a broad irregular zone. Either expand the visual treatment or soften the prose for a closer correspondence.
