verdict: resolved

## Critique round — 2026-07-24

### Required

1. **01-fictions-00 — false symmetry claim.** `symmetry_axis` / `STACKED CENTER` at x0.5 claims that the frame mirrors across that line, but the stacked building is materially asymmetric. This also conflicts with the chapter's accurate statement that the axis does not make the construction truly symmetrical. Remove or replace the primitive with a truthful structural annotation; do not use `symmetry_axis` for a merely central stack.

2. **02-fictions-02 — repair the bridge annotation.** The `DARK BRIDGE` leading line starts across the left vent façade and does not trace a specific bridge edge. The strict scorer independently deducts 12 points for that exact defect (88/100). Redraw it to an actual bridge contour or replace it with a visually truthful interpretive path.

3. **03-fictions-03a — remove/recast two false claims.** `vanishing_point` / `CROSSING ARMS` places a convergence marker in empty space although the arms do not literally converge there; the chapter itself says it is not a one-point perspective. `symmetry_axis` / `VERTICAL CORE` likewise asserts mirror symmetry for the alternating, asymmetric bars. Use only primitives whose stated claims are true.

4. **04-fictions-05 — remove/recast two false claims.** `symmetry_axis` / `FAÇADE CENTER` asserts mirror symmetry that the scattered windows and outer contours do not have. `frame_in_frame` / `BEIGE FAÇADE` is not an internal door, window, or other frame: its top sits in sky and it does not follow the sloped façade boundary. Retain only an accurately traced structural claim.

5. **05-fictions-05a — correct the boulder and symmetry annotations.** The `ROCK MASS` subject anchor lands on the left building/rock boundary rather than the boulder's visual mass. The very large `BOULDER` ellipse floats well outside the jagged rock and falsely makes it an oval structure. `symmetry_axis` / `CENTRAL GAP` also claims mirror symmetry not present in the two façades and rock. Re-anchor or re-express the useful boulder reading with a feature the overlay actually traces.

6. **06-fictions-06 — correct mis-traced labels.** The second segment of `RISING NOTCHES` crosses an unbroken projecting face rather than a continuous succession of notches. The `PROJECTING MASS` anchor sits on a dark triangular recess, not on the named mass. Redraw, relabel, or remove these primitives.

7. **07-fictions-09 — false symmetry claim.** `symmetry_axis` / `HOUSE CORE` claims mirror symmetry for an explicitly lopsided, tilted stack. Remove or recast it; the roof contour and approximate central organization can be taught without a symmetry primitive.

8. **08-fictions-10 — correct the false roof and symmetry claims.** The `ROOF EDGE` line at y0.321 follows a mid-façade balcony/slab band, not the building's roof. `symmetry_axis` / `CENTRAL NOTCH` also asserts mirror symmetry rather than simply marking an interruption. Relabel/reposition the horizontal feature and use a primitive that does not make an untrue symmetry claim.

9. **09-fictions-11 — redraw/remove the false tower annotations.** `TALL LEFT TOWER` has a vertical leg in empty sky/grass and a horizontal leg across the lower façade rather than a tower contour. `symmetry_axis` / `TOWER SEAM` does not trace a seam and falsely asserts mirroring across x0.388. Replace these with lines on the named visible structures, or omit them.

10. **10-fictions-14 — correct the spine and axis claims.** `frame_in_frame` / `GLAZED SPINE` frames mostly sky and top mass rather than the narrow lower glazed spine. `symmetry_axis` / `TOWER AXIS` makes a mirror-symmetry assertion for an asymmetric cantilever. Redraw the glass feature with an appropriate primitive and remove/recast the axis.

11. **All ten image records — restore traceable direct sources.** The Gessato overview remains publicly reachable and still credits the images to Filip Dujardin, but each documented per-image `public display file` URL in `sources.md` currently returns HTTP 404; the overview's corresponding image links fail as well. This makes the present per-image acquisition route untraceable and renders the statement that every direct JPEG “opened successfully” materially stale. Locate and record working, publicly accessible source routes (with the existing credit and per-image fair-use rationale retained) for 01-fictions-00 through 10-fictions-14.

### Advisory (non-blocking)

- 02-fictions-02: after the bridge revision, consider moving the top-edge `ROOFLINE INTERRUPTION` anchor to a more legible bridge/core junction.
- 08-fictions-10: `UPPER BALCONY` is near a small pale interruption rather than an unambiguous balcony; a more precise label would improve the lesson. Its balcony-band line is nevertheless a defensible visual path despite the detector warning.
- 06-fictions-06: the analyzer's thirds and phi grid fits are tied at 0.00; the selected phi grid is within numerical tolerance, but a grid choice with an explicit pedagogical reason would be clearer.

### Review evidence

All ten proofs were visually inspected against their matching specs and analyzer output. Normal scoring passes every proof (94 or 100); strict scoring is 88 for 02 and 08 and 100 for the remainder. Those measurements confirm coordinate tolerance, but they do not validate the visual semantics of `symmetry_axis`, `frame_in_frame`, `ellipse`, or interpretive paths. The required findings above are semantic mismatches visible in the current rendered proofs, not cosmetic endpoint or rounding differences. The chapter contains no invented camera settings; its caution about unknown capture and print details is appropriately supported by the empty manifest EXIF and the source notes.

## Resolution — 2026-07-24

Resolved all eleven required items. The ten overlays were re-analyzed, rendered, visually checked, and rescored; false symmetry and perspective claims were removed, and the remaining structural annotations were redrawn or relabeled to their visible features. The Gessato origin URLs were replaced with working public WordPress image-CDN routes, each verified as `200 image/jpeg` and byte-matched against its ingested raw file. Chapter prose was brought into line with the revised overlays in both mirrored chapter files.

Re-verified critique history: 2026-07-24, the only prior critique round. `scripts/check.sh` passed after the repairs (including pipeline validation, chapter sync, 240 tests, production build, and lint).
