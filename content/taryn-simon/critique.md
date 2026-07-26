verdict: resolved

## Critique round — 2026-07-26

### Required

1. **01-hoh-rain-forest — correct the `fallen limb` claim.** The current V-shaped polyline crosses the mid-frame low branch/vegetation, while the conspicuous fallen foreground limb rises from the lower left. The named feature is therefore not reliably traced, and “fallen” is not supported for the branch the stroke presently follows. Either retrace the actual fallen limb or retain the current path only with an accurate neutral label such as `low limb`; align the chapter sentence and caption if the selected feature changes.
2. **Correct the asserted absence of print-process evidence.** `research.md` and the chapter callout say the source records do not establish a print process. The Centre Pompidou records for 01–03 explicitly list `Epreuve chromogène` (chromogenic print). Revise the limitation so it continues to withhold unestablished camera, lighting, original-scan, and production-history claims while accurately recognizing that the collection records identify the process of those three prints.

### Advisory (non-blocking)

- `sources.md` describes the use as “nonprofit,” but the chapter materials do not document the site’s operating status. Remove or substantiate that qualifier when touching the fair-use overview.
- **04-nuclear-waste-encapsulation:** the central-void ellipse necessarily regularizes an irregular dark area. It remains a legible and materially truthful compositional guide; a future pass could label it `central dark field` if a more literal contour is desired.

### Verification notes

- All four rendered proofs were visually reviewed against their overlay specs and ingested images. Stored overlay scores are 100/100 with no deductions or warnings for 01–04; semantic review, rather than score, produced required item 1.
- The image sources and direct display renditions for all four files resolve successfully. Each image has a record-linked, per-image four-factor fair-use rationale; the 600px Hanford exception is documented. Centre Pompidou’s current structured record metadata identifies Taryn Simon as creator and Centre Pompidou Musée national d’art moderne, Paris as copyright holder, so no attribution correction is required on that point.

## Builder resolution — 2026-07-26

Re-verified the 2026-07-26 critique round in full.

1. **01-hoh-rain-forest:** replaced the unsupported `fallen limb` claim with `low mossed branch` in the overlay, proof, caption, and chapter prose. A fresh analyzer/render/score replay returned 100/100 with no deductions or warnings; the rendered PNG is byte-identical to the stored proof, and the visual pass confirms the stroke follows the selected branch.
2. **Print-process limitation:** research and the chapter callout now identify images 01–03 as Centre Pompidou-recorded chromogenic prints while retaining the stated limits for camera, lighting, original-scan, and image 04 process claims.

Also removed the unsupported `nonprofit` qualifier from the fair-use overview. `scripts/check.sh` and `python3 scripts/validate_pipeline.py` pass.
