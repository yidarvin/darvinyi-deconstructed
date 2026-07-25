verdict: approve

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

## Critique round — 2026-07-24

Fresh-eyes review of all twelve current proofs, their specs and analyzer
records, chapter, manifest, and source record. The two prior required fixes
remain resolved: `06-animeyed-beetle`'s `FACE CENTERLINE` follows the visible
nose-and-mouth centerline (the remaining 90/100 scorer deduction is the
documented detector disagreement), and `09-animeyed-chameleon`'s `TAIL
S-CURVE` follows the tail through its coil. All twelve direct, credited
Squarespace display URLs resolve on this review date; each source entry retains
its four-factor fair-use rationale. The following newly observed overlay claims
are materially misleading and were not addressed by the prior round.

### Required

1. `03-animeyed-black-swan`: Replace the `vanishing_point` labelled `DARK HEAD
   MASS` at `(0.335, 0.244)`. The marker sits in the dark feather/hair area, but
   there are no visible converging diagonals in the photograph. This is an
   analyzer false positive used as a semantic claim: a `vanishing_point`
   primitive asserts convergence while the label names a mass. Use an
   appropriately typed mass/subject annotation, or remove it.

2. `03-animeyed-black-swan`: Redraw or relabel `RED BEAK BRIDGE`. Its path
   starts above the red beak in the dark head area and ends across the sitter's
   cheek; it does not follow the beak, whose visible course descends from the
   swan's eye toward the mouth. The endpoint displacement is well outside the
   approximately 2% tolerance, so the current label falsely teaches the marked
   line as the beak.

3. `05-animeyed-puffin`: Redraw or relabel `ORANGE BEAK WEDGE`. Its path leaves
   the puffin at the beak root and crosses the sitter's eye/cheek instead of
   tracing the orange beak's visible descending wedge. The named feature and
   line do not agree, which makes the chapter's beak-bridge reading misleading.

### Advisory (non-blocking)

- `02-animeyed-white-swan`: `BEAK DIAGONAL` reaches slightly beyond the beak
  into the sitter's cheek. It still visibly describes the beak's directional
  bridge; tighten the endpoint or name the extended eye-path on a future pass.
- `07-animeyed-bunny`: `EARS ABOVE` traces the left oversized ear rather than
  both; a singular label would be more exact.
- `08-animeyed-poodle`: the `POODLE TEXTURE` label is flush with the proof's
  left edge. It remains readable and is cosmetic only.
- `sources.md` describes the raw working-set long-edge range as 1,186–1,750px;
  the Poodle source is 1200 × 1186px, so the stated long-edge minimum should be
  1,200px. This does not affect the documented 640px compliance conclusion.
- `chapter.mdx` says the record does not document a lens, while raw source files
  09–12 retain `aux:Lens="18-35mm"`. No camera setting is invented and no
  focal length is established, but scope that sentence to the normalized
  manifest or remove the categorical lens statement for precision.

## Builder resolution — 2026-07-24

1. `03-animeyed-black-swan`: removed the false `vanishing_point` claim
   entirely. The proof now uses only the visible left-neck counterweight and a
   `RED BEAK` polyline that follows the red beak from its root to its tip. The
   rerender is visually clean and scores 100/100.

2. `05-animeyed-puffin`: redrafted `ORANGE BEAK WEDGE` as `ORANGE BEAK` with
   four points running down the visible orange/red beak to its tip, rather than
   crossing the sitter's eye and cheek. The rerender is visually clean and
   scores 100/100.

3. Verified every required fix in the full critique history: the first
   2026-07-24 round remains satisfied (`06-animeyed-beetle`'s `FACE
   CENTERLINE` follows the nose-and-mouth centerline; 90/100 because the
   detector measures global rather than facial symmetry) and
   `09-animeyed-chameleon`'s `TAIL S-CURVE` still follows the tail through its
   coil (100/100). The later 2026-07-24 round's three fixes are satisfied by
   the rerendered Black Swan and Puffin proofs above.

The explicitly noted source-size range and settings-scope advisories were also
corrected. The remaining cosmetic advisories were left unchanged. All twelve
overlays pass at >=80 (eleven at 100/100; Beetle at 90/100), visual review is
clean, `scripts/check.sh` passes, and `python3 scripts/validate_pipeline.py`
passes.

## Critique round — 2026-07-24

Re-reviewed all twelve current rendered proofs against their overlay specs and
analyzer records, then checked the chapter, manifest, research, and source
record. The prior required corrections remain resolved without regression:
`06-animeyed-beetle`'s centerline follows the visible nose-and-mouth axis,
`09-animeyed-chameleon`'s polyline follows the tail through its curl, and the
Black Swan and Puffin beak annotations trace the visible beaks. Every overlay
scores at least 80 (eleven at 100; Beetle at 90 for the documented global-
symmetry detector disagreement). Chapter tonal, palette, and edge-density
figures agree with the analyzer values within tolerance, and no unsupported
camera setting is asserted.

All twelve credited direct Squarespace display URLs returned HTTP 200 on this
review date. Each individual entry identifies fair-use, credit, source, and a
concise four-factor rationale; the inaccessible contextual project and Artsy
pages do not make the individually resolving image sources untraceable.

### Required

None.

### Advisory (non-blocking)

- The contextual official project URL still returns HTTP 404 and the cited
  Artsy research page returns HTTP 403. The twelve direct artist-hosted display
  files remain publicly resolvable and individually documented, so this is not
  a source-integrity blocker; refresh the contextual links if durable public
  replacements become available.
