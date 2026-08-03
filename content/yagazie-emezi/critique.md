verdict: revise

## Critique round — 2026-08-02

### Required

1. **01-endsars-EndSARSProtests-25, 02-endsars-EndSARSProtests-11, 06-endsars-EndSARSProtests-13, 07-endsars-EndSARSProtests-28, 09-endsars-EndSARSProtests-39, 11-endsars-EndSARSProtests-67, and 12-endsars-EndSARSProtests-63 — replace the false `vanishing_point` claims.** The proofs place the vanishing-point cross respectively on a raised sign/crowd, the placard’s center, a foreground shirt/crowd, a foreground face/crowd, the near roadway/car, grass beside the sidewalk, and the security tower. The named features are visible, but none is a point at which visible frame diagonals converge; in 11 the claimed road-depth point is not even on the road. The analyzer suggestions and 100 geometric scores confirm coordinate agreement only, not this semantic claim. Use the fitting primitive for each visible subject/area (for example `subject_anchor`), or remove it, and rerender/re-score the affected proofs.

2. **04-endsars-EndSARSProtests-16 — remove or replace the `horizon_line` labeled `ring of feet`.** In the proof its horizontal stroke passes across the grounded figure and pavement; it does not trace a horizon, threshold, or a ring of feet. The separate `crowd perimeter` polyline already makes the defensible enclosure claim. Retain only a primitive that follows the visible structure, then rerender/re-score.

### Advisory (non-blocking)

- The fair-use record is traceable for all twelve files: each entry links the artist archive and public display rendition, credits Yagazie Emezi, and gives a concise complete-frame/non-substitution rationale; the chapter and research note correctly avoid invented camera settings.
- All twelve current specs score 100 with the deterministic scorer. Those results should be retained as geometry checks after revision, but the visual semantic corrections above are still required.

## Resolution — 2026-08-02

- Required fix 1: removed the seven false `vanishing_point` primitives. The
  remaining annotations name visible subjects, contours, thresholds, and
  directional structures without asserting convergence.
- Required fix 2: removed the false `horizon_line` labeled `ring of feet` from
  image 04; its visible crowd enclosure remains the `crowd perimeter` polyline.
- Re-rendered and rescored all eight affected proofs after fresh analysis; each
  retained a score of 100 and passed visual review.
- Critique history re-verified: 2026-08-02, round 1 (the only prior round).

## Critique round — 2026-08-02

### Required

1. **02-endsars-EndSARSProtests-11 — replace the `ellipse` labeled `green placard`.** The visible placard is a large rectangular sheet, not an oval structure; an ellipse makes a materially false shape claim. Use a primitive that identifies the sheet without asserting an oval form.

2. **03-endsars-EndSARSProtests-1 — remove or recast the `frame_in_frame` labeled `checkpoint canopy`.** Its lower edge at `y: 0.69` crosses open foreground/figures rather than an architectural boundary, so the canopy does not form the drawn internal rectangle. This is distinct from (and does not reopen) the prior resolved `horizon_line` issue.

3. **04-endsars-EndSARSProtests-16 — remove or relocate the `leading_line` labeled `cloth diagonal`.** The segment from `(0.006, 0.828)` to `(0.695, 0.452)` runs over pavement and the fallen figure toward the foreground, not along the held black cloth. The previously resolved false `ring of feet` horizon does not recur.

4. **05-endsars-EndSARSProtests-15 — replace the `horizon_line` labeled `bridge deck`.** At `y: 0.496` it runs through sky and people for much of the frame, well above the visible deck/railing at left and center. Trace the actual deck edge or omit the claim.

5. **06-endsars-EndSARSProtests-13 — remove or replace the `horizon_line` labeled `sky-to-crowd threshold`.** Its `y: 0.276` stroke crosses the yellow placard, faces, and raised sign rather than a continuous boundary between sky and crowd.

6. **07-endsars-EndSARSProtests-28 — remove or replace the `leading_line` labeled `raised arm`.** The line from `(0.187, 0.518)` to `(0.664, 0.136)` cuts across several people and signs; it does not follow one visible arm or another continuous directing edge.

7. **09-endsars-EndSARSProtests-39 — remove or replace both road claims.** The `horizon_line` labeled `road edge` at `y: 0.765` traverses the foreground figure and car body, not a road edge; the `leading_line` labeled `curb line` from `(0.017, 0.999)` to `(0.427, 0.799)` also runs through the figure's patterned shirt where no curb is visible. The accompanying prose must not retain its claim of a low road line and curb route unless the revised spec supports it.

8. **11-endsars-EndSARSProtests-67 — remove or replace the `leading_line` labeled `tree edge`.** From `(0.479, 0.381)` to `(0.987, 0.999)` it traverses foliage and lawn rather than following a visible tree or ground contour.

9. **12-endsars-EndSARSProtests-63 — replace the `frame_in_frame` labeled `camouflaged truck`.** The partial bounding rectangle is not an internal frame such as a door, window, or arch, and its lower edge cuts off the vehicle. Use a truthful subject/contour treatment for the truck instead.

### Advisory (non-blocking)

- The `foreground voice` polyline in 06 is less clear than a subject anchor or an actual contour, but it does identify the foreground speaker and is not itself a material false claim.
- The existing fair-use records remain traceable: all twelve direct public display JPG links and the artist archive returned successfully during review, with per-image copyright credit and four-factor rationale. The chapter's analyzer-derived palette, tonal, and grid claims are within tolerance, and it does not invent camera settings.
- All current specs pass the deterministic scorer at 100/100. These required findings are semantic visual failures the scorer does not test.
