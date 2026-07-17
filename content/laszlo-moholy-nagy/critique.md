verdict: approve

## Critique round — 2026-07-17

### Required

1. `12-target-practice`: The three ellipse primitives labeled `large target circle`, `group ring`, and `isolated figure ring` do not trace their respective black circular zones in the proof. Their centers and bounds are materially displaced (for example, the isolated figure's printed ring is around x≈0.53, y≈0.10 while its overlay ellipse is centered at x=0.43, y=0.16; the group ring is likewise displaced left). This exceeds the endpoint tolerance and makes the overlay's claimed circles misleading. Refit each ellipse to the printed circle it names, then rerender and rescore the proof.

2. `12-target-practice`: The `diagonal track boundary` leading line crosses the group and blank field rather than following either visible edge of the long diagonal track. The deterministic scorer independently reports that the line tracks no detected edge, and the proof confirms the semantic mismatch. Trace a real track boundary or remove this primitive, then rerender and rescore.

### Advisory (non-blocking)

None. The remaining eleven proofs are materially truthful on visual inspection; their scorer warnings concern detector support for semantically visible contours rather than a false labeled feature. All twelve source records are traceable to the linked Met and Commons records, the displayed dates and media agree with the Met records, and the chapter appropriately omits unverified camera settings.

## Resolution — 2026-07-17

Re-verified prior critique round: 2026-07-17 (the complete critique history for this slug).

1. Refit `large target circle`, `group ring`, and `isolated figure ring` to their corresponding printed circles. The rerendered proof visually confirms that each teal ellipse follows its named black ring.
2. Removed the misleading `diagonal track boundary` primitive and aligned the plate caption and explanatory prose with the remaining truthful claims.

Fresh analysis, rendering, and scoring for `12-target-practice` pass at 97/100 (threshold 80). The remaining scorer warning is only the expected three-ellipse complexity warning; each ellipse is necessary because the photograph contains three distinct, named printed circles.

## Critique round — 2026-07-17

### Required

1. `09-from-the-radio-tower-berlin`: The `subject_anchor` labeled `plaza center` is at `(0.438, 0.819)`, on the plaza's lower-left dark rim/path rather than at the center of the photographed circular plaza. The same proof and overlay place the `circular plaza` ellipse center at `(0.550, 0.740)`, which is the circle's visible center; the anchor therefore differs by about 0.14 normalized image-diagonal and names the wrong feature. Move the anchor to the plaza center or relabel it to the lower-left feature it actually marks, then rerender and rescore the proof.

### Advisory (non-blocking)

- `05-decorating-work-switzerland`, `06-dolls-on-the-balcony`, `07-fischernetze-isola-bella`, and `11-scandinavia`: the non-strict scorer warnings for selected labeled lines are detector-support limitations. On visual inspection, each still traces its named cable, rail, net/cloth, or rope feature; no revision is required.
- `12-target-practice`: the three-ellipse complexity warning remains non-blocking. The current proof shows each ellipse accurately follows its distinct printed target circle, preserving the prior round's resolution.

## Resolution — 2026-07-17

Re-verified prior critique rounds: the initial 2026-07-17 `12-target-practice`
revision and its 2026-07-17 resolution, plus the current 2026-07-17 review.

1. Re-ran analysis, rendering, visual review, and scoring for
   `09-from-the-radio-tower-berlin`. Moved the `plaza center`
   `subject_anchor` from the detector's unrelated lower-left saliency point to
   `(0.55, 0.74)`, the center of the visible circular plaza and of the
   accurately fitted `circular plaza` ellipse. The regenerated proof is clean
   on visual inspection and scores 81.1/100 (threshold 80); the sole
   deduction is the expected detector-saliency mismatch, not a mislabeled
   feature.
2. Re-checked the prior `12-target-practice` fixes against the current proof:
   its three ellipses still follow their named printed circles and the false
   diagonal-track primitive remains absent.
3. Corrected the supporting medium statement and selected-work Met citation:
   all twelve selected works are catalogued as gelatin silver prints, and
   *Fotogramm* is additionally a cameraless photogram.

`scripts/check.sh` passes, including pipeline validation, chapter byte-sync,
prose lint, tests, typecheck, build, and production preview smoke test.

## Critique round — 2026-07-17

### Required

None.

### Advisory (non-blocking)

- `01-cat-seen-from-above`, `02-climbing-the-mast`, `03-7-am-new-years-morning`, `05-decorating-work-switzerland`, `06-dolls-on-the-balcony`, `07-fischernetze-isola-bella`, and `11-scandinavia`: the non-strict scorer's edge-support warnings concern semantically visible, correctly traced contours (fur/body and whiskers; rope, mast, and sail; curb and track; cable; rail; net/cloth; and rope). Visual review confirms that each label names the feature it follows.
- `09-from-the-radio-tower-berlin`: the scorer continues to prefer the unrelated lower-left saliency point. As resolved in the prior 2026-07-17 round, the anchor at `(0.55, 0.74)` is visibly at the center of the labeled circular plaza; this is not a regression or a misleading claim.
- `12-target-practice`: the three-ellipse complexity warning is appropriate to the three distinct printed circles. All three continue to trace their named rings, and the previously removed false diagonal-track primitive remains absent.

All twelve proofs pass the 80-point scoring threshold (81.1–100) and are materially truthful on visual review. The chapter's measured tonal, palette, and edge-density statements agree with the current analyzer output within the stated tolerance; it contains no asserted camera settings. Each selected image retains a linked Met and Wikimedia Commons record with CC0/Met Open Access credit, and the title, date, and gelatin-silver-print statements match the cited object records.
