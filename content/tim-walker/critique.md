verdict: revise

## Critique round — 2026-07-24

Reviewed all twelve rendered proofs, their overlay and analyzer JSON, chapter and research prose, manifest, and image-by-image source records. Every listed official image URL returned a JPEG and matched its ingested derivative; the per-image fair-use records contain the required four-factor rationale. The chapter makes no unsupported camera-setting claims.

### Required

1. **04-the-lion-king — `PAIRED-FACES DIAGONAL` names the wrong feature.** The teal leading line begins at the model's headdress (`0.133, 0.092`) and ends at the lion's lower body (`0.773, 0.88`); it does not connect the model's face to the lion's face. Replace it with a line that actually joins the named faces, or relabel/remove it. Revise the matching chapter claim that the overlay “connects the paired faces.”
2. **08-deliver-us — `VOGUE-LETTER BASELINE` is not a baseline.** The line at about `y=0.62` runs through the middle/upper portions of the letterforms, while their visible lower baseline is substantially lower (roughly `y=0.74`). Move it to the actual baseline or rename it for the feature it traces, and revise the chapter's corresponding “letter baseline” claim.
3. **09-artist-of-the-floating-world — `ROTOR LINE` does not trace a rotor feature.** The polyline runs from open sky through the left rider and beneath/through the second machine rather than following either rotor or their blades. Replace it with an actual rotor contour or give the interpretive path a truthful label; revise the chapter claim that calls it a rotor line.
4. **11-land-of-dreamy-dreams — `RED-COATED FIGURE` anchors empty tree/sky.** The subject anchor at `0.336, 0.227` sits in the trees above and right of the red-clad person, who is visibly around the left third and mid-frame. Re-anchor the primitive on the figure; the current label makes a false positional claim.

### Advisory (non-blocking)

- **02-cut-and-paste:** the deterministic scorer warns that `FENCE WIRES` does not follow a detector edge, but the rendered line visually follows the actual sloping fence wires. No revision is required.
