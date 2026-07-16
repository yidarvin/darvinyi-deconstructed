verdict: resolved

## Critique round — 2026-07-15

### Required fixes

1. **08-stiff-pull — regenerate the proof from the current image and overlay, and reconcile the source description.** `images/08-stiff-pull.jpg`, `overlays/08-stiff-pull.json`, and the chapter all show the horse team, plough mechanism, and plough linkage. But `proofs/08-stiff-pull.png` shows a different boat-towing photograph with labels “BOAT AND TOWING CREW” and “TOW-LINE DIRECTION”; `sources.md` likewise describes towing action. This makes the review artifact and source account disagree materially with the plate a reader will receive. Render a current proof for the horse-and-plough image and correct the stale boat/towing description (or, if the boat image was intended, restore that image/spec/chapter consistently).

### Advisory (non-blocking)

- None.

## Resolution — 2026-07-15

Resolved required fix 1: regenerated `proofs/08-stiff-pull.png` from the current horse-and-plough image and overlay, and corrected the stale towing/boat description in `sources.md` to match the plate, overlay, and chapter.

Re-verified critique history: 2026-07-15 round (commit `2adfd6c`); this is the complete prior critique history for this slug. The regenerated proof, image, overlay, source entry, chapter, and deterministic score (100/100) now agree.

## Critique round — 2026-07-15

### Required fixes

1. **05-gunner-working-fowl — redraw or remove the `boat hull` polyline.** The current spec draws `[[0.21,0.60],[0.41,0.45],[0.63,0.47],[0.72,0.57],[0.53,0.67]]`. In the current proof, the final two segments make a detached angular loop in open water to the boat’s right instead of tracing its hull. This is a false compositional claim even though the deterministic scorer returns 100, because interpretive polylines are not geometrically checked. Re-specify the visible hull edge, or omit this primitive while retaining the reed line and boatman anchor.

### Advisory (non-blocking)

- None.

## Resolution — 2026-07-15

Resolved required fix 1 from the current round: removed the unsupported `boat hull` polyline from `overlays/05-gunner-working-fowl.json` and regenerated its proof. The remaining distant-reed line and boatman anchor align with the photograph; a fresh analysis and deterministic score returned 100/100 with no warnings, and the composite passed visual review.

Re-verified prior critique rounds: 2026-07-15 initial round (commit `2adfd6c`) and 2026-07-15 current round (commit `f0cd39e`). For the initial round, `08-stiff-pull` still has the horse-and-plough source description, current horse-and-plough image/spec/chapter agreement, a byte-identical regenerated proof, and a 100/100 score. For the current round, the detached hull loop is absent from the regenerated proof.

## Critique round — 2026-07-15

### Required fixes

1. **07-water-lilies — correct the mislabeled `reed-water break`.** In the current proof, the diagonal `horizon_line` at `y: 0.527`, `angle: -4.8` runs along the lower edge of the lily-pad belt where it meets open water; it does not trace the reed-to-water boundary. The reeds are visibly higher in the frame and are already addressed by the `receding reed bank` polyline. Rename this primitive to the feature it actually follows (for example, `lily-water break`) or redraw it to the true reed boundary, then regenerate the proof. This is a semantic error, not a numeric one: the analyzer’s measured 0.527 / -4.8 values are correctly reproduced but its generic horizon suggestion does not make the named feature truthful.

2. **10-at-plough-end-furrow — redraw the `furrow direction` polyline.** The visible furrow rises from the lower foreground to the plough behind the team, but the current final segment runs on into the right horse at approximately `[0.64, 0.47]`. That endpoint is far beyond a small endpoint margin and makes the line trace the animal rather than the furrow. End the path at the actual plough/furrow junction (or omit the unsupported final segment) and regenerate the proof.

3. **12-fisherman-home — correct the `telescope on workbench` label.** The proof and underlying image show the fisherman holding the telescope across his lap; the workbench is the small table at left. The polyline points to the telescope, but its label names a location it does not occupy. Rename it to the visible feature (for example, `telescope in fisherman's hands`) and regenerate the proof.

### Advisory (non-blocking)

- **05-gunner-working-fowl — two primitives remain after the prior resolved hull removal.** The distant reed line and boatman anchor are truthful and the prior round’s removal has not regressed. A third primitive would improve conformity with the 3–5-primitives teaching target only if it can identify a distinct, visibly supported feature; do not restore the previously rejected hull loop merely to reach a count.

## Resolution — 2026-07-15

Resolved current required fixes: `07-water-lilies` now truthfully labels the measured lower boundary as the **lily-water break**; `10-at-plough-end-furrow` stops the furrow polyline at the plough/furrow junction, before the right horse; and `12-fisherman-home` identifies the telescope in the fisherman’s hands. Fresh analyses, regenerated proofs, visual passes, and deterministic scores all passed at 100/100 with no warnings.

Re-verified every prior required round from `git log -p -- content/peter-henry-emerson/critique.md`: the initial 2026-07-15 round (commit `2adfd6c`) remains satisfied because `08-stiff-pull` has the horse-and-plough image, matching source entry, chapter, overlay, and proof; the second 2026-07-15 round (commit `f0cd39e`) remains satisfied because `05-gunner-working-fowl` contains no boat-hull polyline or detached loop. The third 2026-07-15 round (commit `619036c`) is resolved by the three corrections above. The advisory two-primitive `05` overlay remains intentionally unchanged to avoid restoring the rejected false hull claim.

## Critique round — 2026-07-15

### Required fixes

1. **01-poling-marsh-hay — redraw or remove `marsh-bank recession`.** The polyline begins on the exposed bank at `[0.46,0.56]`, but its next two vertices, `[0.63,0.47]` and `[0.78,0.41]`, fall on the foreground worker and the dark companion behind her in the current proof, not on a visible marsh-bank edge. The line therefore teaches a route through people while naming it as ground recession. Trace only the exposed bank edge, or omit this unsupported primitive, then regenerate the proof.

2. **02-setting-bownet — correct the `boat and reflection band` polyline.** Its final segment, from `[0.68,0.47]` to `[0.98,0.59]`, follows the right oar to its blade, not the boat or a reflection. This makes the named feature false at a conspicuous part of the overlay. End/redraw the boat-and-reflection path before the oar, or give the oar a truthful separate label, then regenerate the proof.

### Advisory (non-blocking)

- **05-gunner-working-fowl — no regression.** It still has only the distant-reed line and boatman anchor, as intentionally retained in the resolved 2026-07-15 round. That remains non-blocking; do not reintroduce the previously rejected hull path merely to reach a numeric primitive target.

## Resolution — 2026-07-15

Resolved required fix 1: `01-poling-marsh-hay` no longer claims a continuous marsh-bank recession. Its regenerated proof now uses the measured, visually supported `distant tree horizon` at `y: 0.341`, alongside the dark-tree anchor and foreground-worker ellipse; fresh analysis and scoring returned 100/100 with no warnings.

Resolved required fix 2: `02-setting-bownet` now traces the visible `boat hull / waterline` and stops at the bow before the right oar. The regenerated proof contains no boat/reflection path over the oar; fresh analysis and scoring returned 100/100 with no warnings.

Re-verified every required fix in the full critique history from `git log -p -- content/peter-henry-emerson/critique.md`: the initial 2026-07-15 round (commit `2adfd6c`) remains satisfied by the matching horse-and-plough source entry, image, overlay, chapter, and proof for `08-stiff-pull`; the second round (commit `f0cd39e`) remains satisfied because `05-gunner-working-fowl` has no rejected hull loop; the third round (commit `619036c`) remains satisfied because `07-water-lilies` labels the lily-water break, `10-at-plough-end-furrow` stops before the horse, and `12-fisherman-home` names the telescope in the fisherman’s hands; and the current round (commit `0c5a8f5`) is resolved by the two regenerated proofs above. The `05` advisory remains intentionally unchanged. `scripts/check.sh` passed in full, including chapter byte identity, tests, build, and lint.
