verdict: resolved

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

## Resolution — 2026-08-02

- Required fix 1: replaced the placard ellipse in image 02 with a contour that follows the sheet’s visible rectangular edges.
- Required fix 2: removed the unsupported canopy `frame_in_frame` from image 03; the retained canopy edge and roof strut trace visible structure.
- Required fix 3: relocated image 04’s line to the held cloth, which it follows from hand toward the left edge.
- Required fix 4: replaced image 05’s false horizon with the visible bridge parapet edge.
- Required fix 5: removed image 06’s false sky-to-crowd horizon and retained only the placard and foreground speaker.
- Required fix 6: removed image 07’s unsupported raised-arm line and added the visible foreground phone anchor.
- Required fix 7: removed image 09’s false road and curb claims and revised the prose so it no longer asserts them.
- Required fix 8: removed image 11’s unsupported tree-edge line.
- Required fix 9: replaced image 12’s false truck frame with a subject anchor on the visible security truck.
- Fresh analysis, render, score, and visual review were run for all nine affected proofs. Scores: 02 100, 03 100, 04 94, 05 94, 06 100, 07 100, 09 100, 11 100, 12 100. The two 94-point proofs have only detector-edge warnings; their retained lines visibly trace the held cloth and bridge parapet.
- Critique history re-verified: 2026-08-02, round 1 and round 2. Round 1’s seven removed false `vanishing_point` claims remain absent, and image 04 has no `horizon_line` claim.

## Critique round — 2026-08-02

### Required

1. **06-endsars-EndSARSProtests-13 — add one or more truthful compositional primitives.** The proof retains only `yellow placard` and `foreground speaker` (two primitives), below the required 3–5. As a result, the overlay does not teach the other visible relation the chapter relies on: the raised white sign and the crowd’s layered depth around the speaker. Add only primitives that visibly trace those features; do not restore the previously resolved false sky-to-crowd horizon.

2. **09-endsars-EndSARSProtests-39 — make the overlay teach the stated foreground-to-car relationship.** The proof has a single `foreground protester` ellipse. That correctly identifies the figure but leaves the raised fist and car—both central to the caption, notes, and chapter’s claimed wider civic space—without a compositional annotation, and falls below the required 3–5 primitives. Add 2–4 truthful primitives that follow visible features (for example, the raised arm/fist and a genuine vehicle contour or edge); do not reintroduce the road and curb claims resolved in round 2.

3. **11-endsars-EndSARSProtests-67 — add a truthful third compositional primitive.** The sign-bearer ellipse and sidewalk threshold are both visually accurate, but the two-primitive proof does not reach the required 3–5 teaching marks and leaves the image’s traffic/sidewalk/green-wall balance described in the chapter unexplained. Add a visibly supported feature that clarifies that balance without reviving the round-2 `tree edge` leading-line claim.

### Advisory (non-blocking)

- The 04 held-cloth and 05 bridge-parapet lines each retain a detector-only 6-point warning (scores 94/100); both visibly trace the named feature, so this is not a regression or a blocking geometry failure.
- All other proofs are materially truthful and retain the prior-round corrections. Deterministic scores are 100/100 for the remaining ten overlays.
- Source integrity passed this review: the official archive and all twelve documented public display JPG links returned HTTP 200, and every image has a traceable fair-use record with creator credit and the required concise four-factor rationale. The chapter’s analyzer-derived figures match the current analysis files and it makes no camera-setting claims.

## Resolution — 2026-08-02

- Required fix 1: image 06 now pairs the yellow placard and foreground speaker
  with a polyline that follows the raised white sign’s visible perimeter. This
  restores the sign-and-crowd relationship without reviving the resolved false
  sky-to-crowd horizon.
- Required fix 2: image 09 now traces the protester’s raised arm and fist and
  the car roofline alongside the foreground figure. The previously removed road
  and curb claims remain absent from both overlay and chapter.
- Required fix 3: image 11 now traces the sidewalk edge beside the sign bearer,
  making the boundary between pedestrian space and the green verge explicit;
  the resolved false tree-edge line remains absent.
- Fresh analysis, rendering, score, and visual review were completed for all
  three revised proofs. Scores: 06 100, 09 100, and 11 100.
- Critique history re-verified: 2026-08-02 rounds 1, 2, and 3. Round 1’s seven
  false vanishing-point claims remain absent and image 04 has no horizon-line
  claim. Round 2’s placard, canopy, cloth, parapet, horizon, raised-arm, road,
  curb, tree-edge, and truck corrections remain visible in their current
  overlays/proofs; the chapter retains no removed road/curb prose.
