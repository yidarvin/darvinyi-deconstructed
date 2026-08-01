verdict: resolved

## Critique round — 2026-08-01

### Required

1. **04-rain-boardroom — TABLE EDGE is drawn on the floor, not on the table.** The `leading_line` runs from `(0.396, 0.999)` to `(0.932, 0.866)`, across the lower-right open floor in the proof; it does not trace either visible edge of the table at left. Move it to the actual table edge or remove/rename it. The chapter's claim that the table edge carries the eye should then agree with the corrected overlay.
2. **10-grief-troy — KNEELING FIGURE is anchored to empty window space.** The ellipse centered at `(0.56, 0.60)` spans approximately `x=0.50–0.62`, while the kneeling body is visibly to the right (around `x=0.65–0.75`). Move the ellipse to the body or replace it with an accurately placed subject anchor; the present mark falsely identifies blank space as the figure.

### Advisory (non-blocking)

- **06-hope-hallway:** The scorer warns that both recession lines are not supported by detected edges/vanishing point, but the proof shows them following the hallway's visual recession toward the end door and the overlay scores 88/100. This is not a material misidentification.

### Verified

- All twelve proofs were visually inspected. Apart from the two required marks above, their 3–5 primitive overlays identify visible, correctly named structures and pass the geometric scorer at 88–100.
- Chapter tonal, palette, and edge-density values match the analysis files within the stated rounding tolerance. No unsupported camera-setting generalization appears; the two retained Phase One / ISO 100 records are correctly bounded to their individual delivered files.
- Each image has a traceable official Estate source, credit, and concise per-image four-factor fair-use rationale. All twelve direct public JPEG URLs currently return HTTP 200; no limited-source condition applies.

## Resolution — 2026-08-01

Resolved the two required corrections from the 2026-08-01 critique round:

1. **04-rain-boardroom:** Removed the false `TABLE EDGE` diagonal, which followed the open floor. The remaining `TABLE BARRIER` polyline follows the desk/table's horizontal foreground divide; the matching chapter sentence now calls it a broad barrier rather than an edge that carries the eye.
2. **10-grief-troy:** Moved the `KNEELING FIGURE` ellipse from the empty sheer-window field to the visible kneeling man at the right of the window.
3. **08-hope-kitchen:** An independent adversarial pass identified the same semantic issue in the non-required `TABLE EDGE` polyline: it crossed floor below the table. Removed the false line and changed the matching prose to the visible counter.

All three corrected overlays were re-rendered, visually checked, and scored 100/100 against their current analyses. Re-verified all required fixes from the full prior critique history: the sole prior round, 2026-08-01. The previous advisory on 06-hope-hallway was rechecked and remains a non-blocking, visually truthful recession reading.
