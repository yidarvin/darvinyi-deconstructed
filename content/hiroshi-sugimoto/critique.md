verdict: resolved

## Critique round — 2026-07-18

### Required fixes

1. **09-trylon-new-york, 10-metropolitan-palace-los-angeles, 11-studio-drive-in-culver-city, and 12-ua-fox-new-york — replace or correct the unsupported Fraenkel source attribution.** `sources.md` cites the Fraenkel *Seascapes* portfolio for each of these four *Theaters* and says that Fraenkel identifies them as gelatin silver prints, edition of 25. The linked public portfolio identifies the selected Seascapes (including 04–08) but does not identify *Trylon, New York*, *Metropolitan Palace, Los Angeles*, *Studio Drive-In, Culver City*, or *U.A. Fox, New York*. The bare display-image URLs do not supply a traceable public title/date/medium record. Supply an authoritative public record for each theater image (or correct the selection and all associated claims), then update each per-image fair-use record with that matching source and accurate credit. This blocks approval because the present source and medium/edition assertions for 09–12 are materially untraceable/false.

### Advisory (non-blocking)

None. All 12 current proofs were visually checked against their specs; their named structures read correctly, and the current overlay scorer reports 100/100 for each. The chapter's measured composition claims match the analysis files within tolerance, and it appropriately declines to invent individual camera settings.

## Builder resolution — 2026-07-18

1. Replaced the incorrect Fraenkel *Seascapes* attribution for 09–12 with Fraenkel Gallery's matching public *Theaters* portfolio. Its individual records identify *Trylon, New York* (1977), *Metropolitan Palace, Los Angeles* (1993), *Studio Drive-In, Culver City* (1993), and *U.A. Fox, New York* (1976) as Hiroshi Sugimoto gelatin silver prints, edition of 25. Each fair-use record retains its exact display-file URL and links to that matching title/date/medium/edition record with artist credit.
2. Re-verified the complete required-fix history: critique round 2026-07-18. No earlier rounds exist in `git log -- content/hiroshi-sugimoto/critique.md`.

## Critique round — 2026-07-18

### Required fixes

1. **02-ligurian-sea-saviore, 03-baltic-sea-rugen, 04-lake-superior-cascade-river, 05-yellow-sea-cheju, 06-ionian-sea-santa-cesarea, 07-sea-of-japan-rishiri-island, 08-north-pacific-ocean-stinson-beach, and 11-studio-drive-in-culver-city — correct the per-image copyright-credit attribution in `sources.md`.** Their fair-use entries say or imply that the National Museum of Modern Art, Tokyo supplies an “official museum exhibition credit for the series.” Its public exhibition page attaches “© Hiroshi Sugimoto / Courtesy of Gallery Koyanagi” specifically to *Caribbean Sea, Jamaica* (1980), not to these individual works or the series as a whole. Preserve the documented individual artist/gallery record, but either obtain an applicable matching credit notice or state accurately that the museum notice is attached only to *Caribbean Sea, Jamaica*. This is blocking because these entries presently make a materially false per-image rights/credit statement.

### Advisory (non-blocking)

- **02, 04–06, and 08 — the off-centre vertical “symmetry axis” is best read as an abstract tonal-balance marker, not literal bilateral symmetry.** The proof labels make that reading clear and the analyzer supports the placements, so this does not mislead; a future refinement could use a primitive with less literal semantic baggage.

## Builder resolution — 2026-07-18

1. Corrected the per-image rights language for 02–08 and 11. Each now preserves its documented artist/gallery record and states accurately that the National Museum of Modern Art, Tokyo notice “© Hiroshi Sugimoto / Courtesy of Gallery Koyanagi” is attached specifically to *Caribbean Sea, Jamaica* (1980), not to the other selected works or the series as a whole.
2. Re-verified every required fix in the complete critique history: the first 2026-07-18 round (09–12 matching *Theaters* records) remains present in `sources.md`; the second 2026-07-18 round (02–08 and 11 credit attribution) is addressed above. The twelve current overlay score files remain 100/100, and `content/hiroshi-sugimoto/chapter.mdx` remains byte-identical to `src/chapters/hiroshi-sugimoto.mdx`.
