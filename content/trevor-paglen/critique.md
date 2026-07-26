verdict: resolved

## Critique round — 2026-07-26

### Required

1. **04-reaper-drone** — The vertical `symmetry_axis` at x0.375, labeled `SKY BALANCE`, does not trace a mirror axis or another visible vertical feature in the proof; it simply bisects an unmirrored, nearly empty sky. A `symmetry_axis` asserts mirror structure under the overlay contract, so remove it or replace it with a primitive tied to an actual visible feature. The chapter's account can then continue to teach the low horizon and tiny drone without claiming this axis.
2. **05-dead-satellite-cosmos-469** — The vertical `symmetry_axis` at x0.375, labeled `OPEN-SKY BALANCE`, likewise marks no mirrored or physical axial structure. The proof's two unequal buttes and open sky do not make that line an axis. Remove or replace this primitive with a claim that visibly traces a compositional feature.
3. **07-nsa-tapped-keawaula** — The `COASTAL FOCAL POINT` anchor at x0.586, y0.618 lands in blank chart ground rather than on a coastal feature or other subject. Re-anchor it to a visible named feature, relabel it accurately, or omit it.
4. **10-last-pictures-echostar-xvi** — The horizontal `PAIRED-FRAME SEAM` at y0.495 has no corresponding seam in the proof: the physical divide is vertical at x0.5. The `RIGHTWARD CONVERGENCE` point at x0.796, y0.511 also sits on no visible convergence; the right-panel trails read as parallel diagonal traces there. Correct or remove both claims, and revise the caption and paragraph that call the y0.495 line a seam and the x0.796/y0.511 point a measured convergence.
5. **research.md, “Technique and limits”** — “The ingested manifest contains no retained EXIF metadata” is contradicted by `manifest.json`, which records EXIF fields for 01, 04, 05, 09, 10, and 11. Correct the statement while preserving the appropriate distinction that these downloaded-file fields do not independently establish Paglen's original capture settings.

### Advisory (non-blocking)

- **03-national-security-agencies** — The x0.5 `TRIPTYCH CENTER` line is visually clear as a centerline, but “symmetry axis” is a somewhat loose schema fit for three vertically stacked, non-mirrored views. It is not misleading enough to block the chapter.
- All 11 current specs score 100 with the deterministic scorer, and the chapter's reported tonal, palette, horizon, and measured-coordinate values otherwise agree with the corresponding analysis JSON within the stated tolerance. The public image routes resolved successfully during this review, and each source entry includes a traceable institutional route, credit/copyright statement, and a concise four-factor fair-use rationale.

## Resolution — 2026-07-26

1. **04-reaper-drone:** removed the unsupported `SKY BALANCE` symmetry axis; the proof now limits its claim to the measured dusk horizon.
2. **05-dead-satellite-cosmos-469:** removed the unsupported `OPEN-SKY BALANCE` symmetry axis and retained the horizon and visibly anchored monument formation.
3. **07-nsa-tapped-keawaula:** replaced the blank-chart anchor and cross-panel horizon claim with the two physical panel frames and a shoreline polyline confined to the coast photograph; revised the plate text to match.
4. **10-last-pictures-echostar-xvi:** removed the false horizontal seam and convergence claims, replaced the symmetry primitive with a leading line on the physical vertical diptych divide, and revised the caption and paragraph to describe parallel trails accurately.
5. **EXIF statement:** corrected research and the chapter callout to distinguish retained EXIF in downloaded derivatives from documented original-capture settings. The related unsupported EchoStar C-print description in `sources.md` was also made conservative.

Re-verified critique history: the 2026-07-26 round is the only prior round in `git log -p -- content/trevor-paglen/critique.md`; every required fix from it holds in the current specs, proofs, research, and byte-identical rendered chapter. The four affected overlay scores are 100/100 with clean visual passes, and `scripts/check.sh` passes.

## Critique round — 2026-07-26

### Required

1. **02-nsa-tapped-mastic-beach** — `SHORELINE DIVIDE` is encoded as a full-frame `horizon_line` at y0.620. It tracks the photographed beach shoreline in the left panel, but continues unchanged through the right-hand navigation chart, where it traces no shoreline. The plate text compounds this by calling it “a real visual hinge across both panels.” Constrain the claim to the photographed shoreline (for example, a bounded polyline in the left panel), or relabel and revise the prose to describe only a visible whole-work alignment.
2. **sources.md / research.md — The Last Pictures/EchoStar XVI Launch and Preliminary Orbit** — Both files say the supplied Rollins record does not specify a printing process. The cited Rollins collection record identifies the 2012 work as “C-prints.” Correct the per-image source entry and the research summary so the chapter’s documented-process account remains accurate.

### Advisory (non-blocking)

- **01-stss-carson-city** and **04-reaper-drone** use fewer than the usual 3–5 primitives, but the current claims remain legible. The latter’s `DUSK HORIZON` was retained after the previous round; its proof and spec are unchanged, so this review does not reopen that settled point.
- **03-national-security-agencies** retains the previously noted loose `symmetry_axis` schema fit for `TRIPTYCH CENTER`; it remains advisory and unchanged.
- **11-last-pictures-narbona-predator** — `UPPER IMAGE SIGNAL` is weakly located at the top edge, but it still points to visible instrumental text and is not material enough to block.

## Resolution — 2026-07-26

1. **02-nsa-tapped-mastic-beach:** replaced the full-frame `SHORELINE DIVIDE` horizon claim and the misleading chart anchor with a `PHOTOGRAPHED SHORELINE` polyline constrained to x0.019–0.462 in the beach panel. The proof is visually clean, scores 100/100, and the caption and paragraph now state that the line does not continue through the map.
2. **EchoStar XVI process:** corrected `sources.md` and `research.md` to record the Rollins collection entry's C-prints designation.

Re-verified critique history: the original 2026-07-26 revision and its first resolution, plus the current 2026-07-26 revision. The earlier required fixes remain intact: the Reaper and Cosmos overlays have no unsupported symmetry axes; Keawaula confines its shoreline to the coast photograph; EchoStar XVI retains only its physical vertical divide and launch anchor, with no false horizontal seam or convergence; and the EXIF wording continues to distinguish downloaded-file metadata from original capture settings. All 11 overlay specs score 100/100, the affected proofs pass visual inspection, `chapter.mdx` and `src/chapters/trevor-paglen.mdx` are byte-identical, and `scripts/check.sh` passes.
