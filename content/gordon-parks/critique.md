verdict: approve

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

## Resolution — 2026-07-17

Re-verified critique history: both 2026-07-17 critique rounds.

1. `10-7th-street-saturday`: removed the unsupported `awning edge` polyline rather than asserting a replacement. The remaining central-exchange ellipse and shop-window frame are visually truthful in the regenerated proof; the scorer reports 100/100.
2. Prior round: `06-ella-watson-walk-home` retains polylines on the left bed's top rail and the right bed's curved head rail; visually rechecked, score 100/100.
3. Prior round: `07-ella-watson-dressing-grandchildren` retains the mantel-shelf polyline on the horizontal shelf above Watson's head; visually rechecked, score 100/100.
4. Prior round: `10-7th-street-saturday` continues to omit the unsupported `foreground shoulder` polyline. The mirrored chapter remains byte-identical and its cropped-foreground language is still accurate.

`scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-07-17

### Required

1. **`05-ella-watson-bible` — the polyline labelled `right bed rail` does not trace the right bed rail.** In the current proof, the path begins in the wall/doorway area above the bed, crosses the child at right, and only reaches bedding near its lower endpoint. This is materially outside the endpoint tolerance and falsely names an empty route as a rail. Redraw the polyline on the visible metal rail, or remove the primitive and revise the rail claim in the chapter and plate caption if needed. This is a newly identified primitive in a different proof; it does not reopen the resolved `06-ella-watson-walk-home` rail correction.

### Advisory (non-blocking)

None. All eleven current specs score 100/100 under the strict deterministic scorer, but that result does not supersede the visible semantic error above. The previously resolved `06` rails, `07` mantel shelf, and `10` removed primitives remain visually truthful. The chapter's reported tonal values match their analyzer JSON within tolerance; it states no camera settings. All eleven image records remain traceable to the cited LOC FSA/OWI public-domain records with the stated credit, and no fair-use rationale is required.

## Resolution — 2026-07-17

Re-verified critique history: all three 2026-07-17 critique rounds.

1. `05-ella-watson-bible`: redrew the `right bed rail` polyline on the visible rounded metal head rail, from its lower-left rise through its crest and descending curve. The regenerated proof is visually clean and the scorer reports 100/100; the existing rail prose and caption remain supported.
2. First prior round: `06-ella-watson-walk-home` retains the left bed's top-rail polyline and the right bed's curved-head-rail polyline; both were visually rechecked in the current proof and score 100/100.
3. First prior round: `07-ella-watson-dressing-grandchildren` retains the `mantel shelf` polyline on the shelf above Watson's head; it was visually rechecked in the current proof and scores 100/100.
4. First and second prior rounds: `10-7th-street-saturday` continues to omit both the unsupported `foreground shoulder` and `awning edge` polylines; the remaining ellipse and shop-window frame are visually truthful and score 100/100.

The mirrored chapter files remain byte-identical. A final `scripts/check.sh` pass completed before this resolution was recorded.

## Critique round — 2026-07-17

### Required

None. All eleven rendered proofs were reviewed against their current overlay specs. The repaired rails in `05-ella-watson-bible` and `06-ella-watson-walk-home`, the `07-ella-watson-dressing-grandchildren` mantel shelf, and the simplified `10-7th-street-saturday` overlay remain truthful; none of the settled findings has regressed. Each spec scores 100/100 with no scorer warning. The chapter's tonal measurements agree with the analyzer JSON within tolerance and it invents no camera settings. Every image has a direct LOC item/JPEG route, the stated FSA/OWI public-domain basis and credit are accurate, and no fair-use selection is present or required.

### Advisory (non-blocking)

1. `sources.md` says the selection “begins with” *American Gothic*, while the supplied plate and table order start with `01-charwoman-at-work` and place *American Gothic* second. Clarify whether this means the conceptual argument rather than the displayed order.
2. In `06-ella-watson-walk-home.json`, the non-displayed notes call Watson a “departing figure,” though the catalog title and chapter describe her return home. Change this to “returning” or “arriving” for internal consistency.
3. `08-ella-watson-leaves-work`'s full-height stairwell axis crosses the archival caption strip even though the chapter correctly distinguishes the photograph field from that surround. Clipping the mark to the photograph field would make the presentation cleaner, but its central alignment remains clear and does not misstate the composition.
