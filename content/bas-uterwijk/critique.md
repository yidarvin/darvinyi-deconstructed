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
