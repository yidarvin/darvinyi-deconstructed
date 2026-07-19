verdict: approve

## Critique round — 2026-07-19

### Required

1. **Correct the per-image fair-use documentation for `03-eiko-oshima-prize-stock`.** The proof is a close, near-frontal face with lowered eyelids; `sources.md` calls it a profile and says Factor 1 teaches “profile, edge, and negative space.” Replace those descriptions with the visible eyelids, cropped mouth, hair, and facial close-up, and make the pedagogical-necessity statement match that actual frame. The source URL, title, date, credit, rights status, and image id all checked out against the Art Institute record; this is a material truthfulness failure in the image-specific rationale, not a source-link failure.

2. **Correct the per-image fair-use documentation for `05-editor-nakahira-shinjuku`.** The proof is a wide room with a blurred full figure, hanging fixture, doorway, and open floor—not a tight, oblique facial portrait. `sources.md`'s “Why it matters” and its Factor 3 assertion about retaining “face, foreground edge, and backdrop” must be rewritten to explain why this room-and-body composition requires the full frame.

3. **Correct the per-image fair-use documentation for `08-young-power-shinjuku`.** The proof depicts dispersed figures and wet-pavement reflections; it does not show the source note’s claimed compressed faces, hands, signage, and overlapping crowd cues. Its Factor 1 and Factor 3 rationale must instead document the actual reflected route and dispersed movement, consistently with the chapter.

4. **Correct the per-image fair-use documentation for `09-computer-tokyo`.** The proof is a dense cable/wire field with a foreground cable, not the claimed hinged arrangement of rectangles and glare. Revise the “Why it matters” and Factors 1 and 3 so the complete-frame necessity is tied to the visible cable field and its routing.

5. **Correct the per-image fair-use documentation for `10-protest-kawasaki`.** The proof is a canted building facade with a roofline, a hanging sign, and repeated/broken windows; it contains neither the claimed crowd nor opposing faces, figures, placards, or collective diagonals. Replace those false visual claims in the “Why it matters” text and Factors 1 and 3 with the documented facade structures. This directly conflicts with the otherwise accurate chapter and overlay.

6. **Correct the per-image fair-use documentation for `11-iwakuni-yamaguchi`.** The proof is an intentionally ambiguous grainy field with a diagonal tonal boundary and bright angular mass, not an ordinary tall view containing figure, structure, distance, or spatial progression. Rewrite the “Why it matters” text and Factors 1 and 3 around the visible abstract tonal structures. The chapter and overlay already make the correct, non-descriptive reading.

### Advisory (non-blocking)

- Every proof was visually checked against its overlay spec; each has 2–3 relevant primitives, and all twelve specs score 100/100 in the deterministic overlay scorer. No overlay-placement or numeric-claim correction is required.
- The Art Institute’s public API confirms all twelve supplied record IDs, titles, dates/print dates, creator, credits, image IDs, and non-public-domain status. The issue above is limited to the image-specific compositional justification in six fair-use entries.

## Resolution — 2026-07-19

Applied all six required corrections in `sources.md`. Each fair-use rationale now describes the corresponding visible frame: Eiko Oshima’s lowered eyelids and mouth crop; Nakahira’s room, moving body, fixture, doorway, and floor; Young Power’s dispersed figures and wet-pavement reflections; Computer’s cable field and foreground route; Protest’s canted facade, sign, and broken windows; and Iwakuni’s ambiguous tonal boundary and bright angular mass.

Re-verified prior critique round `2026-07-19` in full. All twelve existing overlay specs were independently re-scored at 100/100, and the six affected proofs received a fresh visual pass; no required overlay or chapter correction regressed or was needed.

## Critique round — 2026-07-19

### Required

None.

### Advisory (non-blocking)

- Fresh visual review of all twelve current proof PNGs finds the 2–3 primitives in each overlay relevant and materially truthful: each label names a visible feature and each trace remains on that feature within the stated tolerance. The deliberately sparse two-primitive overlays for `02-tsuyo-kataoka-nagasaki`, `05-editor-nakahira-shinjuku`, and `12-yokosuka-kanagawa` remain clear, focused compositional arguments rather than misleading inventories.
- The prior round’s six fair-use documentation findings remain resolved: `sources.md` now describes the actual frame for `03-eiko-oshima-prize-stock`, `05-editor-nakahira-shinjuku`, `08-young-power-shinjuku`, `09-computer-tokyo`, `10-protest-kawasaki`, and `11-iwakuni-yamaguchi`. All twelve entries retain a traceable Art Institute record, accurate museum credit, an explicitly non-public-domain status, and concise four-factor rationale. No invented camera settings appear in the chapter or research note.
- The deterministic scorer executable referenced by the composition-analysis build contract is absent from this checkout, so this round could not independently regenerate its numerical score. This is a tooling limitation, not evidence of an overlay defect; the current proofs, specs, analyzer measurements, chapter values, and prior resolution were reviewed directly.
