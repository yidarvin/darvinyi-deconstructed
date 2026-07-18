verdict: approve

## Critique round — 2026-07-18

### Required fixes

1. **01-coal-searcher-going-home-to-jarrow — retarget or remove `RIGHT-HAND BANK`.** The straight leading line begins in the lower path and cuts diagonally across it; it does not trace the photograph's curved right-hand bank. Its present label therefore makes a false structural claim.
2. **02-a-snicket-in-halifax — correct the exit and parapet claims.** The `NARROW EXIT` marker at `(0.639, 0.459)` sits in the cobbles, below the lane's visible opening, and the `LEFT PARAPET` line runs through the lane rather than along the parapet. Move/relabel these primitives and update the chapter's measured-exit reference if it remains.
3. **03-bottle-kilns-stoke-on-trent — replace or remove `LOW ROOF RHYTHM`.** Its polyline starts in the white print margin and then cuts across the bases of the kilns; it does not follow the low roofs named by the label.
4. **06-east-sussex-coast-1953 — correct `SHORE EDGE`.** The line crosses foreground pebbles rather than a visible shoreline. Reposition it to the actual boundary or relabel it as an accurately visible ground-plane/recession feature; revise the caption and prose that currently rely on a shore edge.
5. **07-east-sussex-coast-1957 — correct the foreground feature.** The ellipse encloses a close human eye, not an ear. Change the overlay label and the matching caption/prose (or move the annotation to an actual ear).
6. **07-east-sussex-coast-1957 — correct `CLIFF EDGE`.** This leading line runs across the pebble beach and only terminates near the cliff; it does not trace a cliff contour. Retarget or relabel it to the feature it actually follows.
7. **11-stonehenge — correct `GAP BETWEEN STONES`.** The frame-in-frame spans approximately `x=0.39–0.70`, placing its brackets inside both monoliths instead of on the narrow bright gap between them. Redraw the feature and keep the chapter's aperture reading aligned with it.
8. **12-north-bridge-river-hebble — replace the `BRIDGE ARCH` ellipse.** The full oval does not follow the bridge arch's visible curved edge and its lower half crosses the unrelated building/scene below. Use a conservative structural primitive that actually traces the arch, then keep the chapter's enclosure claim consistent.
9. **10-london-during-the-blitz — correct the source-note description.** `sources.md` calls the image a ruined urban view built from fractured verticals, rubble, and voids, but the supplied Art Institute image is the shelter scene of sleeping bodies used by the plate and chapter. Replace that materially false “Why it matters” description with one for the displayed photograph.

### Advisory (non-blocking)

- **01-coal-searcher-going-home-to-jarrow:** `UPWARD PATH` label clearance at the bottom edge is tight.
- **03-bottle-kilns-stoke-on-trent:** The kiln ellipses are broad but still clearly identify the two kiln forms.
- **09-st-pauls-cathedral-moonlight:** The `BLACK WALL` frame begins slightly inside the dark right-hand mass.
- **12-north-bridge-river-hebble:** The `GABLED BUILDING` brackets cover only the central portion of the building.

All twelve proofs were visually reviewed against their specs and analysis. The tonal and coordinate claims checked in the chapter match the analyzer within tolerance, and the chapter does not invent per-frame settings. The source notes provide per-image official collection links, credits, and four-factor fair-use rationales; the required source-note correction above is about the image description, not a rights-basis defect.

## Builder resolution — 2026-07-18

- Removed the false `RIGHT-HAND BANK` line; the remaining path annotation now follows the visible central path and has clear label placement.
- Retargeted the Halifax parapet to its visible upper edge, directed the cobbles to the actual bright opening, and removed the unsupported coordinate claim from the chapter.
- Removed the false kiln-roof polyline and its prose references.
- Relabeled the 1953 coast line as `PEBBLE RECESSION` and aligned its caption and prose to the visible foreground.
- Corrected the 1957 foreground annotation and text to `ENLARGED EYE`; relabeled the second diagonal `PEBBLE SLOPE` and removed the unsupported cliff-edge claim.
- Narrowed the Stonehenge frame to the actual bright interval between the uprights and revised the aperture wording.
- Replaced the North Bridge ellipse with a polyline that traces the visible arch soffit; the caption and prose now describe a canopy rather than an enclosure.
- Corrected the London source note and fair-use rationale to the supplied shelter photograph of sleeping civilians.

History reverified: the 2026-07-18 critique round above is the complete critique history for this slug. All nine required fixes remain reflected in the overlays, regenerated proofs, source notes, and synchronized chapter copies. The seven affected overlays were rerendered, visually checked, and scored at 100, 88, 100, 100, 100, 100, and 100 respectively (all at or above the 80 threshold); the Halifax score's two warnings are non-blocking detector warnings, with the parapet and cobble paths visually confirmed. `scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-07-18

### Required findings

None. All twelve current proofs were visually checked against their overlay specs and analysis. The nine fixes resolved in the preceding round remain materially correct: each affected primitive now traces the named visible feature, and the synchronized chapter/source text makes no contrary claim. Checked tonal and coordinate values match the analyzer within tolerance; no per-frame camera settings are asserted. All twelve images have Art Institute record and IIIF links, collection credit, and per-image four-factor fair-use rationales.

### Advisory (non-blocking)

- **02-a-snicket-in-halifax:** The scorer retains two detector warnings for the parapet and cobble leading lines (score 88), but the current proof visibly tracks the parapet edge and illuminated cobble recession to the opening. No change is required.
