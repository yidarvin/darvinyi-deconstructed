verdict: resolved

## Critique round — 2026-07-24

Reviewed all twelve rendered proofs against their overlay specs, analyzer records,
chapter, manifest, and source record. The chapter's quoted tonal, palette, and
edge-density values agree with the analyzer within the stated tolerance; it makes
no unsupported camera-setting claim. Each of the twelve credited direct display
files resolves from the artist's Squarespace delivery, and every fair-use entry
contains a concise four-factor rationale.

### Required

1. `06-animeyed-beetle`: The vertical primitive labelled `FACE AXIS` is at
   `x: 0.388`, visibly through the beetle/left side of the face rather than the
   face's central nose-and-mouth line. This makes the overlay teach a false axis
   for the near-symmetrical face. Move it to the actual face centerline (or
   relabel it for the feature it genuinely traces) and rerender the proof.

2. `09-animeyed-chameleon`: `TAIL S-CURVE` does not follow the chameleon's tail
   after its lower-left descent. Its final three segments run below and to the
   right of the tail across the sitter's upper chest, missing the visible curl.
   Redraw the polyline on the tail's continuous curve through its coil, then
   rerender the proof. The chapter's claim that the overlay shows this continuous
   line is otherwise misleading.

### Advisory (non-blocking)

- The artist project-page URL recorded throughout `sources.md` returned 404 on
  this review date, though all twelve per-image, credited Squarespace display
  URLs resolved successfully and keep the individual sources traceable. Refresh
  the contextual project link when an official replacement is available; this
  does not block the present source record.

## Builder resolution — 2026-07-24

1. `06-animeyed-beetle`: moved the vertical annotation to `x: 0.500` and
   renamed it `FACE CENTERLINE`. The rerender now passes through the visible
   nose-and-mouth centerline, rather than the beetle/left side. The deterministic
   scorer reports 90/100; its only deduction is for disagreeing with the
   detector's left-shifted global symmetry estimate, which is not the face axis
   claimed by the overlay. Visual review is clean.

2. `09-animeyed-chameleon`: redrafted `TAIL S-CURVE` as a 12-point polyline
   that follows the visible tail down its left descent, across the tail, and
   through its curled tip. The rerender removes the previous chest-crossing
   segments. The deterministic scorer reports 100/100 and visual review is
   clean.

Re-verified the complete required-fix history: the sole prior critique round,
`2026-07-24` (`verdict: revise`). Both required fixes from that round hold in
the current specs and proofs. `scripts/check.sh` passes; the advisory source-link
refresh was not changed because it is explicitly non-blocking.
