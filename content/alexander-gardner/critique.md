verdict: approve

## Required fixes

1. **Settings honesty — the chapter and research state unrecorded image-specific exposure requirements as fact.** Both files acknowledge that no aperture, shutter speed, or plate speed survives, then say that the studio and outdoor images required several seconds and that the outdoor work used a stopped-down lens. Recast this as general wet-plate context or remove it; these are not recorded settings for these eleven photographs.

2. **04-red-cloud-portrait — the section calls two portraits “full-length,” but Red Cloud is not one.** The proof is a vignetted head-and-torso/hand portrait, and `sources.md` accurately calls it a seated three-quarter view. Correct the section framing, which currently makes a false claim about what the plate shows.

3. **03-ruins-richmond-bridge — the claimed correspondence between the pier line and the analyzer VP is geometrically false.** The overlay's repeating-piers line runs from `(0.285, 0.494)` to `(0.487, 0.508)`; extended to the cited VP's `x=0.571`, it is at about `y=0.514`, not the analysis VP's `y=0.730` (a 0.216 normalized-frame gap). Remove the chapter statement that the VP is close to where the line points.

4. **07-dunker-church-dead-antietam — an analyzer artifact is presented as visible convergence.** The proof has no perspective convergence at `(0.613, 0.763)`: that point is in the near body/debris field, and the intentional overlay contains no VP. The chapter's claim that the dead and limber wheels “all” lead there turns the raw detector result into a false photographic structure. Delete or explicitly qualify it as an unreliable detector reading.

5. **09-crowd-second-inauguration — the source description names architectural bays absent from the supplied photograph.** `sources.md` says East Portico columns divide the frame into vertical bays, while the proof shows winter trees, the crowd, bayonets, and only an edge of architecture. Its current overlay and chapter correctly describe the crowd/bayonet diagonal. Rewrite the source rationale to match the actual image.

## Advisory (non-blocking)

- 05's source blurb overstates a reflected “doubling” of the arcade; the water is dark and the arches are heavily obscured. The published overlay and chapter's half-hidden account remain materially sound.
- Current overlay scores pass (88–100). The warnings on 02 and 08 are visual false positives, and 05's previously noted parapet offset remains within tolerance.

The prior Lincoln timing, Powell stance, and 5-LOC/3-Met/3-mirror ledger fixes remain resolved.

## Builder resolution — 2026-07-15

Re-verified prior rounds `0b9af6f` (Lincoln timing, metric rankings, and
achromatic-palette wording) and `7f4eea6` (research timing, Powell's standing
pose, and the 5-LOC / 3-Met / 3-mirror ledger). Those corrections remain
present in the current chapter, sources, research, overlays, and proofs.

Applied this round's required fixes: settings are now general wet-plate
context only; the portrait comparison distinguishes Powell's full-length
standing figure from Red Cloud's seated three-quarter portrait; the bridge
and Dunker Church text explicitly declines the detector-only VP claims; and
the inauguration source rationale now describes the visible trees, crowd,
bayonets, and flag. The mirrored chapters are byte-identical.

`scripts/check.sh` passes.

## Critique round — 2026-07-15

No REQUIRED findings. All eleven proofs were reviewed with their current specs, analyzer outputs, sources, research, and chapter. The resolved corrections remain intact: the detector-only VP claims are explicitly declined for 03 and 07; 04 distinguishes the two portrait framings; 09 names only the structures and figures visible in the supplied plate; and all capture-setting language remains general wet-plate context rather than per-image fact. Scores pass (88–100); the residual 02/08 detector notes and 05 parapet margin do not misstate what the photographs show.

### Advisory (non-blocking)

None new.
