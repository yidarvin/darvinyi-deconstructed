verdict: approve

## Critique round — 2026-07-23

### Required

1. **01-modern-romance-1985 — mislabeled ellipse.** The `illuminated interior` ellipse in `overlays/01-modern-romance-1985.json` is centered at `(0.44, 0.66)` with vertical bounds `0.50–0.82`. In the current proof, the illuminated window/lamp is above those bounds (roughly `y=0.35–0.46`); the ellipse instead encloses the yellow car and red pool. Rename it for the feature it actually traces, or move and resize it to trace the illuminated interior. This is a material overlay-truthfulness error, not an endpoint tolerance issue.

### Advisory (non-blocking)

None.

### Checks completed

- Visually reviewed all twelve current proof PNGs against their overlay specs and analysis files.
- All twelve specs contain three pedagogical primitives and score 100/100 with the deterministic scorer.
- Chapter tonal, palette, and edge-density claims match their analysis files within the stated tolerance; no camera settings are asserted.
- Each image has a linked Smithsonian record, credit/copyright notice, and concise four-factor fair-use rationale in `sources.md`.

## Builder resolution — 2026-07-23

1. Re-ran analysis, render, visual review, and scoring for `01-modern-romance-1985`. The ellipse still encloses the toy car and red pool, so it is now truthfully labeled `toy car and red pool`; it no longer claims to mark the illuminated window. The resulting overlay scores 100/100 with no deductions or warnings.
2. Updated the corresponding chapter sentence in both mirrored chapter files to distinguish the small illuminated window from the car and pool.

Prior required rounds re-verified: 2026-07-23 (the only critique round in `git log -p -- content/david-levinthal/critique.md`).

## Critique round — 2026-07-23

### Required

1. **01-modern-romance-1985 — `red-pool boundary` traces the print edge, not the pool.** The `horizon_line` at `y: 0.797` in `overlays/01-modern-romance-1985.json` lies on the lower black image/white signed-margin transition in the current proof. The red pool ends materially above it. Remove the primitive or replace it with a line that traces a real red-pool boundary and label it accordingly. This is distinct from, and does not re-raise, the prior round's resolved ellipse label.
2. **02-modern-romance-1984 — `street-level boundary` traces the print edge, not a street feature.** The `horizon_line` at `y: 0.800` lies on the lower photograph/white-margin transition; the visible street, figures, and car masses are substantially higher in the frame. Remove it or place a truthfully labeled line on the actual street-level structure.
3. **02-modern-romance-1984 — false symmetry claim.** The `symmetry_axis` at `x: 0.5` is labeled `marquee field center`, but that primitive asserts mirroring across its axis. The large center-left marquee, cropped right marquee, figures, and car masses visibly do not mirror. The analyzer's correlation is a dark-field false positive here; remove this primitive rather than treating it as a generic center line.
4. **03-american-beauties-1990 — `outstretched gesture` does not trace the named gesture.** The polyline `[(0.42,0.58), (0.55,0.54), (0.78,0.37)]` crosses the torso/empty space and stops at the raised arm's elbow instead of following an arm to its hand. Reposition it on a clearly visible arm contour, or remove it. The chapter's statement that the line follows the lifted arm must then match the resulting spec.
5. **10-baseball-2004 — `stadium color break` is the upper print border.** The `horizon_line` at `y: 0.095` follows the lower edge of the broad black print border, not a stadium feature. Remove it or label and use an appropriate primitive only if the print border is deliberately being analyzed.
6. **10-baseball-2004 — `bat swing` does not trace a bat.** The polyline `[(0.36,0.45), (0.62,0.52), (0.97,0.63)]` descends across the player's chest to the lower-right arm/hand area; the visible swing/extended-arm gesture is higher and nearly horizontal. Redraw it to the actual feature and revise the chapter sentence if needed, or remove it.

### Advisory (non-blocking)

- **04-american-beauties-1990-b:** The `bent leg` polyline begins a little below and left of the thigh before it reaches the knee-to-foot direction. It remains readable as the pose's directional turn.
- **07-wild-west-1988:** `near-ground edge` is defensible as the transition adjacent to the lower ground, but it reads close to a print-border annotation and adds less pedagogically than the figure and fence.
- **11-iwo-jima-2013:** `ground boundary` follows an analyzer-supported broad transition, although the rubble makes it visually weaker than the ellipse and flagpole line.

### Checks completed

- Independently reviewed all twelve current proof PNGs against their source images, overlay specs, and analysis files; the deterministic scorer returns 100/100 with no warnings for every current spec, but these required findings are semantic visual-pass failures rather than score failures.
- Rechecked the chapter's quoted tonal, palette, and edge-density values against the analysis files; they remain within tolerance. No camera settings are asserted.
- Confirmed all twelve `sources.md` Smithsonian object-record links resolve, and each selection retains a linked source, credit/copyright statement, and concise per-image four-factor fair-use rationale.

## Builder resolution — 2026-07-23

1. `01-modern-romance-1985`: removed the false red-pool horizon line (which marked the print/margin boundary) and the vulnerable false-symmetry claim. The revised overlay marks the dark photographic field, the measured car-and-pool focal point, and the already-resolved ellipse truthfully labeled `toy car and red pool`.
2. `02-modern-romance-1984`: removed both print-edge/symmetry claims. Measured anchors now identify the separate left and right marquees within the truthful paired-marquees ellipse; the chapter now describes their lateral asymmetry.
3. `03-american-beauties-1990`: redrew the polyline along the visible raised-arm contour (shoulder, elbow, hand) and made the matching chapter wording explicit.
4. `10-baseball-2004`: removed the print-border horizon line, added the measured torso focus, and redrew/relabelled the near-horizontal extended swing arm. The chapter now matches that truthful claim rather than asserting a separable bat line.
5. Re-ran analysis, rendering, visual QA, and scoring for all four affected plates. Each scores 100/100 with no deductions or warnings; `scripts/check.sh` passed before this resolution.

Prior required rounds re-verified: 2026-07-23 round 1 (the `01-modern-romance-1985` ellipse remains centered on and labeled for the toy car and red pool); 2026-07-23 round 2 (all six fixes above).

## Critique round — 2026-07-23

### Required

None. All twelve current proof PNGs were visually reviewed against their overlay specs and image evidence. The previous required corrections remain in place: the `01-modern-romance-1985` ellipse truthfully encloses the toy car and red pool; the resolved print-edge and false-symmetry primitives remain absent; and the `03-american-beauties-1990` arm and `10-baseball-2004` extended-arm polylines trace the named visible gestures. The remaining overlays make three bounded, pedagogical claims each and are materially truthful.

### Advisory (non-blocking)

None observed in this round. The previously recorded advisory placements have not materially regressed and are not reopened.

### Checks completed

- Re-ran the deterministic scorer for every current overlay: 12/12 score 100/100, with no deductions or warnings.
- Rechecked every chapter measurement against its matching analysis JSON; stated mean, percentile, palette, and edge-density values match within tolerance. The chapter and research note explicitly decline to infer camera or process settings.
- Confirmed 12/12 linked Smithsonian object records return HTTP 200. Each image has a matching record-linked source, David Levinthal credit/copyright notice, and concise per-image four-factor fair-use rationale.
