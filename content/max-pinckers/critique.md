verdict: resolved

## Critique round — 2026-07-26

### Required fixes

1. **`06-papers-in-suburb` — false subject-anchor label.** The `left figure` anchor at `(0.243, 0.433)` is centred on the raised papers/space above the left man's head, not on that figure. Move it onto the man or relabel it for the feature it actually traces. The current label teaches a false location for the figure.

2. **`11-subway-platform` — false internal-frame claim.** The primitive labelled `central door` encloses the inter-train gap and the opposing train fronts; there is no central door in that rectangle. The chapter repeats the error by calling the gap a "narrow internal door." Relabel it as the inter-train gap/aperture, or move the primitive and prose to an actual door.

3. **`sources.md` — image descriptions must match the supplied/source-traceable frames.** The linked display rendition for `09-shadow-street` matches the supplied porch image, which visibly contains three sumo-clad figures; its source note instead describes a crouched figure and street shadows. `08-fallen-figure` likewise describes a prone second figure that is not visible in its supplied frame. Correct the titles/Why-it-matters text and the image-specific teaching rationale for both entries so the source record, fair-use explanation, and visible plates describe the same photographs.

4. **`sources.md` — incomplete per-image fair-use documentation.** The file calls the entries individual four-factor assessments, but each image entry omits an assessment of factor two (the nature of these published, creative contemporary photographs). Add a concise factor-two conclusion to every image's own fair-use rationale; a chapter-level copyright/credit statement is not an individual four-factor assessment.

### Advisory (non-blocking)

- `07-figure-in-street`: the `street focal point` anchor is on a distant building rather than the action in the road. The chapter makes clear that it is intended as a distant visual focal point, so this is not a false claim, but a more specific label would make that reading easier to teach.
- `10-car-mirror`: the `rear-view mirror` frame extends modestly beyond the mirror at its right edge. It still clearly identifies the correct mirror; tighten it if convenient.

## Builder resolution — 2026-07-26

All required fixes from the 2026-07-26 critique round were re-verified against the current chapter, source notes, overlays, and rendered proofs.

1. `06-papers-in-suburb` now labels the measured anchor as the raised paper cluster, which is the visible feature it marks; the unsupported symmetry claim was also removed and the paper path shortened to visible sheets.
2. `11-subway-platform` now identifies the framed feature as the inter-train aperture, and the chapter uses the same accurate term.
3. The `08` and `09` source records now use editorial descriptors and describe the visible single crouching figure and porch encounter respectively; their teaching rationales match the supplied frames.
4. Every per-image fair-use assessment now explicitly records factor two: each is a published, creative contemporary photograph, which weighs against fair use.

The advisory labels for `07-figure-in-street` and the `10-car-mirror` proof were also clarified. Fresh render/score passes for `06`, `07`, `10`, and `11` each scored 100/100, and the composite PNGs passed visual inspection. `scripts/check.sh` passed before this resolution was recorded.
