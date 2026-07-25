verdict: revise

## Critique round — 2026-07-25

### Required

1. **`03-crowd-5-washington-square-west-2013` — correct the image-specific source and fair-use rationale.** `sources.md` describes a street-level tableau and openings of pavement, and says the full frame is needed for the relation of figures to those gaps. The proof instead shows the crowd through a tilted open window in a dark green wall, as the chapter and overlay correctly state. Rewrite both the “Why it matters” and Factor 3 text to describe the actual window/wall framing.

2. **`07-crowd-9-sunset-five-2013` — correct the image-specific source rationale.** Its `sources.md` entry describes a panoramic scene of horizon and pavement, but the proof is a seated audience organized by a central aisle and tiers. Replace the mismatched description and frame-necessity rationale with one grounded in the visible seating field.

3. **`08-crowd-10-imperial-theatre-2013` — correct the image-specific source and fair-use rationale.** The source record claims theatre architecture, vertical bands, and seating geometry, while the proof is an overhead red-carpet crowd. Rewrite its “Why it matters” and Factor 3 rationale around the red-carpet field and distributed figures.

4. **`04-crowd-6-hazelwood-2013` — move or relabel `RED-HAIRED FIGURE`.** The `subject_anchor` at `(0.555, 0.276)` lands to the right of the red-haired woman, on the adjacent figure, rather than tracing its label’s subject. It is outside the 0.03 normalized-coordinate tolerance; move it onto the red-haired figure or give it an accurate label.

5. **`09-crowd-11-cedar-and-broad-street-2013` — align `DON'T WALK SIGNAL` with the signal.** The `frame_in_frame` box (`x: 0.470`, `w: 0.135`) is materially left-shifted: it brackets people and only clips the sign instead of framing the visible signal. Resize/reposition it to the actual signal.

6. **`10-crowd-12-speedy-click-2013` — remove or replace `CURTAIN TOP`.** The horizontal line at `y: 0.085` crosses curtain fabric; the curtain continues out of the top of the frame, so no visible top edge exists for this label to trace.

7. **`10-crowd-12-speedy-click-2013` — align `PLAID JACKET` with the jacket.** The ellipse centered at `(0.610, 0.730)` encloses the central dark/nearby light-clothed figures rather than the visible plaid-jacketed figure farther right. Move it to the jacket or label the enclosed feature accurately.

### Advisory (non-blocking)

- `05-crowd-7-bob-hope-airport-2013`: `TILE DIAGONAL` reads as an implied path through partly occluded tiles, rather than one continuous grout seam. Relabeling it `IMPLIED TILE ROUTE` would make the claim more exact, but it remains legible and does not block.

- The remaining proofs are visually readable; all ten current specs return 100/100 in both standard and strict deterministic scoring. The issues above are semantic/source-truthfulness defects that the geometric scorer cannot detect.

## Builder resolution — 2026-07-25

1. Rewrote the `sources.md` “Why it matters” and Factor 3 rationales for Crowd #5, #9, and #10 to describe, respectively, the tilted window in a dark wall, the seated audience and central aisle, and the overhead red-carpet field.
2. Re-rendered the affected overlays: the Hazelwood anchor is now on the red-haired figure; the Cedar and Broad frame encloses the DON'T WALK sign; and the Speedy-click curtain-top claim was removed while the ellipse was moved to the plaid jacket.
3. Re-verified all required items from the full critique history: round 2026-07-25 (the only prior round). All ten overlays pass strict deterministic scoring (nine at 100; Hazelwood at 95.3 because the semantic anchor is intentionally on the red-haired subject rather than the detector's neighboring saliency signal), and the fresh proof visual pass is clean.
4. `scripts/check.sh` and `git diff --check` passed before this resolution.

## Critique round — 2026-07-25

### Required

1. **`02-crowd-4-new-haven-2013` — correct or remove `UPTURNED FACE`.** The ellipse centered at `(0.545, 0.500)` encloses the rear-facing central figure and adjacent torso rather than an upturned face. Its label therefore names a feature the proof does not show at that position. Move the ellipse onto the intended face, relabel it accurately, or remove it.

### Advisory (non-blocking)

None. The previously resolved source rationales and overlays remain materially correct. All ten current specs meet the deterministic score threshold; the Hazelwood anchor's 95.3 score remains a visually defensible intentional semantic placement rather than a regression.
