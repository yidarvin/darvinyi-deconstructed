verdict: resolved

## Critique round — 2026-08-02

### Required

1. `12-life-is-elsewhere-g4`: the ellipse labeled `PROTECTIVE CONE` encloses the dog's lower body and bedding (`cx: 0.39`, `cy: 0.68`, `rx: 0.22`, `ry: 0.25`), while the protective cone itself is the much larger circular form around the dog's head in the upper-left/center of the proof. This makes the label identify the wrong feature. Redraw that ellipse around the visible cone (and align the chapter’s description with the corrected annotation), then re-render and re-score the proof.

### Advisory (non-blocking)

- `05-snow-ii`: the `RED WATER COURSE` and `CURRENT ZIGZAG` labels overlap at the lower-left endpoint. Both lines still clearly trace the red current, so this is cosmetic only.

All twelve proof PNGs were visually checked. The current geometric scores are 100/100 for every overlay. The chapter’s reported analyzer values match the analysis JSON within tolerance, contains no invented camera settings, and its twelve credited Experimenter records and web renditions are reachable; each fair-use entry includes the required four-factor rationale. The required issue above prevents approval.

## Builder resolution — 2026-08-02

- Resolved required item 1: re-ran composition analysis for `12-life-is-elsewhere-g4`, moved the `PROTECTIVE CONE` ellipse to `cx: 0.30`, `cy: 0.47`, `rx: 0.27`, `ry: 0.32`, and re-rendered the proof. The ellipse now follows the visible cone around the dog’s head; the dog anchor remains on the animal below it. The updated chapter description says the same.
- Re-scored the corrected overlay: 100/100, with no deductions or warnings; visual review of the composite is clean.
- Re-verified required fixes from critique history: round `2026-08-02` (commit `0c7fdb01`), item 1. No prior critique rounds exist. The advisory label overlap in `05-snow-ii` was left unchanged because it is cosmetic and the correction would not improve the required fix.

## Critique round — 2026-08-02

### Required

1. `01-the-levee-i`: remove or rework the `BANK CONVERGENCE` vanishing-point claim. The marked point (`x: 0.455`, `y: 0.601`) lands on the raised boot/leg, while the riverbank and horizon read as horizontal bands, not converging diagonals. The analyzer's seven-inlier point is a detector artifact here, so the proof and the chapter's “measured convergence” description make a false compositional assertion.

2. `02-the-levee-ii`: replace the `CROSSED MATERIAL LINES` vanishing point and its supporting leading-line argument. The two specified segments (`0.190,0.113`→`0.853,0.776` and `0.371,0.346`→`0.958,0.933`) are parallel rather than crossed or convergent, and visually cut across the jacket, hand, and blocks instead of tracing two material edges that meet at the marker. Revise the proof and the chapter's crossed-lines/convergence reading to name only a visible structure.

3. `10-pati`: replace the `RECEDING ROAD` leading line and `VALLEY EXIT` point. The proof's line from `0.711,0.767` to `0.996,0.260` runs across the right hillside and finishes at the cliff/sky area, whereas the visible road is the curved track running across the valley. The marker at `0.927,0.368` is not a road convergence, so the proof and the chapter's road-recession claim currently teach the wrong feature.

4. `11-look-its-getting-sunny-outside`: remove or change `BED AND DOG FIELD` as a `frame_in_frame`. Its rectangle (`x: 0.57`, `y: 0.22`, `w: 0.35`, `h: 0.52`) is an arbitrary box around the dog and bedding, not an internal visual frame such as a door, window, or arch. Use a primitive whose named feature is visibly present, and align the chapter if its account changes.

### Advisory (non-blocking)

- `03-the-levee-iii`: `BIRD'S PERCH` is loosely placed and crowds the nearby bird/branch labels; tightening or simplifying it would improve legibility but does not misidentify the bird or branch.
- `05-snow-ii`: the overlapping `RED WATER COURSE` and `CURRENT ZIGZAG` annotations remain cosmetic clutter only; the prior round correctly treated their overlap as non-blocking.
- `09-the-coast-iii`: the `SHORE AND SHADOW DIRECTION` line crosses open sand and water more clearly than one continuous shore or shadow edge. It is an ambiguous visual claim; retargeting or omitting it would be safer, but it is not sufficiently clear-cut to block this round.
- Several reported tonal values drift from the current analysis JSON (most noticeably `07-the-coast-i`, `09-the-coast-iii`, `10-pati`, and `11-look-its-getting-sunny-outside`). Correct them in the next chapter pass for data hygiene; their visible compositional readings remain materially intact, so this is non-blocking.

All twelve proof PNGs were freshly inspected against their current specs and analyses. Each deterministic score remains 100/100 with no deductions or warnings; these required findings are semantic failures outside that scorer's scope. The prior `12-life-is-elsewhere-g4` protective-cone correction remains visually truthful. All twelve Experimenter work records and display renditions returned successfully, and the sources retain per-image four-factor fair-use rationales; no source-integrity, limited-mode, or invented-settings blocker was found.

## Builder resolution — 2026-08-02

- Resolved required item 1 (`01-the-levee-i`): removed the false `BANK CONVERGENCE` point. The overlay now keeps the measured river horizon and names only the visible forward leg and forward boot; the chapter no longer asserts a convergence.
- Resolved required item 2 (`02-the-levee-ii`): removed the parallel leading-line and false convergence claims. The revised overlay marks the visible jacket pocket, supporting arm, and stack of blocks; the chapter now describes that material cluster without unsupported geometry.
- Resolved required item 3 (`10-pati`): replaced the hillside-cutting line and false `VALLEY EXIT` with a multi-point `WINDING ROAD` path that follows the visible track behind the walkers. The chapter now describes a bend rather than a vanishing point.
- Resolved required item 4 (`11-look-its-getting-sunny-outside`): replaced the arbitrary `frame_in_frame` rectangle with an ellipse around the visible dog and revised the chapter to refer to the dog directly.
- Re-ran analyze → render → score for all four affected plates. `01`, `02`, and `10` passed at 100/100 on their first revised render; `11` passed at 100/100 after one score-directed revision (replacing an unsupported dog anchor with the ellipse). The final composites received a clean visual pass.
- Corrected the chapter’s stale analyzer values to match the current analysis JSON and clarified `Pati` as a moving-image work in the source notes. Added `NEEDED.md` documenting that the complete source set needs no recovery or limited-mode fallback.
- Re-verified every prior required fix in the critique history: the earlier 2026-08-02 resolution for `12-life-is-elsewhere-g4`, item 1 (`PROTECTIVE CONE`), remains correctly placed around the cone and its chapter language remains aligned. The current 2026-08-02 four-item round is resolved above. No other prior required rounds exist.
