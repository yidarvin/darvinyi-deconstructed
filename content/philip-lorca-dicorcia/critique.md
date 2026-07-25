verdict: approve

## Critique round — 2026-07-25

### Required

1. **`04-new-haven-1978` — `BATHTUB` frame does not trace the bathtub.** The `frame_in_frame` top runs across wall and bottles above the rear rim, and its left side follows the wooden counter rather than a tub edge. Refit it to actual bathtub boundaries or replace it with a truthful, less literal primitive. The chapter's enclosure reading depends on this annotation being literal.
2. **`05-tokyo-1998` — `BILLBOARD FIELD` makes a false internal-frame claim.** Its bounds cut across separate HMV and Kinki Kids signs and include open sky/building rather than enclosing a coherent billboard or architectural frame. Trace one real sign/field boundary or use a primitive that does not assert a bounded frame.
3. **`08-hannah-2004` — `BODY AND TUB CONTOUR` is materially false.** No tub is visible, and the line floats through negative space below the extended body instead of tracing a body contour. Remove it or redraw it on a visible contour with a truthful label. (The visible pole itself is correctly labelled.)
4. **`09-havana-1999` — `STREET RECESSION` does not trace a street edge.** The arrow crosses the isolated man and crowd without following a curb, pavement boundary, or other receding feature; strict scoring independently reports that it tracks neither an edge nor the measured vanishing point. Replace it with an actual receding edge or remove it.
5. **`10-ike-cole-hustlers-1990-92` — `CAR ROOF` names the wrong feature.** The y=0.783 line follows the foreground car's hood/upper body edge, not a roof. Rename it accurately or reposition it on a visible roofline.

### Advisory (non-blocking)

None.

All source records are traceable and credit the works appropriately; each fair-use selection includes a concise, per-image four-factor rationale. The chapter's reported analyzer values match the current analysis files, and it does not invent camera settings.

## Builder resolution — 2026-07-25

Re-verified critique history: the 2026-07-25 round (the only prior round in `git log -p -- content/philip-lorca-dicorcia/critique.md`). All five required fixes remain satisfied:

1. `04-new-haven-1978` now drops the false bathtub frame and traces the measured wooden-counter edge; the chapter and caption no longer claim an overlay frame around the tub.
2. `05-tokyo-1998` bounds the single, visible blue video billboard rather than an invented billboard field.
3. `08-hannah-2004` removes the false body-and-tub contour and retains only the truthful pole and face annotations.
4. `09-havana-1999` removes the unsupported street-recession arrow and matching prose claim.
5. `10-ike-cole-hustlers-1990-92` accurately labels the y=0.783 feature as the foreground car edge; matching prose and caption refer to foreground cars rather than roofs.

All five refreshed proofs received a clean visual pass. The scores are 100/100 for `04`, `05`, `09`, and `10`; `08` scores 94/100 because the deterministic edge detector does not follow the visually literal pole. `scripts/check.sh` passed before this verdict update; the chapter copies remain byte-identical.

## Critique round — 2026-07-25

### Required

None.

The five required findings from the prior 2026-07-25 round remain resolved: `04-new-haven-1978` traces the wooden counter edge rather than asserting a bathtub frame; `05-tokyo-1998` bounds the visible blue video billboard; `08-hannah-2004` labels only the visible pole and face; `09-havana-1999` no longer asserts unsupported street recession; and `10-ike-cole-hustlers-1990-92` accurately names the foreground car edge. Every current proof was visually checked against its overlay and analysis file. Current overlay scores pass at or above the required threshold; the `08-hannah-2004` pole warning is a detector limitation, not a false visual claim.

Source records are traceable, credits and titles match the set, and every fair-use image includes a concise per-image four-factor rationale. Chapter measurements match the current analyzer files within the stated tolerance, and no camera settings are invented.

### Advisory (non-blocking)

None.
