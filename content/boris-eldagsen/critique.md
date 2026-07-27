verdict: resolved

## Critique round — 2026-07-27

Reviewed all twelve rendered proofs against their current overlay specs and
analysis records, and checked the chapter against `sources.md`, `research.md`,
and `manifest.json`. The artist-hosted sources are traceable; the per-image
fair-use entries give creator/rightsholder, a four-factor basis, direct display
links, and image-specific need. The chapter appropriately avoids camera or
process claims beyond the documented AI workflow.

### Required fixes

1. **`03-the-leftovers` — wrong subject identification.** The
   `vanishing_point` at `(0.570, 0.364)` is visibly placed at the right-hand
   child's face/its left edge, not at the middle child. Its label says
   `MIDDLE CHILD`, and the chapter then calls it the “middle-child convergence
   point.” Move it to the actual middle child's face/valid convergence or
   relabel and revise the prose so the proof does not misidentify a child.

2. **`07-the-breath` — invented blades.** Neither of the two teal diagonals
   traces a visible blade in the proof: the long `BLADE EDGE` runs across hair,
   face, and the background, and `SHORT BLADE` crosses the covered face rather
   than a distinct object. The overlay and the chapter's repeated claims of a
   “long blade,” “short blade,” and “chamber of threat” therefore teach an
   object that is not shown. Replace these with lines on real visible features
   and accurate labels, or remove the claims from the overlay and chapter.

### Advisory (non-blocking)

- `02-the-deal` uses two primitives rather than the usual three-to-five. The
  existing band and exchange path are legible and truthful; add a third only
  if it makes a distinct, evidence-based compositional claim.
- Several subject-point annotations use the `vanishing_point` glyph for a
  semantic point (for example `DARK FIGURE'S GAZE FIELD` in
  `01-the-electrician`). They remain readable, but a future pass could reserve
  that glyph for visible convergence and use `subject_anchor` or `polyline`
  when the intended claim is a face, gaze, or object.

## Builder resolution — 2026-07-27

1. **`03-the-leftovers` fixed.** Re-ran deterministic analysis and replaced
   the mislabeled vanishing-point marker with a `MIDDLE FACE` subject anchor at
   the measured middle-face saliency point `(0.400, 0.385)`. The proof now
   identifies the actual middle child, and the chapter now describes a
   middle-face anchor rather than a convergence point.
2. **`07-the-breath` fixed.** Removed both invented blade lines and the
   face-as-vanishing-point marker. The new overlay identifies only the visible
   covered face, window light, and measured lower tonal break; the caption and
   prose now make the corresponding tonal, not blade-or-threat, claim.

Re-verified the complete critique history: the sole prior round, **Critique
round — 2026-07-27**, and every required fix from it holds in the current
overlays, proofs, and byte-identical chapter copies. Both revised overlays
score 100/100 with no deductions or warnings and passed a clean visual review.
`scripts/check.sh` passes.

## Critique round — 2026-07-27

Re-reviewed all twelve current proof PNGs against their overlay specs and
analysis records, then independently checked the chapter, manifest, research,
and sources. Every current overlay scores 100/100 with no deductions or
warnings. The two prior required fixes remain resolved: `03-the-leftovers`
anchors the actual middle face, and `07-the-breath` no longer claims blades.
The current sources are traceable artist-hosted display files (all returned
HTTP 200 during this review); their individual fair-use entries retain the
rightsholder notice, four-factor rationale, complete-frame necessity, and
non-substitution basis. No camera-setting claim was found, and the chapter's
measured tonal, edge-density, and palette values agree with the analysis
records.

### Required fixes

1. **`07-the-breath` — stale proof contact-sheet description.**
   `proofs/index.html` still says “Sharp diagonals close around a masked
   face,” but the current proof, overlay, and chapter identify a covered face,
   window light, and a lower tonal break; the blade/diagonal reading was
   explicitly removed in the preceding builder resolution. Regenerate or edit
   this proof-index caption so it describes the current rendered annotation.
   It currently teaches a structure that is not in the repaired proof.

### Advisory (non-blocking)

- The section heading “squares that press inward” also contains
  `05-eternity`, whose manifest dimensions are 800 x 457. Consider a heading
  that does not imply that every plate in the section is square.
- The artist page establishes the project's 2022–23 span and the work titles,
  but not explicit work-by-work creation years. The existing per-plate years
  are plausible from the page's Part I/Part II organization and public display
  routes; add explicit per-work date support or soften those labels in a future
  pass if available.

## Builder resolution — 2026-07-27

1. **`07-the-breath` contact-sheet description fixed.** Replaced the stale
   diagonal/masked-face description in `proofs/index.html` with the current,
   visible annotation: covered face, window light, and lower tonal break. The
   contact sheet now agrees with the repaired overlay and chapter.

Re-verified the complete critique history: both **Critique rounds —
2026-07-27**. The earlier required fixes still hold: `03-the-leftovers` marks
the actual middle face, and `07-the-breath` makes no blade or threat claim.
All twelve current overlays score 100/100 without deductions or warnings;
`03-the-leftovers` and `07-the-breath` also passed a fresh visual review.
`scripts/check.sh` and pipeline validation pass.

## Critique round — 2026-07-27

Reviewed all twelve current proof PNGs against their overlay specs and analysis
records; re-ran the deterministic scorer for every overlay (12/12 at 100/100,
no deductions or warnings); and checked the chapter, manifest, research, proof
index, and source records. The two previously required repairs remain resolved:
`03-the-leftovers` anchors the actual middle face, and `07-the-breath` no
longer asserts blades or a threat. All twelve artist-hosted display URLs and
the project page currently return HTTP 200, and the per-image fair-use records
retain the creator/rightsholder notice, four-factor basis, complete-frame
teaching need, and non-substitution rationale. No camera-setting claim was
found.

### Required fixes

1. **`11-the-mask` — `MASK'S DARK OPENING` marks the wrong feature.** The
   `subject_anchor` at `(0.711, 0.460)` lands on the upper-right edge of the
   mask/right-hand area, while the clearly visible dark opening is the large
   lower-right aperture, centered materially lower (about `(0.66, 0.56)`). The
   displacement is well outside the 0.03 normalized-coordinate tolerance and
   teaches the wrong structure. Move the anchor onto that aperture (and rerender
   the proof), or relabel it for the feature actually marked.

### Advisory (non-blocking)

- `04-the-connaisseur`'s `PIPE TO EMPTY FRAME` polyline is a readable
  interpretive eye-path rather than a literal trace of the pipe for its whole
  length. Its endpoint reaches the pipe/frame relation and the surrounding
  prose makes the intended route clear, so it is not a blocking claim; a future
  pass could label it more explicitly as an eye-path.

## Builder resolution — 2026-07-27

1. **`11-the-mask` fixed.** Moved the `MASK'S DARK OPENING` anchor from the
   right-hand area to the visible lower-right mask aperture at `(0.660, 0.560)`
   and re-rendered the proof. The corresponding chapter sentence now identifies
   the opening as lower and farther right, in both byte-identical chapter copies.

Re-verified the complete critique history: all three **Critique rounds —
2026-07-27**. The earlier required repairs still hold: `03-the-leftovers`
anchors the actual middle face, and `07-the-breath` makes no blade or threat
claim. Fresh visual review passed for all three repaired proofs. All twelve
overlays pass the deterministic threshold: eleven score 100/100 and
`11-the-mask` scores 85.5/100 because the saliency detector prefers the nearby
hand while the visible dark aperture is correctly marked. `scripts/check.sh`
passes.
