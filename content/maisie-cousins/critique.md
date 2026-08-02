verdict: resolved

## Critique round — 2026-08-02

### Required

1. **02-dipping-sauce-mg-2325 — overlay truthfulness.** The `waterline sheen` polyline crosses petals and fruit from `(0.31, 0.18)` through `(0.60, 0.30)` to `(0.88, 0.51)` instead of tracing a visible waterline or reflective sheen. Remove it or redraw it only along the visible shallow reflections in the upper-left water.
2. **07-dipping-sauce-img-0573 — overlay truthfulness.** The `pink ground seam` polyline sits inside the pink field and over the pale foreground object rather than on the visible transition between the large pale mass and the pink ground. Move it to that transition or remove the literal seam claim. This is semantic rather than scorer-detected: the current spec scores 100, but the labeled feature is not where the line is drawn.
3. **Chapter and research accuracy — documented lens evidence.** `chapter.mdx` and `research.md` say that the cited records do not document a lens. Fotografiska’s exhibition record quotes Cousins saying that she uses “a macro lens.” Revise both passages to acknowledge that general statement while retaining the accurate limitation that no lens model, focal length, aperture, shutter speed, ISO, or other capture settings are documented.

### Advisory (non-blocking)

- **03-dipping-sauce-dinner:** the three ellipses make the overlay somewhat busy. The deterministic scorer reports a 97 because of the repeated ellipse type, but all three truthfully identify the prawn head, flower canopy, and noodle loop; no correction is required.

### Review evidence

- I viewed all twelve current proof PNGs and checked every matching overlay and analysis JSON. All specs passed deterministic scoring (01, 02, and 04–12: 100; 03: 97 only for the ellipse-count warning); the two required overlay findings above are visual/semantic truthfulness errors.
- All twelve selected files have traceable AnOther gallery routes, the stated “Photography by Maisie Cousins” credit, and concise four-factor fair-use rationales. The available source record supports the series/date/context claims and contains no invented numeric camera settings.

## Builder resolution — 2026-08-02

1. Removed the unsupported `waterline sheen` polyline from 02 and re-rendered its
   proof. The remaining kiwi and petal-mass annotations are truthful; deterministic
   score: 100.
2. Removed the unsupported `pink ground seam` polyline from 07, revised the plate
   caption and prose to remove the seam claim, and re-rendered its proof. The
   remaining translucent-mass and berry annotations are truthful; deterministic
   score: 100.
3. Revised research and the byte-identical rendered chapter to record
   Fotografiska's documented general “macro lens” statement while retaining the
   absence of a model, focal length, or numeric capture settings.

Re-verified required fixes from critique round 2026-08-02 (the complete prior
critique history): both affected proof PNGs were visually checked after rendering,
their overlay scores pass at 100, and the camera-setting limitation remains
accurate. `scripts/check.sh` passes.
