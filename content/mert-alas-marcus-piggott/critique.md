verdict: resolved

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
