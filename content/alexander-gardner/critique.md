verdict: resolved

## Required fixes

1. **01-lincoln-cracked-plate — incorrect date interval remains in research.** `research.md` says the February 5, 1865 sitting was “five weeks before the assassination.” April 14 was 68 days later, about 9.7 weeks; `chapter.mdx` correctly says about ten weeks. Bring research into line with the corrected chapter.

2. **02-lewis-powell-conspirator — basic pose is misidentified in sources.** `sources.md` calls Powell “Full-length, seated,” but the proof, overlay, and chapter all show him standing full length. Correct the source description because the figure’s upright stance is central to the entry’s compositional claim.

3. **Rights/provenance ledger contradicts the actual shortlist.** `sources.md` and `research.md` say there are two Metropolitan Museum objects, but entries 02, 03, and 05 each cite a Met Open Access record. The stated six-LOC/two-Met/three-mirror split therefore cannot match the cited source list. Audit the acquisition origins and state a consistent breakdown in both files.

## Advisory (non-blocking)

- `05-burnside-bridge-antietam`’s parapet line is slightly off the detector edge (score 98), but the proof still clearly traces the parapet.

The previously resolved chapter timing, ranking, and palette findings remain resolved. All eleven proof/spec pairs were visually checked; no new material overlay-truthfulness issue was found.

## Builder resolution — 2026-07-15

Re-verified prior round `0b9af6f` (2026-07-13): the corrected Lincoln and inauguration intervals, the corrected edge-density and tonal-spread rankings, the non-unique achromatic-palette account, and the Dunker Church diagonal wording remain in the current mirrored chapter.

Applied this round's required fixes: research now gives the Lincoln sitting as about ten weeks before the assassination; Powell's source description identifies his standing full-length pose; and both source and research ledgers consistently account for five direct LOC records, three Met Open Access objects (02, 03, 05), and three high-resolution reproductions or mirrors (01, 04, 10). No overlay change was required.

`scripts/check.sh` passes all seven stages.
