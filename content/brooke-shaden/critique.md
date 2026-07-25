verdict: revise

## Critique round — 2026-07-24

Reviewed all twelve rendered proofs against their overlay specifications and
analysis records, plus the chapter, research, and source notes. The official
portfolio confirms the selected titles and dates; the source records provide
per-image fair-use rationales, © Brooke Shaden credit, and public official
delivery links. No camera-setting claim or source-integrity defect was found.

### REQUIRED

1. **`12-life-after-death` — correct the false edge-density comparison in the
   chapter.** The text calls this the selection's “busiest image ... by edge
   density (0.073).” Its analysis does measure `0.072731`, but
   `10-fallen-fruit` measures `0.084462` (and
   `03-the-falling-of-autumn-darkness` measures `0.075353`). Revise the
   comparative claim or remove it; as written, it gives the reader a false
   measured basis for the composition's relative visual complexity.

### Advisory (non-blocking)

- **`05-petals-from-my-roots`:** the `RIGHT TUB EDGE` anchor is visibly on the
  decorative right tub foot/support rather than the rim. It still identifies a
  real, relevant tub feature and does not mislead the compositional reading;
  consider renaming it to `RIGHT TUB FOOT` if the overlay is otherwise revised.

## Resolution — 2026-07-24

1. Replaced the false superlative in both byte-identical chapter copies with
   the accurate standalone measurement: *Life After Death* has edge density
   0.073. Re-checked the full selection: *Fallen Fruit* is higher at 0.084462
   and *The Falling of Autumn Darkness* at 0.075353, so the chapter no longer
   makes a false comparative claim.
2. Applied the advisory clarification: the `05-petals-from-my-roots` anchor is
   now labeled `RIGHT TUB FOOT`. The rerendered proof received a clean visual
   pass and a strict score of 100/100.

Re-verified required fixes from critique round 2026-07-24 (the complete
critique history). `bash scripts/check.sh` passed, including pipeline state,
chapter synchronization, tests, and production build.

## Critique round — 2026-07-24

Reviewed all twelve current rendered proofs against their overlay
specifications and analysis records, with independent fresh-eyes checks of
each half of the proof set. Re-checked the resolved edge-density correction:
the chapter now gives *Life After Death*'s standalone 0.073 measurement and
makes no false superlative. The chapter's other cited tonal, grid, horizon,
and edge-density values match their analysis records within tolerance. The
source notes provide a public official delivery route, © Brooke Shaden credit,
and an individual four-factor fair-use rationale for every displayed work; no
unsupported camera-setting or historical-process claim was found.

### REQUIRED

1. **`07-the-sky-is-burning` — correct or remove `PAINT CAN`.** Its polyline
   (`[.46,.72] → [.40,.83] → [.36,.88]`) passes down-left across the dress and
   ground after only grazing the can. It neither traces the can nor terminates
   at it, so the labeled feature is falsely located.
2. **`09-sewing-my-wounds-shut` — correct or remove `BRAIDED V`.** The
   polyline (`[.34,.49] → [.48,.66] → [.67,.50]`) cuts through bare
   shoulder/chest, while the visible braids run down near the left and right
   sides. The image does not contain the labeled shallow V, and the chapter's
   matching claim is therefore unsupported by the proof.
3. **`10-fallen-fruit` — correct or remove `BERRY RHYTHM`.** The path at
   y=.66–.70 crosses the knees and empty tabletop; the red berries are visibly
   lower, roughly y=.78–.83. This materially mislocates the named rhythm.

### Advisory (non-blocking)

- **`06-the-creation-of-blood-and-bones`:** the `UMBRELLA` ellipse extends
  beyond the canopy at right. It still clearly identifies the umbrella and is
  a visual-tightening opportunity, not a misleading claim.

## Resolution — 2026-07-24

1. Replaced `07-the-sky-is-burning`’s false `PAINT CAN` polyline with an
   ellipse that encloses the visible can; re-rendered proof passed a clean
   visual inspection and strict score of 100/100.
2. Removed `09-sewing-my-wounds-shut`’s false `BRAIDED V` primitive and
   corrected both byte-identical chapter captions to say that the braids frame
   the lower portrait. The re-rendered proof passed visual inspection and a
   strict score of 100/100.
3. Moved `10-fallen-fruit`’s `BERRY RHYTHM` path from the knees/tabletop to
   the visible berry band at y≈0.79–0.81. The re-rendered proof passed visual
   inspection and a strict score of 100/100.
4. Applied the analyzer’s outstanding exact anchor corrections to
   `03-the-falling-of-autumn-darkness`, `06-the-creation-of-blood-and-bones`,
   `08-moth`, `11-the-living-imagination`, and `12-life-after-death`; each
   re-rendered proof passed visual inspection and a strict score of 100/100.

Re-verified required fixes from every prior critique round: the 2026-07-24
edge-density correction remains accurate (*Life After Death* 0.072731,
*The Falling of Autumn Darkness* 0.075353, and *Fallen Fruit* 0.084462), and
the chapter makes no false comparative edge-density claim. The earlier
advisory `RIGHT TUB FOOT` clarification also remains in place. Source review
also removed unsupported metadata and self-portrait claims. `bash
scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-07-24

Reviewed all twelve current rendered proofs against their overlay
specifications and analysis records, with three independent fresh-eyes
reviews of the proof set. Re-checked the previously resolved edge-density,
paint-can, braid, and berry-path findings: they remain resolved. Each current
spec scores 100/100 against its analysis record; the required findings below
are visual/semantic errors that the geometric scorer does not measure. The
source notes retain a traceable public official-delivery route, © Brooke
Shaden credit, and a concise per-image four-factor fair-use rationale for all
twelve works. No camera-setting claim or source-integrity defect was found.

### REQUIRED

1. **`04-we-are-infinite` — correct `SKIRT SWEEP`.** The polyline's final
   point (`[0.25, 0.92]`) is on the stone floor to the left of the blue skirt,
   not on the garment. Shorten or reposition the path so every segment traces
   the named skirt sweep.
2. **`04-we-are-infinite` — correct `FIGURE`.** The subject anchor at
   (`[0.647, 0.476]`) is centered on the right-hand wall/rock edge rather than
   the figure or her hand. Reposition it onto the figure, or remove the
   primitive and revise the matching chapter sentence.
3. **`12-life-after-death` — replace or remove `TREE BALANCE` as a
   `symmetry_axis`.** A symmetry axis claims mirroring across the vertical,
   but the proof visibly counterbalances a much larger upper-right canopy
   against a smaller left tree. That is the chapter's own reading, not
   bilateral symmetry. Use a primitive that describes the actual unequal
   counterbalance or remove the claim.

### Advisory (non-blocking)

- **`06-the-creation-of-blood-and-bones`:** the `UMBRELLA` ellipse remains
  somewhat generous around the canopy. This is the already-settled advisory
  from the preceding round; it still identifies the correct umbrella and is
  not a blocking regression.
