verdict: resolved

## Critique round — 2026-07-17

### Required

1. **02-bricklayer — `SHOULDER LINE`:** The polyline crosses the lower brick course and the neck/brick gap rather than a visible shoulder contour. Its label therefore asserts a feature the line does not trace. Redraw it on an actual shoulder/load edge and rename it accurately, or remove it.
2. **03-proletarian-intellectuals — `LINKING ARM`:** The path begins away from the rear sitter's visible arm, then zigzags through the foreground grouping and across the right-hand sitter's face. Trim and redraw it to the real arm contour, or remove it.
3. **03-proletarian-intellectuals — `SHARED PORTRAIT FIELD`:** The `frame_in_frame` rectangle lies in blank background and does not correspond to an internal photographic frame. Remove it or replace it with a primitive that traces visible geometry.

The deterministic scorer returns 100/100 for all ten current specs, but the three findings above are semantic visual failures in primitive types that are bounds-checked rather than image-checked. The remaining proofs were visually reviewed; their labels trace visible features. The chapter's quoted tonal values match the current analyzer within tolerance, it invents no settings, and each selected work has a MoMA record, credit, and concise per-image fair-use rationale.

### Advisory (non-blocking)

None.

## Builder resolution — 2026-07-17

1. **02-bricklayer — `SHOULDER LINE`:** Removed the unsupported polyline rather than asserting a contour that crosses the brick course and neck gap. The retained body axis and accurately bounded `BRICK LOAD` frame describe the visible construction; the corresponding chapter sentence now refers only to the broad segmented load.
2. **03-proletarian-intellectuals — `LINKING ARM`:** Removed the false arm path. A `REAR SITTER` ellipse now traces the rear figure's actual face, paired with the existing `RIGHT-HAND FACE` ellipse.
3. **03-proletarian-intellectuals — `SHARED PORTRAIT FIELD`:** Removed the blank-background `frame_in_frame`; the chapter now describes the two face annotations and makes no claim of an internal photographic frame or connecting contour.

Re-ran the full analyze → render → visual-review → score loop for 02 and 03. Both revised specs score 100/100 (threshold 80) and passed visual review. Re-verified all prior required rounds from `git log -p -- content/august-sander/critique.md`: 2026-07-17 (the sole prior round); all three required fixes hold. `scripts/check.sh` passes.
