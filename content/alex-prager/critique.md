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
