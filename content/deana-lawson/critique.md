verdict: resolved

## Critique round — 2026-07-26

### Required

1. **04-nation — doorway overlay traces the wrong area.** The `open doorway` frame begins at x=0.47, placing its left and upper marks over the blank wall and the right seated figure rather than the doorway, which begins much farther right in the proof. Refit the frame to the actual doorway (or change the claim) and keep the prose/spec aligned.

2. **06-cowboys — the two contour labels make false feature claims.** `left horse contour` and `center horse contour` each bridge riders and more than one horse rather than tracing the named individual horse. Replace them with contours that follow the stated horse or relabel/prune them; do not call cross-group diagonals horse contours.

3. **08-as-above-so-below — the mask is outside the labelled ellipse.** The `head and animal mask` ellipse starts below the animal mask and encloses the head and upper torso instead. Expand/reposition it to include the mask, or relabel it accurately.

4. **Source integrity — four image-specific fair-use records describe scenes that the corresponding public-display proofs do not show.** Correct the descriptive paragraph and Factors 1 and 3 in `sources.md` for **04-nation** (it calls the visible seated pair a “central reclining body”), **06-cowboys** (it claims a posed group in a shallow interior rather than riders and horses in a night field), **07-hellshire-beach-towel-with-flies** (it claims a figure and beach/horizon-like setting rather than the displayed towel and red surface), and **10-dirty-south** (it claims a domestic room rather than the displayed car, open door, and night ground). Each fair-use rationale must explain the actual complete frame used by the chapter.

### Advisory (non-blocking)

- **10-dirty-south:** the `car roof and windshield` polyline starts on the open-door/ground-side area before it reaches the car. Retuning or narrowing it would make the demonstration cleaner, but the car claim remains legible.

All twelve proofs were viewed. The deterministic overlay scorer reports 100 for each spec, but its geometric score does not resolve the semantic misalignments above. The chapter avoids invented camera settings, and the remaining source routes, credits, titles, dates, and four-factor entries are traceable.

## Builder resolution — 2026-07-26

Re-verified critique history: the only prior round, **Critique round — 2026-07-26**.

1. Refit `04-nation`'s `open doorway` frame from x=0.47–0.72 to x=0.58–0.72, so it now traces the actual doorway rather than blank wall and the seated figure. The prose continues to describe the doorway.
2. Removed the two cross-group `Cowboys` contour polylines; the overlay and chapter now make the narrower, truthful claim of two horse-and-rider group ellipses.
3. Expanded and raised the `08-as-above-so-below` `head and animal mask` ellipse so it contains the visible mask as well as the head.
4. Corrected the `Nation`, `Cowboys`, `Hellshire Beach Towel with Flies`, and `Dirty South` source descriptions and Factors 1 and 3 to describe their actual display frames.
5. Also narrowed the advisory `Dirty South` roof-and-windshield polyline so it starts on the car rather than the open-door/ground area.

Each changed overlay was freshly analyzed, rendered, visually checked, and scored 100/100. `scripts/check.sh` passed before this resolution note was recorded.

## Critique round — 2026-07-26

### Required

1. **04-nation — `couch edge` does not trace a couch edge.** The polyline starts on the left couch but then crosses the right seated figure's lap/forearm and ends in open figure/floor space. It therefore makes a false continuous-edge claim. Remove it or re-trace only a visible couch contour.

2. **07-hellshire-beach-towel-with-flies — `towel fold` labels the towel's outside lower boundary.** The three-point line follows the lower silhouette of the towel rather than an internal fold. Reposition it on a visible fold or relabel it accurately.

3. **10-dirty-south — `car body contour` begins in empty ground and mostly runs below the vehicle.** Its first point is left of the car and its long segment follows ground beneath the rocker/body before reaching the rear. Re-trace an actual car silhouette/body edge or rename the line as a ground-plane sweep.

4. **Settings honesty — unsupported flash claims.** The chapter calls *Cowboys* and *Dirty South* “flash-lit,” calls the latter's light “flash illumination,” and `sources.md` likewise calls the *Dirty South* car flash-lit, while the research note records that lighting setup is unknown and says not to infer it from flash-like illumination. Replace these with observable-lighting language; do not assert an undocumented flash setup.

### Advisory (non-blocking)

- **05-the-garden-gemena-dr-congo:** `foreground grass path` is a loose route through foliage more than a distinct path. Tightening it or calling it a grass sweep would make the lesson clearer, but it does not misidentify the scene.
- **09-congregation:** the upper and lower crowd-band polylines are interpretive routes through a continuous crowd rather than discrete bands. They remain a readable compositional aid and do not block approval.

All twelve proofs were visually re-reviewed. The overlay scorer returns 100/100 for every current spec, including the items above; those geometric results do not cure the semantic feature-label errors. The previous round's resolved doorway, horse-and-rider, mask, fair-use-description, and roof-line corrections remain materially intact. All twelve documented direct display links currently return public `image/jpeg` responses, and every entry retains a credit, gallery record, and concise per-image four-factor fair-use rationale.

## Builder resolution — 2026-07-26

Re-verified critique history: **Critique round — 2026-07-26** (first round and
its prior resolution), and **Critique round — 2026-07-26** (current round).
The earlier doorway frame, two horse-and-rider group ellipses, mask ellipse, and
the four corrected fair-use scene descriptions remain intact after direct proof
and source review.

1. Removed the `Nation` `couch edge` polyline rather than making a false
   continuous-edge claim. The chapter now describes the couch without treating
   it as a traced overlay feature.
2. Removed the `Hellshire Beach Towel` `towel fold` line, which tracked the
   lower silhouette rather than an internal fold. The overlay and prose now make
   the narrower claim of a rumpled towel mass with an upper contour and a lower
   display edge.
3. Replaced the `Dirty South` `car body contour` with a line that stays on the
   visible foreground and is labelled `rutted ground plane`; the chapter now
   states that this ground plane sets the car's low placement.
4. Replaced all Lawson-specific `flash-lit` and `flash illumination` assertions
   with observable `brightly illuminated` or `sharp local brightness` language,
   including the chapter, source record, and overlay notes.

Fresh analysis, rendering, visual inspection, and scoring of `04-nation`,
`07-hellshire-beach-towel-with-flies`, and `10-dirty-south` each returned
100/100. `scripts/check.sh` passed before this resolution note was recorded.
