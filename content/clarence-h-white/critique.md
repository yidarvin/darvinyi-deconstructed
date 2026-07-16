verdict: resolved

## Critique round — 2026-07-16

### Required

1. `01-ring-toss`: **FLOORBOARD PATH** runs diagonally from the lower-left ring stand across unrelated floor area; it does not trace a floorboard (the visible boards run/recede differently). Redraw it on a real board or label it explicitly as an interpretive eye path.
2. `02-girl-with-harp`: **HARP CURVE** does not trace a visible harp or string curve in the proof; it follows an unrelated dark/garment edge. The linked LOC record describes the subject playing a zither. Remove this claim or make the primitive trace and name an actually visible feature.
3. `07-maine-marshes`: **FAR MARSH BAND** at `y: 0.694` lands on the lower edge of the printed photograph/mount, not the marsh/sky division high in the image. The analyzer has measured the mount boundary, so its geometric pass does not validate the label. Move the line to the actual band or remove it.
4. `09-morning-bathroom`: the image is misidentified in the source trail. The linked LOC record identifies the pictured outdoor work as *Morning* (1906), showing Jane White near a tree; `sources.md` instead calls it *Morning — The Bathroom* (1906) and describes an indoor door/mirror/curtain scene, while the chapter plate says 1905. Correct the title/date and the source description to match the linked record and current proof.
5. `sources.md` contains two further object/scene mismatches with its current proofs: `01-ring-toss` claims a dark tree trunk where the proof is an interior ring-toss scene, and `08-the-kiss` claims dark foliage/an enclosing tree where the proof and overlay show an interior doorway. Correct these descriptions so the provenance notes do not teach a false reading.

### Advisory (non-blocking)

- `06-the-readers`: **LINKED PROFILES** continues through the bodies toward the book rather than closely tracing the two profiles. It remains an understandable connection, but a relabel or redraw would be clearer.
- `10-the-wrestlers`: **LIT OPENING** is a loose diagonal through foliage rather than a boundary of the lighted clearing. The subject and chapter reading remain clear.
- `11-how-much-was-that-a-yard`: **SHOP DOORWAY** is a broad architectural frame rather than a tight doorway trace; an **INTERIOR TABLEAU** label would be more literal.
- `research.md` says the normalized-file manifest's EXIF entries are empty, but eleven entries contain digitization metadata (and `02-girl-with-harp` includes ISO/exposure fields). Clarify that these describe the derivative scan, not historical capture. The chapter correctly avoids inventing historical camera settings, so this does not block approval.

All other proofs and chapter claims reviewed in this round are materially truthful.

## Resolution — 2026-07-16

- `01-ring-toss`: relabelled the disputed polyline as the explicitly interpretive `EYE PATH: RING STAND TO TOSSED RING`; its endpoints remain on the ring-game sequence rather than claiming to trace a floorboard.
- `02-girl-with-harp`: removed the false harp-curve primitive and replaced the overlay, chapter, and source reading with the visible hands at the zither.
- `07-maine-marshes`: replaced the mount-edge horizon line with a polyline that traces the visible marsh-sky edge, then regenerated the proof.
- `09-morning-bathroom`: corrected the source title/date and description to *Morning* (1906), Jane White outdoors by the tree; corrected the chapter plate date to 1906.
- Corrected the `01-ring-toss` and `08-the-kiss` source descriptions to their interior scenes.
- Re-verified all required fixes from critique round 2026-07-16 (commit `ae28bce`): this is the full critique history for the slug. Advisory items were left unchanged because the required corrections were complete without a regression.
- `scripts/check.sh` passed before this resolution was recorded.
