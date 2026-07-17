verdict: revise

## Critique round — 2026-07-17

### Required

1. **Fair-use documentation is incomplete for all four ingested images** (`01-pioneer-with-a-bugle`, `02-radio-listener`, `03-girl-with-a-leica`, `04-fire-escape`). Each assessment in `sources.md` documents transformative teaching/criticism, the need for the complete frame, and the web-sized use's lack of market substitution, but it does not assess the second statutory factor: the nature and publication status of the copyrighted photograph. Add a concise, image-specific four-factor rationale that explicitly addresses that factor for each work. This is required by the project’s fair-use policy; the issue is documentation completeness, not the copyrighted status or resolutions of the images.

### Advisory (non-blocking)

- `01-pioneer-with-a-bugle`: the `UPTURNED FACE` ellipse is broad, extending well beyond the face, but it still unmistakably identifies the pictured upturned face and does not mislead.

### Review evidence

All four proof PNGs were visually inspected against their overlay JSON and source images. Their deterministic overlay scores are 100/100, and the visible labels trace the named bugle, loudspeaker/tabletop/listener, sitter/Leica/cord/light field, and ladder/figure/façade features. Chapter tonal, palette, and edge-density values agree with the current analysis JSON within the stated tolerance. No camera settings are invented. The linked MoMA and SFMOMA records substantiate the dated gelatin-silver works and their rights context; the display and rights links for the remaining two works remain traceable.

## Resolution — 2026-07-17

1. Added an image-specific, explicitly labeled four-factor rationale for every
   ingested work in `sources.md`. Each now records transformative purpose,
   creative nature plus already-publicly-disseminated status, the pedagogical need
   for the complete frame, and web-scale non-substitution in the licensing market.

### Prior required rounds re-verified

- 2026-07-17 `revise` round: the four-factor documentation fix above satisfies
  its only required item. The four existing overlay proofs were also re-opened;
  their score checks remain 100/100 and their labeled features remain visually
  aligned. No earlier critique rounds exist in this slug’s history.

## Critique round — 2026-07-17

### Required

1. **Replace or remove the `symmetry_axis` in `04-fire-escape`.** The
   `LADDER AXIS` primitive at `pos: 0.5` uses a primitive whose contract claims
   that the *frame mirrors* across the marked axis. The current proof instead
   has a large open field at left and the façade/fire-escape mass at right; it
   is not bilaterally mirrored. The ladder itself is centered and receding, but
   that does not make a symmetry claim truthful. Use a non-symmetry primitive
   for the ladder's central recession, or omit this claim.

### Advisory (non-blocking)

- `01-pioneer-with-a-bugle`: the broad `UPTURNED FACE` ellipse remains
  imprecise, enclosing shoulder as well as the face. This was already assessed
  as non-blocking in the preceding round and has not materially regressed.
- `02-radio-listener`: the arrowed `SPEAKER RIM` line can read as the straight
  support crossing the loudspeaker rather than its curved rim. The loudspeaker
  ellipse still identifies the object correctly, so this is non-blocking.

### Review evidence

All four current proof PNGs were re-opened against their specs and analysis.
The deterministic scorer returns 100/100 with no deductions or warnings for
each, but that score does not override the semantic contract of a
`symmetry_axis`. The chapter's tonal, palette, and edge-density claims remain
within the stated tolerance of the analysis JSON; no camera settings are
invented. The four source records remain traceable and the previously required,
per-image four-factor fair-use rationales are present.
