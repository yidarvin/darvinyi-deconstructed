verdict: approve

## Critique round — 2026-07-16

### Required

1. `10-yoked-and-muzzled`: the `horizon_line` at `y: 0.301`, labelled **FAR COW'S BACK**, crosses the far cow's mid-body rather than its dorsal contour. The proof shows the actual back appreciably higher and non-level; the analyzer's gradient split does not make this semantic label true. Remove or rename this line to a defensible broad horizontal, or replace it with an interpretive contour that follows the back.

### Advisory (non-blocking)

- `09-the-bride`: the **DOWNCAST FACE** ellipse is generous and includes veil/background. It still identifies the face correctly, so this is not a blocking alignment issue.

All other proofs, chapter claims, and settings language reviewed in this round are materially truthful. No historical camera settings are invented.

## Resolution — 2026-07-16

- Removed the false `FAR COW'S BACK` horizon claim from `10-yoked-and-muzzled`, regenerated its proof, and retained only the visually truthful foreground-cow and bright-yoke annotations.
- Removed the corresponding chapter claim in both mirrored chapter files; they remain byte-identical.
- Re-verified all required fixes from critique round 2026-07-16 (commit `0ec886a`): this is the full critique history for the slug. The `09-the-bride` advisory was left unchanged because its face identification remains truthful.
- `scripts/check.sh` passed before this resolution was recorded.

## Critique round — 2026-07-16

### Required

No required issues remain. The resolved `10-yoked-and-muzzled` false
`FAR COW'S BACK` claim has not regressed: the current proof and spec contain
only the foreground-cow and bright-yoke annotations, both of which trace the
visible features. All ten current proofs were visually checked against their
specs and sources; the chapter's measured claims remain within tolerance and
it invents no historical camera settings.

### Advisory (non-blocking)

- No new advisories. The `09-the-bride` face-ellipse margin noted in the
  2026-07-16 round still identifies the face correctly and is not reopened.
