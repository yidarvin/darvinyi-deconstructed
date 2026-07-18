verdict: approve

## Critique round — 2026-07-18

### Required (blocking)

1. **04-prague — distant figures are annotated in the wrong place.** In `proofs/04-prague.png`, the `DISTANT FIGURES` ellipse at `(0.423, 0.084)` sits on empty ridge/path. The two silhouetted figures are at roughly `(0.25–0.27, 0.03)`. This conflicts with the label and with the chapter's statement that the overlay marks the two figures at the path's upper end. Reposition the ellipse to those figures or remove it, then re-render and visually check.

2. **06-slovakia-utekac — the `CHILD IN WHITE` anchor marks the wrong person.** In `proofs/06-slovakia-utekac.png`, the anchor at `(0.663, 0.725)` is on a dark-clad member of the group; the white-clad child is approximately `(0.51, 0.72)`. This misidentifies the named subject and contradicts the chapter and source note. Reposition the anchor, then re-render and visually check.

3. **07-slovakia-detva — `POND EDGE` names a feature that the line does not trace.** The horizontal at `y: 0.766` in `proofs/07-slovakia-detva.png` crosses foreground instruments and arms, while the visible pond/shore boundary is much higher and irregular. The chapter repeats the false claim that a pond edge is at `y0.766`. Relabel the line to the feature it actually traces or remove/relocate it, and bring the chapter into agreement.

4. **09-slovakia-rakusy — `RISING PATH` is not visible.** In `proofs/09-slovakia-rakusy.png`, the lower polyline vertices follow the wrapped woman's shawl/body contour; there is no path rising from the frame bottom to her. The chapter's claim that a rising path carries the eye toward her is therefore false. Relabel it as the contour it traces or remove it, and revise the corresponding chapter sentence.

### Advisory (non-blocking)

- **06-slovakia-utekac:** `HILLSIDE RISE` is difficult to read as a continuous hillside edge because it crosses trees and ends in open slope. Consider relabeling or removing it after correcting the child anchor.

All twelve proofs were visually reviewed against their overlay specs, analyses, chapter, manifest, and source notes. The analyzer-backed numerical claims checked are within tolerance; all twelve overlay specs score 100/100, but the four semantic misannotations above remain material. Source records are traceable and each image includes an adequate per-image fair-use rationale. No camera settings are invented.

## Builder resolution — 2026-07-18

Re-verified critique history: 2026-07-18 (the only prior round).

1. **04-prague:** Moved `DISTANT FIGURES` to `(0.250, 0.035)`, enclosing the two ridge silhouettes; re-rendered, visually checked, and scored 100/100.
2. **06-slovakia-utekac:** Moved `CHILD IN WHITE` to `(0.510, 0.720)`, on the white-clad child; removed the advisory `HILLSIDE RISE` tree-crossing line; re-rendered, visually checked, and scored 100/100.
3. **07-slovakia-detva:** Removed the false `POND EDGE` line and revised the chapter to describe the layered field without an imposed boundary; re-rendered, visually checked, and scored 100/100.
4. **09-slovakia-rakusy:** Relabeled the truthful existing polyline `SHAWL CONTOUR` and revised the chapter accordingly; re-rendered, visually checked, and scored 100/100.

`scripts/check.sh` passes, including chapter byte identity and pipeline validation.

## Critique round — 2026-07-18

### Required (blocking)

None.

### Advisory (non-blocking)

None.

Fresh-eyes review of all twelve current proof PNGs against their overlay specs,
analysis records, chapter, manifest, research note, and source notes finds the
four issues from the 2026-07-18 critique round resolved without regression.
Each overlay is materially truthful and teaches a bounded compositional claim;
all score 100/100 in the deterministic scorer. The chapter's numerical claims
match the analysis values within tolerance, it explicitly declines unsupported
camera and process settings, and all twelve fair-use records retain traceable
Art Institute collection links, accurate attribution, and per-image rationale.
