verdict: revise

## Critique round — 2026-07-17

### Required

1. **`06-ella-watson-walk-home` — both primitives labelled `left bed rail` and `right bed rail` trace the wrong features.** In the proof, the left polyline begins on the curtain/blank wall and crosses the wall before reaching the left bed; the right polyline begins over Watson/the doorway area and then crosses the bedding rather than following the right rail. These are not endpoint-margin errors: each makes the reader believe a non-existent rail route. Re-draw both polylines on the visible metal bed rails, or remove the claims and adjust the chapter/caption if the route can no longer be supported.

2. **`07-ella-watson-dressing-grandchildren` — `mantel shelf` is materially misplaced.** The shelf is the horizontal structure near the top of the photographic field, above Watson's head. The labelled polyline at `y` about `0.32` instead passes through the heads/upper bodies of Watson and the children. Move it to the actual shelf or remove the primitive; the chapter's claim that the mantel supplies the stabilizing horizontal must match the corrected spec.

3. **`10-7th-street-saturday` — `foreground shoulder` is not traced by its polyline.** Its first two points lie in the blank sky well above the cropped figure, and the path enters the figure only after leaving the claimed shoulder contour. This changes the stated framing lesson. Place the line on the foreground figure's visible shoulder/outer contour, or use a label that accurately names the feature the path follows.

### Advisory (non-blocking)

None. All eleven specs score 100 in the deterministic overlay scorer, but that score does not supersede the visible semantic errors above. The remaining visible primitives read as their labels claim. The chapter's measured tonal values agree with the matching analyzer JSON within tolerance; it invents no camera settings. Each selected image has a direct LOC record/JPEG route, the stated FSA/OWI public-domain basis and credit are corroborated by the LOC records, and no fair-use rationale is required.

## Resolution — 2026-07-17

Re-verified critique history: 2026-07-17, the sole prior critique round.

1. `06-ella-watson-walk-home`: both labelled polylines were redrawn on the visible left bed's top rail and the right bed's curved head rail. The rendered proof was visually checked and the scorer reports 100/100.
2. `07-ella-watson-dressing-grandchildren`: the `mantel shelf` polyline now sits on the horizontal shelf above Watson's head. The chapter's stabilizing-horizontal claim remains supported; proof visually checked, score 100/100.
3. `10-7th-street-saturday`: removed the unsupported `foreground shoulder` polyline and narrowed the matching chapter and plate-caption language to a cropped foreground figure. Proof visually checked, score 100/100.

`scripts/check.sh` passed before this resolution was recorded. The mirrored chapter files remain byte-identical.

## Critique round — 2026-07-17

### Required

1. **`10-7th-street-saturday` — the `awning edge` polyline traces the wrong geometry.** The current spec runs from `[0.42, 0.04]` through `[0.62, 0.11]` to `[0.72, 0.29]`. In the rendered proof, its first segment crosses the black negative border and blank sky, and its second descends through the shop-front area; it does not follow the visible diagonal awning in the upper-right of the photograph. This is materially outside the endpoint tolerance and falsely teaches the diagonal pressure named by the label. Remove the primitive, or redraw it on the actual awning edge and re-render/score the proof. The prior round's resolved `foreground shoulder` finding remains settled; this is a separate, previously unreviewed primitive.

### Advisory (non-blocking)

None. All eleven current specs score 100/100 in the deterministic scorer; the remaining issue is semantic and visible only in the proof. The prior rail and mantel corrections remain visually truthful. The chapter's reported tonal measurements match the analyzer values within tolerance, it invents no camera settings, and all eleven LOC sources remain traceable open/public-domain records with the stated FSA/OWI credit.
