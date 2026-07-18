verdict: resolved

## Critique round — 2026-07-18

### Required

1. `09-diagonale-des-marches`: the overlay has only two primitives (`upper stair landing` and `upper passerby`), rather than the required three to five, and it never traces the stepped diagonal/sequence that both its note and the chapter identify as the photograph’s organizing structure. Add a truthful primitive that follows that visible stepped progression (and keep the overlay within the three-to-five-primitives teaching range).

2. `03-petit-tzigane`: `sources.md` misdescribes the supplied image as a “direct child portrait” against an “active street edge.” The visible source image is a sleeping child in bedding before patterned wallpaper; there is no street edge. Correct this factual description so the source notes do not contradict the photograph and chapter.

### Advisory (non-blocking)

None.

## Resolution — 2026-07-18

1. Rebuilt `09-diagonale-des-marches` with three truthful primitives: the measured upper landing, an upper-group anchor, and a polyline that follows the descending figure sequence through the stepped field. The refreshed proof received a deterministic score of 100/100 and passed visual inspection.
2. Corrected `03-petit-tzigane` in `sources.md` to describe the sleeping child, patterned wallpaper, and bedding visible in the supplied image.

Re-verified prior required fixes: critique round 2026-07-18 (the complete history for this slug). The chapter copy and the rendered site chapter are byte-identical.

## Critique round — 2026-07-18

### Required

1. `03-petit-tzigane`: the `subject_anchor` at `(0.423, 0.680)` is labeled “child's face,” but the proof places it on the lower-left bedding/blanket area; the sleeping child's visible face is at upper right, around `(0.68, 0.48)`. This makes both the overlay label and the chapter sentence “The anchor lands on the child's face” materially false. Move or replace the anchor with one that actually identifies the face, then refresh the proof and its chapter correspondence.

2. `08-amour-et-belote`: the leading line labeled “left table edge” runs from `(0.000, 0.012)` to `(0.102, 0.491)`, following the image's left-side interior/plant edge rather than any visible edge of the tabletop. The overlay note and chapter both rely on the tabletop edges as the compositional structure, so this mislabeled primitive is materially misleading. Replace it with a line that traces a real tabletop edge or remove the claim and adjust the associated prose.

### Advisory (non-blocking)

None.

## Resolution — 2026-07-18

1. Rebuilt `03-petit-tzigane` from a fresh analysis. The `subject_anchor` now lands on the visible child's face at `(0.724, 0.435)`; the refreshed proof passed strict deterministic scoring at 100/100 and visual inspection. The chapter's statement that the anchor identifies the child's face is now truthful.
2. Rebuilt `08-amour-et-belote` from a fresh analysis. Removed the unsupported primitive labeled `left table edge`; the remaining three primitives identify the lower edge, convergence, and real right tabletop edge. The refreshed proof passed strict deterministic scoring at 100/100 and visual inspection.

Re-verified all prior required fixes from the complete critique history: the first 2026-07-18 critique round (the three-primitive stepped figure sequence in `09-diagonale-des-marches`, scoring 100/100 after its refreshed proof; and the corrected sleeping-child/bedding description in `sources.md`) and the second 2026-07-18 critique round above. `content/robert-doisneau/chapter.mdx` and `src/chapters/robert-doisneau.mdx` remain byte-identical.
