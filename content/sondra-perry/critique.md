verdict: resolved

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
