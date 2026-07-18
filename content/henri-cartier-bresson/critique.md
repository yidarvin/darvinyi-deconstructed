verdict: resolved

## Critique round — 2026-07-17

### Required

1. **01-hyeres-france — false subject anchor.** `subject_anchor` at `(0.429, 0.558)`, labeled `passing cyclist`, is on the stair/rail junction. The cyclist is in the upper-left street at approximately `(0.30, 0.34)`. This also makes the chapter's statement that the overlay places the anchor on the cyclist untrue. Move the anchor to the cyclist or remove it.

2. **06-mexico-city — false bench line.** The `bench-side diagonal` polyline (`[0.22, 0.04]` to `[0.85, 0.80]`) crosses the people and open ground; it does not trace a visible bench edge. Remove it or replace it with an accurately aligned, truthfully named feature. Update the chapter's corresponding claim.

3. **08-arsila-spanish-morocco — invented stepped path.** The `stepped descent` polyline runs through the central figure and foreground but does not follow identifiable steps or a continuous physical edge. It therefore teaches a structure not present in the proof. Remove it or use a defensible, accurately named bodily/cloth contour, and revise the related prose.

4. **10-trieste-italy — wrong named line.** The line at `y: 0.483` traces the top of the striped wall. It is not a visible sea horizon, so the `wall and sea horizon` label and chapter claim are misleading. Relabel it as the wall's top edge (and revise the prose) or remove the primitive.

5. **11-quai-de-javel-paris — overbroad subject label.** The ellipse labeled `right-hand worker` encloses more than one worker. Tighten it to the intended person or rename it as a group; the current label makes a false one-person claim.

6. **12-cordoba-spain — unsupported internal frame.** The near-full-frame `doorway interior` rectangle does not trace a visible doorway. Remove it or draw an internal frame that corresponds to an actual doorway/opening.

7. **Source-note image descriptions are materially mismatched to their referenced proofs.** In `sources.md`, the `Why it matters` descriptions for at least `02-alicante-spain`, `04-valencia-spain`, `06-mexico-city`, `08-arsila-spanish-morocco`, `09-piazza-della-signoria-florence`, `10-trieste-italy`, and `11-quai-de-javel-paris` describe subjects or structures absent from the displayed Art Institute image (for example, Valencia is the child against a wall, not a crowded street with repeated heads; Mexico City is the interlocked seated group, not a figure-and-wall scene). Rewrite every affected entry to describe its actual referenced image.

8. **Fair-use documentation is incomplete for every image.** Each per-image assessment gives purpose/transformative use, complete-frame necessity, and web-sized/non-substitutive use, but omits statutory factor 2: the nature of the copyrighted work. Add a concise, image-specific four-factor rationale to all twelve entries as required by the build contract.

9. **Rights and process statements need correction.** `sources.md` says the Art Institute records credit the works to `Henri Cartier-Bresson / Magnum Photos`, but the queried records supply Henri Cartier-Bresson as artist, acquisition credit lines, and no copyright notice. Cite an authoritative rights notice for Magnum or state accurately what the Art Institute record provides. The same records list the medium as `Gelatin silver print` for all twelve, contradicting `research.md` and `chapter.mdx`, which say the original print process is undocumented. Correct those claims. Also qualify/remove the blanket claim that this whole selection consists of early Leica photographs: Art Institute dates Trieste 1930, while the Fondation HCB biography dates Cartier-Bresson's first Leica to 1931–32.

10. **Mexico City is not the set's sparsest plate.** `chapter.mdx` calls its edge density (`0.014834`) the set's sparsest, but `12-cordoba-spain.analysis.json` is lower at `0.011562`. Correct the superlative or qualify it.

### Advisory (non-blocking)

- **05-allees-du-prado-marseilles:** `wet pavement band` reads correctly, but `horizon_line` is a semantically awkward primitive type for a pavement band.
- **09-piazza-della-signoria-florence:** `tabletop rhythm` is interpretive rather than tightly edge-aligned, but remains legible and does not misidentify the subject.

### Verification record

All twelve Art Institute object IDs, titles/dates, non-public-domain flags, IIIF image identifiers, and local image dimensions matched the current collection API records. All twelve overlay specs deterministically score 100/100 against their current analysis JSON; the required overlay findings above are semantic/visual failures that geometric scoring cannot detect.

## Builder resolution — 2026-07-17

Re-verified prior critique round: **2026-07-17** (the complete available critique history).

1. Moved the Hyères cyclist anchor to `(0.30, 0.34)` and visually checked the rendered proof.
2. Removed Mexico City's false bench polyline and its related caption/prose claim.
3. Removed Arsila's invented stepped-path polyline and revised its caption/prose to describe only the two bodies and hanging garments.
4. Relabeled Trieste's line as the top edge of the striped wall and corrected the chapter prose.
5. Renamed the Quai de Javel ellipse as a right-side worker group.
6. Removed Córdoba's unsupported doorway frame.
7. Rewrote all twelve source descriptions against the displayed proofs.
8. Added an image-specific four-factor fair-use rationale to every source entry, including the creative nature of each work.
9. Corrected the Art Institute rights description, recorded the gelatin silver-print medium, and removed the blanket Leica claim.
10. Qualified Mexico City's low edge density as one of the set's sparsest rather than the sparsest.

Fresh analysis, rendering, deterministic scoring (100/100), and visual inspection were completed for all six affected overlays. The final visual pass also renamed Mexico City's ellipse from a couple to a group and removed Trieste's unnecessary wall rectangle. `scripts/check.sh` passed before this resolution was recorded.
