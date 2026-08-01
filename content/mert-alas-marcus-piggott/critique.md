verdict: approve

## Critique round — 2026-08-01

Reviewed all 12 rendered proofs against their overlay specs, analyzer records, chapter, manifest, and source notes. The deterministic scorer returns 100/100 for every spec, but that checks detector alignment rather than whether detector-derived primitives make truthful visual claims. The linked Vogue France exhibition and cover-archive records trace the selected titles, dates, subjects, and photographer credit.

### Required

1. **01-lips-2005 — correct the source-note color claim.** `sources.md` calls the retained rendition a “glossy red surface,” while the proof and ingested asset are monochrome. Replace that visible-color claim with wording that describes the actual grayscale/tonal surface, and keep the fair-use teaching rationale consistent with the retained frame.

2. **04-smoke-2011 — make the subject anchor truthful.** The `subject_anchor` labeled `orange garment` is centered on the metal central support at the bottom of the proof, not on the orange garment. Relabel it to the support/device or move it onto the garment; do not present the current target as the garment.

3. **06-rose-cordero-vogue-paris-2010 — remove or replace the false vanishing-point claim.** The `vanishing_point` labeled `cover-text convergence` lands in lower-right cover copy, but no pictured diagonals converge there. Use a primitive that truthfully describes visible typography, or omit it.

4. **07-marion-cotillard-vogue-paris-2010 — correct two mislabeled structures.** The `horizon_line` at `y: 0.88` crosses the white garment, not a lower cover edge; remove it or label a real visible divide. The `striped collar arc` polyline instead forms a large V across copy/hair and does not trace the garment’s visible striped collar. Rebuild or omit that path.

5. **08-daphne-groeneveld-tom-ford-vogue-paris-2010 — remove the detector artifacts.** `lower figure convergence` is not a visible convergence, and the ellipse labeled `paired heads` contains Groeneveld’s head while excluding Ford’s head at right. Replace both with claims whose geometry actually matches the pictured pair, or remove them.

6. **10-kate-moss-vogue-paris-2012 — remove or rework `left cover convergence`.** The marked point has no visible converging diagonals. It is not a defensible vanishing point, so omit the primitive or use a type/portrait feature that is actually present.

7. **11-natalia-vodianova-vogue-paris-2014 — redraw or omit the alleged torso path.** `shoulder and torso diagonal` begins over the face and crosses open facial/chest areas rather than tracing a shoulder or torso contour. The chapter’s diagonal reading must be supported by a truthful overlay path (or revised if the path is removed).

8. **12-gigi-hadid-vogue-paris-2016 — correct the source rationale and unsupported overlay claims.** The source note and its fair-use purpose/amount rationale describe a tight saturated face crop, but the retained proof is a monochrome full seated figure on a box. Re-document why this complete box-and-figure composition is pedagogically necessary. Also, `upper cover convergence` has no converging pictured structure and `left thigh contour` runs through cover typography rather than the thigh; replace or omit both.

### Advisory (non-blocking)

- Several cover overlays use `subject_anchor` to mark cover typography or another graphic detail. The labels identify visible details, so this is not a blocking mislabel, but converting those to a more explicit typography primitive where useful would make the teaching vocabulary clearer.

## Builder resolution — 2026-08-01

Resolved all eight required items from the 2026-08-01 critique round. The `Lips` and Gigi Hadid source notes now describe the retained grayscale/full-figure renditions and their complete-frame teaching rationale. The Smoke anchor now identifies the central support. I removed the unsupported vanishing-point, paired-head, collar-path, torso-path, and thigh-contour claims; the Marion portrait axis was re-measured to `0.575`, and the surviving affected specs were re-rendered and scored at 100/100 with a clean visual pass. The chapter and site mirror remove claims dependent on the discarded paths.

Re-verified critique history: 2026-08-01 (the only prior critique round). All its required fixes hold in the current overlays, proofs, source notes, and byte-identical chapter files.

## Critique round — 2026-08-01

Reviewed all 12 current rendered proofs against their overlay specs and analyzer records, then checked the chapter, manifest, source notes, and prior resolved round. All current specs score 100/100 with the deterministic scorer; source links, credits, and per-image four-factor fair-use rationales are present. The prior round's eight required corrections remain resolved.

### Required

1. **02-kate-moss-vogue-japan-2011 — remove or replace the unsupported `room recession` vanishing-point claim.** The marker at `(0.554, 0.135)` sits in the upper blue field/over the hair rather than at a visibly converging architectural feature. The two annotated left-chaise edges visibly meet around the left side of the figure, not at this marker. Replace it with a primitive that names a visible feature, or omit it; then revise the chapter sentence that says the chaise lines rise toward that room recession.

### Advisory (non-blocking)

- **04-smoke-2011:** the marker labeled `central support` lands on that support, but the `vanishing_point` primitive is an unconventional vocabulary choice for it. The label and placement are truthful, so this is not blocking.
- **10-kate-moss-vogue-paris-2012:** the `upper cover threshold` remains legible as a broad graphic divide, though it crosses the portrait rather than following one continuous physical edge. This is a stylistic simplification, not a material misidentification.

## Builder resolution — 2026-08-01

Resolved the 02-kate-moss-vogue-japan-2011 required correction. I removed the unsupported `room recession` vanishing-point annotation, re-rendered the proof, and revised the related sentence so the remaining chaise lines are described only as leading the eye into the figure. The rebuilt spec scores 100/100 and passed a clean visual inspection.

I also corrected four inexpensive, source- or evidence-bound descriptions found during independent review: the Kate Moss source note now identifies a seated figure in a blue field; the *Smoke* note describes the retained close lower-face rendition; the unsupported “debut” description for Lara Stone is removed; and the *Mirror* prose describes visible sharp lighting rather than undocumented flash.

Re-verified critique history: both 2026-08-01 rounds. The first round’s eight required fixes remain intact: grayscale *Lips* source rationale, truthful *Smoke* central-support labeling, and removal of the unsupported Rose, Marion, Daphne, Kate Moss 2012, Natalia, and Gigi Hadid claims. The current Kate Moss correction is also reflected in the byte-identical site chapter.

## Critique round — 2026-08-01

Reviewed every current proof against its overlay and analyzer record, then independently checked the chapter, manifest, source notes, and the two linked Vogue France records. The prior rounds’ resolved findings remain resolved; the current issues below are distinct regressions or source-attribution defects. Every current deterministic overlay score is 100/100, but those scores do not establish semantic truthfulness.

### Required

1. **02-kate-moss-vogue-japan-2011 — make the two diagonal labels truthful.** The annotated paths named `left chaise edge` and `left couch fold` run through the fur/figure area toward the shoulder rather than tracing discernible chaise or couch edges. Remove them, re-anchor them to actual furniture geometry, or relabel them to the feature they visibly trace. Revise the chapter sentence that calls them chaise lines if they are removed.

2. **03-mirror-2002 — correct the mirror and pool-edge claims.** The rectangular `mirror plane` frame starts in sky above the left portion of the mirror and cannot truthfully trace the perspective-skewed mirror. The `right pool edge` arrow crosses reflected water instead of a visible pool edge. Replace or remove both primitives, and revise the chapter’s right-edge reading if it is no longer supported.

3. **11-natalia-vodianova-vogue-paris-2014 — place or remove the `upper cover type` anchor.** Its center is at `(0.261, 0)`, clipped on the frame edge rather than on a legible masthead glyph. Move it to an actual cover-type feature or omit it.

4. **All 12 source entries — distinguish photographer credit from copyright ownership.** The linked Vogue France exhibition and cover-archive records credit Mert & Marcus as photographers, but neither establishes the asserted `© Mert Alas & Marcus Piggott` rightsholder notice. Reword each `Credit/rightsholder notice` to preserve the source’s photographer credit and state that the copyright/rightsholder is not stated by the linked record. This correction is required for accurate per-image fair-use attribution.

### Advisory (non-blocking)

- **05-lara-stone-vogue-paris-2008:** `cover-text threshold` reads as a broad detector-derived band across the lower face and cover copy rather than one continuous edge. A more precise label would improve the teaching clarity, but it does not make a materially false claim.
- **06-rose-cordero-vogue-paris-2010:** `collar line` simplifies a broken, low face-to-collar transition. The line remains close enough to the visible collar boundary to be non-blocking; a more specific label would be clearer.
- **08-daphne-groeneveld-tom-ford-vogue-paris-2010:** the `left hair-and-shoulder diagonal` most clearly traces the outer hair contour. Relabeling it would be more exact but is not material.

## Builder resolution — 2026-08-01

Resolved all four required items from the current critique round. For *Kate Moss for Vogue Japan*, I removed the two unsupported chaise/fold paths and revised the chapter to retain only the visible low chaise edge and seated figure. For *Mirror*, I replaced the false rectangular mirror plane and pool-edge reading with the visible angled upper and right mirror edges, then revised the related prose. For the Vodianova cover, I removed the clipped `upper cover type` anchor. All 12 source entries now distinguish Vogue France’s photographer credit from unstated copyright/rightsholder ownership.

I also applied the inexpensive advisory correction to the Daphne Groeneveld/Tom Ford overlay: its path now names the visible left hair contour. The affected proofs were re-rendered, visually inspected, and scored 100/100; a complete 12-image scoring pass is also 100/100. `scripts/check.sh` passes, and the content and site chapter files remain byte-identical.

Re-verified critique history: all three 2026-08-01 rounds. The first round’s eight required fixes remain intact (including *Lips* grayscale sourcing, *Smoke* central-support labeling, and removal of the unsupported Rose, Marion, Daphne, Moss 2012, Vodianova, and Hadid claims); the second round’s unsupported *Kate Moss for Vogue Japan* room-recession point remains removed; and this round’s four required fixes hold in the overlays, proofs, chapter, and source notes.

## Critique round — 2026-08-01

Reviewed all 12 current rendered proofs against their overlay specs and analyzer records, then checked the chapter, manifest, research note, source notes, and the linked Vogue France exhibition and cover-archive records. Every current overlay scores 100/100 with no scorer deductions or warnings. The proofs substantiate each surviving labeled primitive; the chapter’s measured luminance, tonal-range, edge-density, and palette claims match the analyzer records within tolerance. The source pages trace the selected works, dates, subjects, and Mert & Marcus photographer credit, while all twelve per-image fair-use entries retain a concise four-factor rationale and accurately distinguish that credit from unstated rightsholder ownership. No camera-setting claim is made.

### Required

None.

### Advisory (non-blocking)

None.
