verdict: resolved

## Critique round — 2026-08-02

### Required fixes

1. **01-darkroom-mirror-2220232** — Redraw or remove the two false structural claims. The `MIRROR-LIGHT SEAM` at `y: 0.415` crosses the heads and dark field rather than a visible mirror/light seam, and the `ARM-TO-KNEE DIAGONAL` runs from face/chest through the camera and open leg space rather than along a continuous arm-to-knee contour. Revise the corresponding plate caption and paragraph so they describe only the corrected primitives.

2. **03-figures-0x5a6168** — Remove or replace the `symmetry_axis` labelled `SPLIT STUDIO FIELD`. At `x: 0.438` it runs through the camera/figures and blank wall; it marks neither a visible studio/reflection split nor a plausible mirror axis. Update the plate text’s claim of an “off-center vertical split” to follow the replacement (or omit it).

3. **06-daylight-studio-0x5a4577** — Correct or remove the `frame_in_frame` labelled `MIRROR FIELD`. Its current bounds (`x: 0.03`, `y: 0.12`, `w: 0.38`, `h: 0.76`) enclose the sitters and curtain, while the visible mirror is only the narrow strip at the far left. Revise the plate caption and prose’s asserted bounded mirror field to match a truthful feature.

4. **08-twilight-studio-x5a6433** — Correct or remove the `frame_in_frame` labelled `STUDIO SCREEN`. The current rectangle extends over the right-side body/stage instead of tracing the wheeled screen, which is a tall, much narrower prop at roughly `x: 0.26–0.46`, `y: 0.18–0.86`. Update the matching caption and paragraph.

5. **11-studio-mirror-arrangement-dsf0714** — Remove or reposition/relabel the `symmetry_axis` `MIRROR SPLIT`. At `x: 0.438` it passes through the black-screen/camera area, not a visible mirror seam or split. The chapter’s “mirror split” claim must be changed with it.

6. **Source record / research** — Correct the unsupported or false provenance claims before re-review. The linked Galerie Peter Kilchmann work pages attribute the artist and document print media (for example, _Daylight Studio Mirror_ is described as an archival pigment print on dibond on a wheeled wooden frame), but they do not display an artwork-specific `© Paul Mpagi Sepuya` notice. For all eleven `sources.md` entries, replace the asserted `Credit/rightsholder: © Paul Mpagi Sepuya` with factual, sourced artist/gallery attribution or cite an authoritative rights notice that supports the claim. In `research.md`, do not say the source record fails to document print process; distinguish the documented finished print media from the still-undocumented capture, camera, exposure, film-stock, lighting, and post-production details. Keep the per-image four-factor fair-use rationales.

### Advisory (non-blocking)

- **04-studio-0x5a9580** — `SCREEN FIELD` is a broad compositional zone whose bounds do not read strongly as one internal frame. It is not blocking, but a zone-oriented label or a more conservative primitive would teach more clearly.
- **09-daylight-studio-mirror-dsf2371** — The `CONVERGING STUDIO EDGES` vanishing-point claim is visually subtle: the marker is at the camera and the visible diagonals are not an especially legible perspective set. It is within the analyzer’s suggested geometry, so this is advisory only; simplify or relabel if retaining it does not make the lesson clearer.
- All eleven gallery work-page links resolve, the fair-use entries contain the required four-factor rationale, and the chapter’s quoted tonal, palette, and edge-density measurements match the analyzer outputs. No invented camera settings were found.

## Builder resolution — 2026-08-02

Resolved all six required items. Re-rendered and visually checked the affected overlays: 01 now retains only the truthful camera-hand anchor; 03 and 11 remove the unsupported vertical axes; 06 traces the narrow left mirror strip; and 08 traces the wheeled screen. Each revised proof scored 100/100. The optional 09 vanishing-point claim was also removed as a clearer conservative reading. Updated the chapter captions and prose to match, in both rendered chapter copies. Replaced all eleven unsupported copyright/rightsholder assertions with the gallery’s factual artist attribution and source record, and distinguished documented finished-print media from undocumented capture and production details in `research.md`.

Re-verified prior critique rounds: 2026-08-02 (the complete prior history). `scripts/check.sh` passed after these changes.
