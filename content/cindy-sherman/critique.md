verdict: resolved

## Critique round — 2026-07-23

### Required

1. `04-film-still-41`: the `CONCRETE COURT` `frame_in_frame` is a screen-aligned rectangle rather than the receding, visible boundaries of the architectural court. Its upper and right edges sit in open/adjacent image space, so the primitive does not trace the structure named by its label. Replace it with a primitive that follows a real architectural boundary, or remove/relabel it.
2. `06-film-still-56`: the `REFLECTED EYE` subject anchor at `(0.443, 0.536)` lands on the bright left facial/reflection edge rather than on the visible reflected eye. Move it to the eye or relabel the actual feature.
3. `07-untitled-88`: the `LIT FACE` subject anchor at `(0.654, 0.387)` lands below the face, in the chin/hand area. Move it onto the face or relabel the feature it actually marks.
4. `08-untitled-92`: the `FLOORBOARD DIAGONAL` leading line begins in empty dark space and cuts across the figure rather than tracing a floorboard seam. The normal scorer records it as unsupported (94/100 with the leading-line warning; strict score 88 after the unsupported-line deduction). Trace a visible floorboard seam or remove the claim.
5. `sources.md` contains materially false per-image descriptions and corresponding fair-use teaching rationales for `03-film-still-24`, `04-film-still-41`, `05-film-still-50`, and `08-untitled-92`. The linked Art Institute object IDs and image IDs are correct, but the text describes different scenes: #24 is the waterfront portrait shown in the proof, not a domestic wall/furniture scene; #41 is the sparse concrete court, not a crowded apartment; #50 is the furnished interior, not an outdoor road landscape; and #92 is an overhead crouched figure on floorboards, not a low-viewpoint extremely wide horizontal scene. Correct each `Why it matters` entry and the image-specific factors 1 and 3 so the documented fair-use rationale truthfully identifies the work being analyzed.

### Advisory (non-blocking)

- `01-film-still-03`: `COUNTER EDGE` is slightly detached through the middle of its path; tightening it to the visible diagonal would make the claim cleaner.
- `02-film-still-12`: `BED EDGE` crosses suitcase/bed surface and is only loosely continuous as a single edge. A more precise mattress boundary or label would improve legibility.
- `03-film-still-24`: `FAR-BANK SEAM` and `WATERLINE` are both plausible, but their close parallel placement competes visually. Separating their roles or retaining the stronger boundary would clarify the teaching argument.

## Builder resolution — 2026-07-23

All five required fixes are resolved.

1. `04-film-still-41` replaces the false screen-aligned court rectangle with polylines that trace the raised platform edge and receding roof beam; the proof is visually clean and scores 100 under the strict overlay scorer.
2. `06-film-still-56` replaces the misplaced eye anchor with a small `VISIBLE REFLECTED EYE` ellipse centered on the visible eye; strict score 100.
3. `07-untitled-88` moves `LIT FACE` to `(0.654, 0.200)`, on the face rather than the hand/chin; strict score 84.1.
4. `08-untitled-92` replaces the unsupported diagonal with `OUTER FLOORBOARD SEAM`, traced wholly in the visible right-side floor; strict score 100.
5. `sources.md` now truthfully identifies the waterfront portrait (#24), concrete court (#41), furnished interior (#50), and overhead floorboard scene (#92) in both the compositional descriptions and fair-use factors 1 and 3.

Re-verified full critique history: 2026-07-23, the sole prior critique round. The chapter mirrors remain byte-identical, the contact sheet has been regenerated, and `scripts/check.sh` passes.

## Critique round — 2026-07-23

### Required

1. `05-film-still-50`: the `STANDING SCULPTURE` polyline at approximately `x=0.455` runs through curtain/negative space beside the narrow sculpture rather than on its visible contour. Move it onto the sculpture, or remove the claim.
2. `07-untitled-88`: the `EDGE OF WARM LIGHT` polyline begins in unfeatured black space and then cuts across the figure; it does not trace a visible warm-light boundary. Remove it or redraw it on an actual light transition.
3. `09-untitled-96`: both diagonal claims are false as drawn. `TILE-GRID DIAGONAL` cuts across tiles and the figure instead of following a grout seam, while `ORANGE TORSO` begins on the checked skirt and terminates at the face rather than tracing the torso. Remove, relabel, or redraw each primitive to the named feature.
4. `11-untitled-1983`: the `BLACK STUDIO BACKDROP` `frame_in_frame` does not trace an internal frame: its right and lower boundaries float within the continuing black backdrop. Replace it with a primitive on a real boundary or remove the frame claim.
5. `12-untitled-179`: the `SCATTER OF PROPS` polyline starts in empty upper-left space, crosses the figure/chair mass, and does not follow a legible path or grouping of the scattered props. Remove it or redraw a path that follows actual props.

### Advisory (non-blocking)

- `10-untitled-145`: `BODY'S DIAGONAL` reads as the figure's overall gesture, but it crosses the face rather than following a specific contour. A gesture/axis label or a more literal contour would be clearer.

### Verification notes

- Rechecked the earlier resolved `06-film-still-56` eye marker and `07-untitled-88` face anchor. Both remain on their named visible features; the current `LIT FACE` marker is semantically on the face despite the analyzer's saliency preference, so the settled anchor finding is not reopened.
- All twelve records have a linked Art Institute object page, credit/copyright notice, and concise four-factor fair-use rationale. The source descriptions match the visible works; no settings are claimed. The detector-backed chapter metrics and palette values match the analysis files within stated rounding tolerance.

## Builder resolution — 2026-07-23

All five required fixes in the current round are resolved.

1. `05-film-still-50` removes the `STANDING SCULPTURE` polyline, which did not follow the sculpture; the remaining cat anchor and lamp-and-face ellipse land on their named visible features. Strict score: 100.
2. `07-untitled-88` removes the unsupported `EDGE OF WARM LIGHT` polyline. The settled `LIT FACE` marker and crouched-body ellipse remain visually accurate. Strict score: 84.1.
3. `09-untitled-96` replaces both false diagonal claims with an `ORANGE SHIRT` ellipse that directly encloses the visible shirt; the chapter and contact-sheet thesis no longer claim a forced tile or torso route. Strict score: 100.
4. `11-untitled-1983` removes the false `BLACK STUDIO BACKDROP` frame claim; the chapter now identifies the black field without treating it as an internal frame. Strict score: 100.
5. `12-untitled-179` removes the unsupported `SCATTER OF PROPS` polyline; the figure-and-chair ellipse and a single visible right-side-prop anchor make only claims that the proof supports. Strict score: 100.

Re-verified full critique history: both 2026-07-23 critique rounds. The earlier required corrections remain intact: the #41 roof-beam and raised-platform polylines trace the concrete court; the #56 reflected-eye ellipse is on the visible eye; the #88 face marker is on the face; the #92 seam follows the right-side floorboard; and the #24, #41, #50, and #92 source descriptions and fair-use factors truthfully match the shown works. All twelve strict scores are at least 80, the regenerated proofs and contact sheet pass visual review, the two chapter copies are byte-identical, and `scripts/check.sh` passes.
