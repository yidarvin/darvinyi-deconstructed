verdict: revise

## Critique round — 2026-08-03

### Required

1. **`12-untitled-c1990s` — correct the saliency annotation and corresponding prose.** The `subject_anchor` at `(0.756, 0.119)` circles a dark, speckled blotch/abrasion in the painted backdrop, not a “painted backdrop highlight” as the overlay and chapter state. The analyzer establishes only a saliency anchor at that coordinate; the rendered proof confirms the labelled feature is dark rather than a highlight. Relabel it truthfully (or choose a genuine highlight) and revise the paragraph’s claim that a detected highlight pulls attention above the right sitter.

### Advisory (non-blocking)

- All twelve overlay specs score 100/100 against their current analyzer JSON. The other rendered primitives visibly trace their named features, and chapter coordinates, tonal values, palette entries, titles, source routes, credits, and the stated absence of camera data are consistent with the current records. The source notes provide a public source link and a concise four-factor fair-use rationale for each of the twelve images.

## Builder resolution — 2026-08-03

Resolved required fix 1. Re-ran analysis, render, score, and visual review for
`12-untitled-c1990s`: the saliency point remains geometrically accurate and now
labels the visible upper-right dark surface blemish, not a highlight. Updated the
corresponding paragraph in both byte-identical chapter copies. The revised overlay
scores 100/100 with no deductions or warnings; the proof is visually clean.

Re-verified prior critique rounds: 2026-08-03 (the only prior round in the full
`git log -p` history). Its sole required fix remains satisfied. `scripts/check.sh`
and `python3 scripts/validate_pipeline.py` pass. Registry stage remains `built`
pending independent critic re-review.

## Critique round — 2026-08-03

### Required

1. **`03-equation-plus-2020` and `05-equation-equals-2020` — remove or replace the `vanishing_point` claims.** In both rendered proofs, the labelled “STONE EDGE CONVERGENCE” sits within the stone rather than at a visible convergence of diagonals. The matching analyzer records do emit detector vanishing points, but the visual review does not support the semantic claim that the stone’s edges converge there. A `vanishing_point` primitive expressly claims diagonal convergence, so these annotations materially misstate the photographs’ composition.

2. **`04-equation-u-2020` and `06-equation-us-2020` — remove or replace the `horizon_line` claims.** The lines labelled “UPPER STONE THRESHOLD” cross local, irregular upper contours of the stones; neither proof contains a dominant frame-spanning horizontal. The analyzer identifies those y-values only as gradient luminance splits, not as a photographic horizon. Because a `horizon_line` primitive claims the frame is divided by a dominant horizontal, these two annotations are misleading as specified.

### Advisory (non-blocking)

- The pre-existing correction for `12-untitled-c1990s` remains resolved: the anchor and chapter now identify the visible upper-right dark surface blemish, not a highlight.
- The remaining proofs were visually checked against their overlay specs and analyzer records. Their primitives read as the features named; all twelve current specs score 100/100, and the chapter's measured claims, source routes/credits, per-image fair-use rationale, and absence of invented camera settings are consistent with the supplied records. The score does not cure the two semantic annotation errors above.

## Builder resolution — 2026-08-03

Resolved required fix 1. Re-ran analysis, render, score, and visual review for
`03-equation-plus-2020` and `05-equation-equals-2020`; removed their unsupported
`vanishing_point` claims and replaced them with fitted, visibly truthful
`stone silhouette` ellipses. Both revised overlays score 100/100 with no
deductions or warnings.

Resolved required fix 2. Re-ran analysis, render, score, and visual review for
`04-equation-u-2020` and `06-equation-us-2020`; removed their misleading
`horizon_line` claims and replaced them with fitted `stone silhouette` ellipses.
Both revised overlays score 100/100 with no deductions or warnings. Updated the
corresponding Equation paragraph in both byte-identical chapter copies.

Re-verified prior critique rounds: the earlier 2026-08-03 round requiring the
`12-untitled-c1990s` correction remains satisfied: its anchor and chapter prose
truthfully identify the upper-right dark surface blemish, and its overlay still
scores 100/100. All 12 unit overlays now pass the >=80 deterministic gate with
clean visual review. `scripts/check.sh` reached its Vitest phase but could not
complete before the execution environment terminated its foreground wrapper, so
the required full gate remains unconfirmed. Registry stage remains `built` pending
validation retry and independent critic re-review.

## Critique round — 2026-08-03

### Required

1. **`12-untitled-c1990s` — remove or replace the `vanishing_point` claim.** The overlay labels `(0.420, 0.736)` as “FLOOR RECESSION,” and the chapter says it is a marked recession that leads attention back toward the bouquet and feet. In the current proof, that point lies in the foreground figure-and-pedestal arrangement; no visible floor edges or other diagonals converge there. The paired `analysis.json` contains a detector vanishing-point candidate at the same coordinate, but its listed diagonals are image texture/figure-and-furniture edges rather than a demonstrated perspective system. A `vanishing_point` primitive claims actual diagonal convergence, so this is materially misleading. This is separate from—and does not reopen—the previously resolved upper-right surface-blemish correction.

### Advisory (non-blocking)

- No new advisory findings. The prior resolutions for `03-equation-plus-2020`, `04-equation-u-2020`, `05-equation-equals-2020`, `06-equation-us-2020`, and the upper-right blemish in `12-untitled-c1990s` remain visually satisfied. The remaining current primitives truthfully trace their labelled features; the chapter's quantitative claims agree with the analyses within tolerance, and every image retains a traceable credited source with an image-specific fair-use rationale and no camera-setting claim.
