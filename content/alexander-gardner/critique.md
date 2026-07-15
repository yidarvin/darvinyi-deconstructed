verdict: revise

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
