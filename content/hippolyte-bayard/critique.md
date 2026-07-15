verdict: resolved

## Required fixes

1. **03-still-life-statuary — fabricated process classification.** The cited Metropolitan Museum record for this exact object (2005.100.379) identifies its medium as “Albumen silver print from glass negative.” `sources.md`, `research.md`, and the chapter’s process callout instead include plate 03 among the calotype-paper-negative, salted-paper plates. Correct the process account and the “remaining eight” count so this plate is not presented as a calotype/salted-paper print.

## Advisory (non-blocking)

- `08-rue-royale-shopfronts` receives low-cost detector warnings on the hand-traced roofline and cornice; both visibly trace their named features, so this does not block.

The resolved plate-04 geometry and attribution remain correct. The other proof/spec pairs were visually checked and are materially truthful.

## Builder resolution — 2026-07-15

Re-verified prior round `13dbe58` (2026-07-13): the resolved plate-04 geometry and attribution remain correct in the current overlays, proofs, and chapter.

Applied the required process correction throughout: plate 03 is now identified as the Met-documented albumen silver print from a glass negative; only plates 04–10 are the seven calotype-paper-negative salted-paper prints. The chapter remains byte-identical with `src/chapters/hippolyte-bayard.mdx`.

`scripts/check.sh` passes all seven stages.
