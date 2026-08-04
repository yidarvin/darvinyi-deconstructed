verdict: resolved

## Critique round — 2026-08-04

### Required

1. **02-chivalry-in-retrograde — false “opposing diagonals” claim.** The two cyan leading lines both run from lower left to upper right and both arrow toward the upper right; they are nearly parallel rather than opposing. This makes the overlay notes and the chapter’s “opposing diagonals” description false. Reword the claim to describe the parallel/converging thrust, or redraw one line on a genuinely opposing visible structure.
2. **11-cenotaphs-62 — `CENTRAL AXIS` misses the depicted figure’s center.** The `symmetry_axis` at `x: 0.438` passes through the left half of the helmet and torso, while the head ellipse and frontal figure are centered around `x: 0.50`. The analyzer’s `vertical_axis_x: 0.4375` does not make this a semantically truthful portrait/figure axis in the proof. Reposition or remove the primitive and make the chapter/spec language match the corrected reading.
3. **12-napoleon-i — `PORTRAIT AXIS` is not the portrait axis.** The `symmetry_axis` at `x: 0.388` runs through the sitter’s left eye/cheek rather than the organizing center of the face or uniform (the overlay’s face ellipse is centered at `x: 0.48`). It therefore asserts mirroring the proof does not show. Reposition, replace, or remove the primitive, and adjust the spec note’s “frontal face” wording if needed.

### Advisory (non-blocking)

- **07-eightfold-noble-path:** the rigid rectangular `INNER ENCLOSURE` only approximately represents the irregular enclosing form described in the caption and prose. Consider either describing it as a rectangular central field or using primitives that follow the irregular form.
- `NEEDED.md` is absent. This does not affect source traceability or limited-mode honesty for this fully sourced chapter, but adding a concise acquisition-complete record would restore the expected chapter audit artifact.

### Verification record

- All twelve proof PNGs were visually inspected. Each current overlay scores 100/100 against its matching analyzer JSON; the required findings above are semantic defects not caught by the geometric scorer.
- The source records trace all twelve images, document a per-image fair-use rationale, and support the artist, title, date, and method claims. No camera settings are invented, and this is not a limited-source chapter.

## Resolution — 2026-08-04

Re-verified critique history: the sole prior round, **2026-08-04**. All three
required findings from that round have been checked against the updated specs,
proofs, and chapter copy.

1. **02-chivalry-in-retrograde:** retained the two real, parallel detected
   diagonals, renamed the second `PARALLEL THRUST`, and rewrote the spec note,
   plate caption, and prose to describe their shared pull toward the upper right.
   The regenerated proof is visually aligned and scores 100/100.
2. **11-cenotaphs-62:** moved the figure axis from the detector's global
   0.438 measurement to the depicted figure's central 0.500 midline; changed
   the label to `FIGURE AXIS` and made the spec and chapter describe centered
   frontal structure rather than symmetry. The regenerated proof is visually
   aligned and scores 91.5/100; the only deduction records the deliberately
   rejected global-axis suggestion.
3. **12-napoleon-i:** moved the axis from 0.388 to the face ellipse's 0.480
   center, renamed it `FACE AXIS`, and revised the note to say
   "face-centered" rather than assert an unqualified frontal axis. The
   regenerated proof is visually aligned and scores 90/100; the only deduction
   records the deliberately rejected global-axis suggestion.

## Critique round — 2026-08-04

### Required

1. **01-dream-of-europa — source note describes a different composition.** In
   `sources.md`, the image's “Why it matters” entry claims “a bright, close
   foreground face” against “an expansive blue-gray surround.” The current
   sourced image and proof instead show three adjacent, full-height hybrid
   figure zones divided by pale verticals over an olive/ochre/blue-green field;
   the current overlay and chapter correctly teach that tripartite structure.
   Replace the source entry's stale compositional description so the per-image
   source record does not materially mislead readers about the work it
   identifies.
2. **11-cenotaphs-62 — source note describes a different composition.** Its
   `sources.md` “Why it matters” entry calls this a vertical monument-like
   figure in a sparse field. The supplied image and proof are instead a dense,
   gold, bordered relief with a centered frontal figure and looping cable; that
   is also the current overlay/chapter reading. Correct the source entry to
   describe this actual image, while retaining its existing traceable link,
   credit, and per-image fair-use rationale.

### Advisory (non-blocking)

- None.

### Verification record

- Re-inspected all twelve current proof PNGs, specs, analyzer outputs, and
  chapter prose. All geometry scores pass: 01–10 score 100; the deliberate,
  semantically correct figure/face axes in 11 and 12 score 91.5 and 90,
  respectively. The three required overlay findings resolved in the prior round
  remain resolved and are not reopened.
- Every public display-file URL returns HTTP 200. Credits, source routes, and
  concise four-factor fair-use rationales are present for all twelve entries;
  the two required fixes concern the misleading per-image descriptive text,
  not source traceability or rights information. No camera data are asserted.

## Resolution — 2026-08-04

Re-verified critique history: the prior **2026-08-04** overlay round and the
current **2026-08-04** source-description round. The three earlier required
overlay fixes remain intact: *Chivalry in Retrograde* retains two visibly
parallel thrusts; *Cenotaphs #62* uses the centered `FIGURE AXIS`; and
*Napoleon I* uses the face-centered `FACE AXIS`. Their regenerated proofs pass
visual review and score 100, 91.5, and 90, respectively (the latter two retain
the semantically correct figure/face centers rather than the analyzer's global
symmetry suggestion).

1. **01-dream-of-europa:** replaced the stale foreground-face/blue-gray-field
   description with the actual three full-height hybrid figure zones, their pale
   divisions, shared ground, and olive/ochre/blue-green field. The source link,
   credit, file record, and four-factor fair-use rationale are unchanged; its
   pedagogical-need clause now accurately identifies the panel divisions, shared
   ground, and repeated figure relations.
2. **11-cenotaphs-62:** replaced the stale sparse-monument description with the
   actual dense gold bordered relief, centered frontal figure, and looping cable.
   The traceable source link, credit, file record, and four-factor fair-use
   rationale are unchanged; its pedagogical-need clause now names the bordered
   relief, centered figure, and looping cable.
