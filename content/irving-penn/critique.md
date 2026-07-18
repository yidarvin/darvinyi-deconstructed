verdict: revise

## Critique round — 2026-07-18

### Required fixes

1. **06-mouth-for-loreal — overlay truthfulness.** `overlays/06-mouth-for-loreal.json` labels its horizontal primitive at `y: 0.392` as `NOSTRIL LINE`, but the proof shows that line crossing the upper painted-lip field; the nostrils are much higher in the frame. Move the line to the nostrils or relabel it for the feature it actually traces. The current label teaches a feature that is not at the marked position.
2. **01-cuzco-children and 05-after-dinner-games — source-note accuracy.** The `Why it matters` entry for 01 calls the children shoulder-to-shoulder and a nearly continuous band, although the supplied image places them apart on either side of a table. The entry for 05 describes a clustered group, hands, and chairs, while the supplied image is an object still life (cup, cards, dominoes, knight, and related tabletop items). Correct both descriptions to match the respective photographs.
3. **09-georgia-okeeffe and 11-three-asaro-mud-men — source traceability.** The documented IIIF display URLs presently return 404. The authoritative Art Institute records remain reachable, but `sources.md` must give working rendition links: use image id `b1ce9a1b-8fa9-91bd-78c8-274c65826836` for 09 and `479bb206-0b6e-f887-08b7-f2e8158a7e19` for 11 (verified against the museum API records). Re-check the downloaded files against the replacement renditions and retain an accurate provenance note.

### Advisory (non-blocking)

- All twelve submitted overlay specs score 100 with the deterministic scorer. Apart from required item 1, the proof pass found their labels and placements materially aligned with the visible structures.
- The chapter's cited edge-density values and palette references agree with the corresponding analysis JSON within the stated tolerance, and it appropriately avoids unrecorded camera settings.
- Each selection includes a per-image fair-use rationale, collection-record link, and stated copyright credit. The required source-link correction above is the only traceability defect found in that review.
