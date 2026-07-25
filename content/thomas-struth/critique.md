verdict: resolved

## Critique round — 2026-07-25

Reviewed all eleven rendered proofs against their current overlay specifications,
analysis JSON, chapter, research note, manifest, and sources. The official JPEG
endpoints in the source record are traceable, and every image has a concise,
image-specific four-factor fair-use rationale. No camera setting is presented as
historical capture evidence.

### Required fixes

1. **04-pantheon-rome** — The two primitives labelled `FLOOR JOINT` converge at
   approximately `(0.49, 0.62)`, while the labelled `VISITOR GROUP` is at
   `(0.50, 0.85)`. In the proof the lines do not carry the viewer to the group,
   despite the overlay note, caption, and chapter all making that the
   compositional claim. Re-trace genuine floor joints to the feature they name
   and revise the prose claim accordingly, or remove the misleading convergence
   claim. The right-hand line also needs its endpoints seated on the actual
   joint (the scorer measures it 0.023 diagonal / 7.5° away).
2. **06-semi-submersible-rig** — The right `MOORING LINE` from `(0.97, 0.82)`
   to `(0.53, 0.39)` does not visibly sit on one identifiable mooring cable in
   the proof. The strict overlay check independently flags it as unsupported.
   Re-trace a clearly visible cable or remove this primitive; do not retain the
   current label for an untraceable route.

### Advisory (non-blocking)

- **05-paradise-02-daintree:** `CROSS LIMB A` and `CROSS LIMB B` labels collide
  at the top edge. Separate them for readability; the two traced limbs remain
  legible.
- **08-brillenbaer-leibniz-izw:** the `BODY ARC` path cuts through the bear's
  interior rather than cleanly following its outer silhouette. It still reads
  as an overall body-direction cue, but a closer contour would be clearer.
- **09-schlichter-weg:** the proof uses two primitives rather than the usual
  3–5 teaching range. The two real fallen limbs make a coherent, non-misleading
  argument, so this is not a gate; add another feature only if it strengthens
  the reading.
- **10-x-ray-telescope-cast:** the straight `OVERHEAD CABLE` line follows the
  cable near its start but crosses unrelated apparatus toward the lower right.
  A segmented route or a shorter line would make the cue cleaner.

## Resolution — 2026-07-25

Re-verified prior critique round 2026-07-25 in full. For **04-pantheon-rome**,
removed both misleading floor-joint routes, moved the visitor-group anchor to the
measured subject signal, changed the grid to the measured phi fit, and revised
the overlay note, plate caption, and chapter prose so they make no false
convergence claim. The refreshed proof passes strict scoring at 100 and visually
places the sole annotation on the visitor group.

For **06-semi-submersible-rig**, removed the unsupported right-hand mooring-line
primitive and revised the overlay note, plate caption, and prose to refer only to
the one visibly traceable foreground cable. The refreshed proof passes strict
scoring at 100 with no deductions or warnings. `scripts/check.sh` passed before
this resolution was recorded, and the rendered chapter copy remains byte-identical
to `content/thomas-struth/chapter.mdx`.
