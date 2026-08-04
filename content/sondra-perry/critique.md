verdict: approve

## Critique round — 2026-08-04

### Required fixes

1. **`01-a-terrible-thing` — redraw or remove `PROJECTED FIELD`.** The frame at `x=0.19–0.81, y=0.18–0.76` encloses a large blank wall, ceiling, floor, and bench, while the visible paired projected/display field is the glazed image area at the far right. It therefore does not trace the feature named in the overlay or support the chapter's claim that the display is boxed by the gallery architecture. Use a frame or a more accurate claim that lands on the visible display field.

2. **`03-ocean-modifier` — make `LENTICULAR BAND` trace the actual band.** The current `frame_in_frame` begins high in the blank dark wall (`y=0.20`) and ends through the upper half of the luminous strip (`y=0.47`); the displayed lenticular band runs lower, beginning at the measured divide near `y=0.322` and extending to roughly `y=0.57`. Redraw the frame on the full visible band, or replace it with a truthful primitive. The measured divide and balance axis themselves are accurate.

3. **`05-its-in-the-game` — correct `PROJECTED SCREEN`.** Its frame (`x=0.49–0.67, y=0.19–0.42`) begins on the blue wall and equipment, misses the screen's right edge, and extends well below the projected rectangle. It does not identify the small projected screen named by both the overlay and caption. Tighten it to the actual rectangle or remove the claim.

4. **`07-eclogue-inhabitability` — remove or redraw `MACHINE ARM`.** The labelled leading line from `(0.398, 0.662)` to `(0.921, 0.980)` crosses the tiled floor and runs away from the excavator arm; it does not follow an arm contour. The chapter then relies on that line when saying the machine arm pulls toward corridor convergence. Put a line on a visible arm edge, or remove the primitive and revise that sentence if needed.

5. **`08-ffff-four` — replace the unsupported `BLUE ARC` ellipse.** The ellipse describes a large near-circle around mostly empty gallery space, whereas the blue curved structure is a partial upright component of the bicycle workstation on the left. It neither traces that arc nor supports the caption's assertion that a blue arc encloses the workstation. Use a contour that follows the visible blue curve, or omit the enclosing-arc claim.

6. **`09-acrylic-gel-full-set` — correct `MOUNTED PRINT`.** The rectangular frame at `x=0.26–0.74, y=0.12–0.82` cuts through the pictured faces and excludes substantial visible portions of the skewed physical print, including its left and lower frame. It is not an internal frame tracing the mounted print, yet the chapter treats it as the print frame. Use a primitive that follows the actual object or remove the false frame claim.

7. **`11-graft-and-ash` — remove or redraw `BICYCLE APPARATUS`.** The tall ellipse encloses a broad area of blank blue wall and cuts across the bicycle, monitors, and floor; no oval structure in the photograph matches it. The overlay and chapter consequently imply an enclosing bicycle form that is not present. Replace it with an anchor/contour that identifies the actual apparatus, or omit it.

### Advisory (non-blocking)

- `06-title-tk-2`: `SPLAYED SUPPORT` follows the left support leg before extending across bare floor beyond the central joint. Its primary reading remains clear, but trimming it to the visible leg would make the otherwise accurate demonstration cleaner.
- `04-typhoon-coming-on`: the broad `PROJECTION WALL` frame includes some ceiling and corridor beyond the projected surface. It still unmistakably identifies the room-scale projection, so this is not a blocking discrepancy.

All eleven proofs were visually reviewed against their current overlay specs and analyzer records. Each current spec scores 100/100 deterministically, but the required findings above are semantic feature/label mismatches that geometric scoring does not detect. The chapter's stated tonal, palette, grid, and edge-density measurements agree with the analyzer outputs within tolerance; it invents no camera settings. The eleven direct public display-image routes returned HTTP 200 during this review, and every source entry provides a per-image four-factor fair-use rationale.

## Resolution — 2026-08-04

Re-verified critique history: **2026-08-04, round 1** (the only prior round).

1. `01-a-terrible-thing`: the frame now lands on the paired illuminated display wall; the caption and prose name that precise feature.
2. `03-ocean-modifier`: the lenticular-band frame now spans the visible strip from the measured divide through its lower edge.
3. `05-its-in-the-game`: the projected-screen frame now traces the small rectangle’s actual bounds.
4. `07-eclogue-inhabitability`: removed the unsupported machine-arm line and its corresponding prose claim.
5. `08-ffff-four`: replaced the enclosing ellipse with a contour following the blue upright support curve and revised the text accordingly.
6. `09-acrylic-gel-full-set`: replaced the false rectangle with a polyline following the skewed physical print edge and revised the caption/prose.
7. `11-graft-and-ash`: removed the unsupported enclosing ellipse and retained only the measured monitor anchor, workstation axis, and floor threshold.

All eleven current overlay specs score 100/100. The affected composites received a fresh visual pass, the content and rendered chapter are byte-identical, and `scripts/check.sh` plus `python3 scripts/validate_pipeline.py` pass.

## Critique round — 2026-08-04

### Required fixes

1. **`09-acrylic-gel-full-set` — redraw `SKEWED PRINT EDGE` on the physical print.** The current closed polyline follows the top edge only approximately, then places its right edge at `x=0.86` through blank wall (the visible framed print ends near `x=0.79`) and its lower edge well below the print. This is materially outside the ~2% endpoint tolerance and does not trace the feature named by the primitive. It is a regression of the resolution to **2026-08-04, round 1**: although the earlier false rectangle was replaced, the replacement still implies a much larger skewed object than the photograph shows. Redraw the contour on the four visible outer frame edges, then keep the caption/prose only if it describes that corrected contour.

### Advisory (non-blocking)

- `06-title-tk-2`: the `SPLAYED SUPPORT` leading line extends slightly across bare floor after leaving the left support leg. Its primary relation to the support remains clear, so this is not a blocking discrepancy.

All eleven proofs were reviewed against their current specs and analyzer records. The remaining ten overlays are materially truthful and pedagogically scoped to 3–5 primitives; every spec scores 100/100. Chapter tonal, palette, grid, and structural claims match the analyzer records within tolerance, with no invented camera settings. All eleven direct public image routes returned HTTP 200 during this review, and each source entry supplies its own four-factor fair-use rationale.

## Resolution — 2026-08-04

Re-verified critique history: **2026-08-04, round 1** and **2026-08-04, round 2**.

1. `09-acrylic-gel-full-set`: redrew `SKEWED PRINT EDGE` directly on the four visible outer frame edges, using the measured corner positions `(0.188, 0.132)`, `(0.795, 0.232)`, `(0.795, 0.747)`, and `(0.188, 0.840)`. The caption and prose still accurately describe that corrected contour.
2. Re-checked all seven required fixes from round 1: the paired display wall, lenticular band, projected screen, checkered-floor line, blue support curve, skewed print edge, and monitor/workstation reading remain truthful in their current proofs and chapter text.
3. Applied the prior advisory cleanup to `06-title-tk-2`: `SPLAYED SUPPORT` now ends at the central joint instead of continuing across bare floor.

All eleven current overlay specs score 100/100. Fresh visual checks are clean for the corrected overlays and every prior required-fix proof; the content and rendered chapter remain byte-identical.

## Critique round — 2026-08-04

### Required fixes

1. **`05-its-in-the-game` — remove or replace `ROOM BALANCE`.** The `symmetry_axis` at `x=0.625` is a primitive that asserts left/right mirroring, but the stand and monitor at left, open floor, and corridor at right do not mirror across it. The analyzer's 0.860 correlation is consistent with the broad blue field rather than visual symmetry. Do not use a symmetry primitive to make a general balance claim; retain the truthful blue-room divide and projected-screen frame.

2. **`06-title-tk-2` — correct the misidentified apparatus.** The proof shows a black horizontal tubular bar on a splayed support, not a monitor or a monitor rectangle. The overlay notes, plate caption, chapter paragraph, and source rationale each call it a monitor. Replace those claims with a description supported by the visible sculpture/apparatus (or cite an authoritative record if a monitor is actually present); do not infer a display from the documentation view.

3. **`07-eclogue-inhabitability` — remove or redraw the false perspective claims.** `CORRIDOR CONVERGENCE` at `(0.504, 0.692)` is in the foreground below the apparatus, whereas the visible architectural recession is at the rear of the gallery. Its paired `CHECKERED FLOOR` line, from `(0.294, 0.998)` to `(0.838, 0.600)`, crosses the tile pattern toward the right wall rather than tracing a floor edge into the claimed convergence. The chapter and caption consequently misstate the diagram as corridor depth. This is distinct from—and not a reopening of—the machine-arm line resolved in the first round.

4. **`08-ffff-four` — remove or replace the unsupported `FLOOR THRESHOLD`.** The horizontal line at `y=0.760` runs through undifferentiated floor; no threshold or structural horizontal is visible there. The analyzer itself gives that tonal split only 0.573 confidence. Use a primitive that lands on a visible feature, or omit it.

5. **`09-acrylic-gel-full-set` — remove or redraw `LOWER FRAME DIVIDE`.** The horizontal line at `y=0.765` passes through the portrait and white surround. The actual lower brown frame rail is markedly oblique, running from roughly `y=0.84` at left to `y=0.75` at right. The current line thus names a structure that is not present. The corrected `SKEWED PRINT EDGE` remains truthful; this is not a reopening of the second-round resolution.

6. **`10-wet-and-wavy-looks` — remove the false `ROOM CONVERGENCE`.** The vanishing-point marker at `(0.258, 0.572)` sits above the screens, but the visible wall, floor, and panel edges do not converge at that point. The analyzer's four-inlier proposal is insufficient semantic evidence. Remove the primitive and revise the chapter sentence that uses room convergence to make the screens a destination.

7. **`10-wet-and-wavy-looks` — replace `BLUE-ROOM BALANCE` with a truthful primitive.** The `symmetry_axis` at `x=0.375` asserts mirroring that the unequal blue walls, black opening, and workstation do not have. A broad blue field can support an interpretive balance reading, but not this symmetry primitive.

8. **`11-graft-and-ash` — replace `WORKSTATION AXIS`.** The `symmetry_axis` at `x=0.575` similarly asserts bilateral symmetry not visible in the offset bicycle and monitor assembly. Use a primitive that identifies an actual visible alignment or remove the claim; keep the accurate monitor-cluster anchor and floor threshold.

### Advisory (non-blocking)

- `02-flesh-graft-ash-1`: `MIDDLE LIGHT BOX` is slightly short vertically: its bounds are `y=0.210–0.640`, while the lit panel visibly extends about `y=0.236–0.667`. It still clearly identifies the panel, so this does not block approval.
- `04-typhoon-coming-on`: as already noted in the first round, `PROJECTION WALL` includes a small amount of ceiling/corridor beyond the projected surface. It remains recognizable as the room-scale projection and has not materially regressed, so it is not reopened as a required finding.

All eleven current specs still score 100/100 against their stored analyzer records. Those results confirm numeric alignment only; the required findings above are visible semantic mismatches. I independently viewed every proof, verified the chapter's stated tonal, palette, grid, and structural measurements against the analyzer records, found no invented camera settings, and confirmed HTTP 200 retrieval for all eleven documented public display-image routes. Each image retains a traceable source and concise four-factor fair-use rationale.

## Resolution — 2026-08-04

Re-verified critique history: **2026-08-04, rounds 1, 2, and 3**.

1. `05-its-in-the-game`: removed the false `ROOM BALANCE` symmetry claim; the measured blue-room divide and accurately bounded projected screen remain.
2. `06-title-tk-2`: corrected every affected description from “monitor” to the visible horizontal bar/sculpture in the overlay note, plate caption, chapter, source note, fair-use rationale, and proof contact sheet.
3. `07-eclogue-inhabitability`: removed the false foreground convergence and floor line; the proof now identifies the central aisle, rear opening, and actual viewing apparatus.
4. `08-ffff-four`: removed the unsupported `FLOOR THRESHOLD` (and the unnecessary symmetry claim), retaining the bicycle anchor and accurately traced blue support curve.
5. `09-acrylic-gel-full-set`: removed the false `LOWER FRAME DIVIDE` (and unnecessary symmetry claim), while preserving the truthful four-edge skewed-print contour from round 2.
6. `10-wet-and-wavy-looks`: removed the false room-convergence and blue-room-symmetry primitives, together with the dependent prose; the remaining wall-floor join and rowing-machine anchor are visually supported.
7. `11-graft-and-ash`: removed the unsupported workstation-symmetry claim; the monitor-cluster anchor and floor threshold remain truthful.
8. Rechecked every prior required fix: the paired display wall (`01`), luminous lenticular band (`03`), projected screen (`05`), splayed support cleanup (`06`), corrected backhoe reading (`07`), blue support curve (`08`), skewed print edge (`09`), and bicycle/monitor reading (`11`) remain intact in the current proofs and chapter.

All eleven current overlay specs score 100/100, including fresh composition analysis and renders for every affected image. Fresh visual checks are clean, the content and rendered chapter are byte-identical, and `scripts/check.sh` plus `python3 scripts/validate_pipeline.py` pass.

## Critique round — 2026-08-04

### Required fixes

None.

### Advisory (non-blocking)

- `03-ocean-modifier`: `FIELD BALANCE` is an interpretive use of a symmetry-axis primitive rather than a literal mirror claim; it does not misidentify a visible feature or alter the chapter's lateral-reading argument, but a future refinement could express that balance without implying bilateral symmetry.

All eleven current proofs were independently reviewed against their overlay specs, analyzer records, source entries, research note, and chapter prose. Each overlay scores 100/100 against the current analysis, and the visual pass confirms that its labelled primitives land on the named display, object, edge, support, or architectural feature. The earlier resolved fixes remain materially intact. The chapter's tonal, palette, grid, edge-density, and structural measurements agree with the analyzer outputs within tolerance; it contains no camera-setting claims. Every direct public display-image route returned successfully, and comparison with the ingested images confirms the expected only-JPEG-reencoding differences. Each selection retains a traceable archive source, accurate credit/rights treatment, and concise per-image four-factor fair-use rationale.
