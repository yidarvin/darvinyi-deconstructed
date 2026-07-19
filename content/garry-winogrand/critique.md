verdict: revise

## Critique round — 2026-07-18

### Required fixes

1. **07-peace-demonstration-central-park** — Move or remove the `BARE TREE` polyline. In the proof its near-vertical segment runs at x≈0.50, while the pictured bare trunk runs about x≈0.43–0.45 across the same height. This is a material mismatch, not an endpoint margin: the line does not trace the tree named by its label.
2. **09-hippy-hollow-lake-travis** — Re-anchor `WADING FIGURE`. The current `subject_anchor` at `(0.554, 0.872)` lands in foreground foliage; the nude figure is visible near the middle-left water opening (about `(0.39, 0.55)`). The proof therefore falsely identifies the foliage as the figure.
3. **11-venice-california** — Remove, rename, or relocate the `BENCH AND PAVEMENT BAND` horizon line. At y=`0.524` it cuts across the foreground man's belt and the older woman's torso, not a bench/pavement division. The label names a structure absent at that position.
4. **12-new-york-city** — Re-anchor `REFLECTED ANIMAL`. The current marker `(0.68, 0.127)` is on the oversized hand/arm; the animal's visible reflected face is farther right in the window (about x=`0.82`). This makes the named overlay feature false.

### Advisory (non-blocking)

- **01-worlds-fair-new-york-city** — `DISTANT WALKERS` at y=`0.264` reads more like the hedge/bench transition than the walkers in the upper band. Rename or simplify it on the next normal overlay pass.
- **03-central-park-zoo** — The `DIVERGENT GAZES` polyline is not readily legible as sightlines in the proof. It may be tightened or removed if a subsequent visual pass cannot make that reading clear.
- The deterministic scorer returns 100 for all twelve specs because their geometry matches analyzer suggestions; the required findings above are semantic visual-pass failures that the scorer cannot determine.

### Verified in this round

- All twelve proofs were visually reviewed against their overlay specs and analysis files.
- The chapter's stated analyzer values agree with the analysis JSON within the stated tolerance. The research and chapter do not invent camera, film, or print settings.
- Every image has an Art Institute object record and collection credit, and every fair-use entry provides a concise per-image four-factor rationale. No source-integrity blocker was found.
