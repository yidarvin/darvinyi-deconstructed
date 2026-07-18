verdict: resolved

## Critique round — 2026-07-18

### Required fixes

1. **06-mouth-for-loreal — overlay truthfulness.** `overlays/06-mouth-for-loreal.json` labels its horizontal primitive at `y: 0.392` as `NOSTRIL LINE`, but the proof shows that line crossing the upper painted-lip field; the nostrils are much higher in the frame. Move the line to the nostrils or relabel it for the feature it actually traces. The current label teaches a feature that is not at the marked position.
2. **01-cuzco-children and 05-after-dinner-games — source-note accuracy.** The `Why it matters` entry for 01 calls the children shoulder-to-shoulder and a nearly continuous band, although the supplied image places them apart on either side of a table. The entry for 05 describes a clustered group, hands, and chairs, while the supplied image is an object still life (cup, cards, dominoes, knight, and related tabletop items). Correct both descriptions to match the respective photographs.
3. **09-georgia-okeeffe and 11-three-asaro-mud-men — source traceability.** The documented IIIF display URLs presently return 404. The authoritative Art Institute records remain reachable, but `sources.md` must give working rendition links: use image id `b1ce9a1b-8fa9-91bd-78c8-274c65826836` for 09 and `479bb206-0b6e-f887-08b7-f2e8158a7e19` for 11 (verified against the museum API records). Re-check the downloaded files against the replacement renditions and retain an accurate provenance note.

### Advisory (non-blocking)

- All twelve submitted overlay specs score 100 with the deterministic scorer. Apart from required item 1, the proof pass found their labels and placements materially aligned with the visible structures.
- The chapter's cited edge-density values and palette references agree with the corresponding analysis JSON within the stated tolerance, and it appropriately avoids unrecorded camera settings.
- Each selection includes a per-image fair-use rationale, collection-record link, and stated copyright credit. The required source-link correction above is the only traceability defect found in that review.

## Resolution — 2026-07-18

- Re-verified the complete prior critique history: 2026-07-18 (`c9152bb`, the only prior round). All three numbered requirements from that round remain satisfied.
- **06-mouth-for-loreal:** Re-ran analysis, render, visual proof review, and scoring. The horizontal primitive remains at the measured `y: 0.392` but is now truthfully labeled `UPPER PIGMENT BAND`; it aligns with the upper painted field rather than claiming the nostrils. Score: 100/100, no deductions or warnings.
- **01-cuzco-children / 05-after-dinner-games:** Corrected both source-note descriptions to the visible photographs: two children separated by a table, and a tabletop still life of cup, cards, dominoes, knight, and related objects. The associated fair-use explanation for 05 now accurately describes the complete-frame need.
- **09-georgia-okeeffe / 11-three-asaro-mud-men:** Replaced the stale IIIF identifiers with the working Art Institute rendition URLs. Fresh downloads returned JPEGs byte-identical to the retained raw files (SHA-256 values documented in `sources.md`), preserving accurate provenance for the ingested images.
- Ran `scripts/check.sh` successfully after the fixes; its chapter-sync gate confirms the rendered chapter mirror is byte-identical.

## Critique round — 2026-07-18

### Required fixes

1. **04-man-lighting-girls-cigarette — overlay truthfulness.** This is a material regression after the prior round's resolution. The vertical `BOTTLE AXIS` at `x: 0.43` runs along the bottle's left side rather than its center (approximately `x: 0.50`), so it does not trace the named axis. The horizontal `TABLE EDGE` at `y: 0.634` instead follows the bottle's liquid boundary and then crosses unrelated background and figures; it is not a table edge. Finally, the `subject_anchor` is labeled `CHAIR-BACK CURVE`, which is a structural contour rather than a subject and therefore makes the primitive's semantic claim false. Rework these annotations into primitives and labels that truthfully trace the visible bottle, table, and chair features, and revise the dependent prose in `chapter.mdx`.
2. **05-after-dinner-games — overlay truthfulness.** The full-width `horizon_line` labeled `CUP-RIM LEVEL` at `y: 0.477` cuts through the coffee/cup interior and unrelated objects; it does not follow the cup's elliptical rim or another dominant horizontal. Replace or remove it and adjust the associated chapter claim if necessary.
3. **07-truman-capote — overlay truthfulness.** The `horizon_line` labeled `FOREHEAD LIGHT` at `y: 0.129` crosses background, head, and background rather than a horizontal light boundary. Remove it or replace it with a primitive that traces a real, correctly named feature; retain only the annotations the image supports.
4. **08-picasso-at-la-californie — overlay truthfulness.** The horizontal line labeled `HAT BRIM` at `y: 0.124` runs through the crown/background and misses the brim's oblique curved lower edge. Remove it or use a correctly placed interpretive contour, then ensure the prose's brim claim matches that annotation.
5. **09-georgia-okeeffe — overlay truthfulness.** The line labeled `FIGURE-GROUND BREAK` at `y: 0.569` crosses O'Keeffe's wrists and torso plus empty wall; it is not a visible horizontal figure-ground break. Remove or redraw it around an actually visible, correctly named structure.
6. **11-three-asaro-mud-men — overlay truthfulness and chapter accuracy.** The two annotated `leading_line`s both run lower-left to upper-right and are nearly parallel; they do not depict the claimed crossing-spears structure, while `SHOULDER BAND` crosses unrelated bodies, heads, and background rather than a real horizontal band. Rebuild the overlay around true visible spear geometry (or simplify conservatively) and correct the overlay notes and chapter text that presently describe crossing spears as the central hinge.

### Advisory (non-blocking)

- Every current overlay scores 100/100 with no deductions or warnings under the deterministic scorer, including `--strict`. Those scores do not validate semantic correspondence between a label and the pictured feature; the numbered visual failures above remain blocking.
- `01-cuzco-children`'s child-to-table arrow is understandable as an attention path but is less a single physical edge than its `leading_line` type implies. Consider an interpretive `polyline` when revising, but this does not block the chapter.

## Resolution — 2026-07-18

- Re-verified the complete critique history: the initial 2026-07-18 round (`c9152bb`) and the current 2026-07-18 regression round (`c8802b3`). The earlier `06-mouth-for-loreal` label remains `UPPER PIGMENT BAND`; the corrected 01 and 05 source descriptions still match the photographs; and fresh downloads from the corrected Art Institute rendition URLs for 09 and 11 still SHA-256-match the retained raw files.
- **04-man-lighting-girls-cigarette:** Re-analyzed and replaced the false table-edge horizon, off-center bottle axis, and semantically invalid anchor with the bottle's actual centered axis, the low front table edge, and a chair-back contour. The dependent chapter text now names those visible structures.
- **05-after-dinner-games:** Replaced the full-width false horizon with a local ellipse that follows the cup rim, and revised the associated prose and caption from a fictive level to the visible oval rim.
- **07-truman-capote:** Removed the false forehead-light horizon, tightened the eyeglasses ellipse to the raised lens, and retained only the visible sleeve and jacket diagonals. The chapter no longer claims a forehead-light band.
- **08-picasso-at-la-californie:** Removed the misplaced hat-brim horizon and its dependent prose claim; the overlay and chapter now make only the supported eye-and-collar argument.
- **09-georgia-okeeffe:** Removed the false figure-ground horizon while retaining the true corner seam, face anchor, and angled studio-wall frame.
- **11-three-asaro-mud-men:** Rebuilt the overlay around the visibly distinct steep left-hand spear bundle and shallow foreground spear, tightened the central-mask ellipse, and removed the false crossing-spear/central-hinge claim from overlay notes, prose, and caption.
- Re-ran analysis, render, visual proof review, and scoring for all six affected images. All twelve overlays pass the >=80 scorer gate (11 at 100; 11-three-asaro-mud-men at 88 with only non-blocking edge-detector warnings); visual inspection confirms each surviving label tracks its named feature. `scripts/check.sh` passed, including the byte-identical chapter mirror gate.
