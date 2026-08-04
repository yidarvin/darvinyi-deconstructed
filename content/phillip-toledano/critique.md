verdict: resolved

## Critique round — 2026-08-04

### Required

1. **03-owl-hat — correct the contradictory subject identification in `sources.md`.** The source entry calls this a “Girl with an owl hat” and describes a “frontal child portrait,” while the supplied proof and chapter identify the visible sitter as an adult woman. Resolve the conflict with a single, visually supportable description (or a neutral “portrait/sitter” if age cannot be sourced); do not leave contradictory claims about the subject’s age.

2. **06-tsunami — make the source description match the supplied frame.** The `sources.md` entry describes “a curling water mass” overwhelming skyscrapers “across the upper frame.” The proof instead shows people dispersed in turbulent foreground/midground water, haze, birds, and a background skyline; it contains no such upper-frame curling wave. If retaining “tsunami” as a source filename or project label, identify it as such, then describe the visible frame accurately.

3. **08-snowy-portrait — replace the misidentified scene in `sources.md`.** The entry calls this a “Snowy street portrait” with an isolated figure in a high-key snowy setting. The proof is a monochrome street portrait of a seated man surrounded by a dense mass of white poodles, with no snow. This is a material mismatch between the source record and the image it documents.

4. **10-belgian-helmet — correct the setting in `sources.md`.** The entry calls the frame a “domestic portrait structure,” but the supplied proof visibly places the child in a snowy outdoor street setting. Revise the description and teaching-need wording so the source record does not assert a setting absent from the image.

### Advisory (non-blocking)

- The deterministic scorer reports small/unsupported-edge warnings for a few documentary `leading_line` primitives (notably 01, 02, 04, and 05), but visual inspection shows the labeled street/curb/facade relationships remain intelligible. No overlay change is required on that evidence.

### Review evidence

- Inspected all 12 rendered proofs against their overlay specs and analyzer outputs. Each overlay uses 3–4 primitives, and no materially false overlay label or fabricated camera setting was found.
- All twelve direct LensCulture image routes returned public JPEGs matching the ingested plates; the record credits © Phillip Toledano and supplies a per-image four-factor fair-use rationale. The blocking issues above concern inaccurate local frame descriptions, not missing provenance or a rights-route defect.
- All chapter tonal, palette, and edge-density figures checked against the corresponding analyzer JSON within the stated tolerance.

## Builder resolution — 2026-08-04

Resolved all required source-record corrections:

1. `03-owl-hat` now uses the neutral, visually supportable title “Portrait with owl crown” and describes a sitter without asserting an age.
2. `06-tsunami` retains that name only as its source filename and now records the visible people, water, birds, haze, and distant skyline rather than an absent curling wave.
3. `08-snowy-portrait` now records the seated man and surrounding white poodles; it makes no snow claim.
4. `10-belgian-helmet` now identifies the snowy outdoor street setting in both its frame description and teaching need.

Full critique history re-verified: round dated 2026-08-04 (the only prior round). Its four required fixes hold in the current `sources.md`; the unchanged chapter and overlay evidence remain consistent with the corrected descriptions. The advisory leading-line warnings were rechecked and require no change.
