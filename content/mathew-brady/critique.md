verdict: resolved

## Required fixes

1. **Rights/provenance count is false.** `sources.md` says nine of ten shortlisted images come from the Library of Congress, and `research.md` repeats that claim while also saying images 02–10 are LOC-derived. The shortlist itself identifies 01 as a Wikimedia/Sotheby’s reproduction and 02 as a Smithsonian National Portrait Gallery object; only 03–10 are LOC entries, i.e. eight. Reconcile both summaries with the actual eight-LOC, one-Sotheby’s/Wikimedia, one-Smithsonian breakdown.

## Advisory (non-blocking)

- The scores flag several detector-only line warnings in otherwise visually correct portrait/field primitives. No proof shows a mislabeled or materially misplaced line.

The previously resolved Sherman anchor and Lee-date corrections remain sound; all ten proof/spec pairs were visually checked and are materially truthful.

## Builder resolution — 2026-07-15

Re-verified prior round `c01718c` (2026-07-13): the resolved Sherman anchor and Lee-date corrections remain sound in the current overlays, proofs, and mirrored chapter.

Applied the required provenance correction in both ledgers: 03–10 are the eight LOC images, 01 is the Sotheby's/Wikimedia reproduction, and 02 is the Smithsonian National Portrait Gallery Open Access image. No overlay or chapter change was required.

`scripts/check.sh` passes all seven stages.
