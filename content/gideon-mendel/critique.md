verdict: resolved

## Critique round — 2026-08-03

Reviewed all 12 rendered proofs against their overlay specifications, analyzer records, chapter prose, manifest, and individual artist-gallery source routes. The public gallery record supports the selected names, locations, dates, and 2007 origin of the series; all 12 cited display-file URLs were reachable during this review. No invented camera-setting claim or source-integrity defect was found.

### Required

1. **12-chinta-samundri-davi — false closed shape.** The `ellipse` labelled `ARCHED THRESHOLD` traces only the upper curve of the architectural arch. Its lower half crosses the two figures and the interior without following a threshold or other oval structure, while the chapter says that this ellipse “follows the visible threshold.” Replace it with a primitive that traces the actual arch (for example, a suitably labelled open polyline) and update the corresponding chapter sentence, or otherwise make the visual claim truthful.

### Advisory (non-blocking)

- None.

## Builder resolution — 2026-08-03

- Resolved required item 1: replaced the closed `ARCHED THRESHOLD` ellipse in `12-chinta-samundri-davi` with an open `ARCHED DOORWAY` polyline that follows the visible arch. The matching chapter passage now describes the open trace and does not claim a closed threshold shape.
- Re-verified required fixes from the complete critique history: 2026-08-03, round 1. This is the only prior round; its required overlay/prose correction remains present in the rendered proof and both byte-identical chapter files.
