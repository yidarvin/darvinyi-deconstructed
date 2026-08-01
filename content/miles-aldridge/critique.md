verdict: approve

## Critique round — 2026-08-01

### Required fixes

1. **`04-a-precious-glam-2` — correct the false `RED PLATE` claim.** The ellipse encloses a white plate carrying a red dish; the plate itself is not red. Relabel the primitive to the actual feature (for example, `PLATE` or `RED DISH`) and keep the chapter language consistent with the corrected claim.

2. **`08-night-car-1` — remove or redraw the unsupported `WINDOW` frame.** Its top and side strokes float over neon and cropped picture areas instead of tracing a discernible window boundary in `proofs/08-night-car-1.png`. The `NEON MID-BAND` line at y=0.471 likewise bisects letters and the sitter rather than a continuous neon band. Remove either claim or replace it with primitives that trace the visible window/lights.

3. **`sources.md` — repair the image-specific fair-use rationales for `01-red-marks-1`, `02-like-a-painting-1`, `05-a-family-portrait-1`, `06-i-only-want-you-to-love-me-1`, and `09-the-promise`.** The current “Why it matters” and factor-three necessity text describe material that is not in the supplied proofs: respectively a red threshold/receding figure, a seated figure and chair, a dispersed domestic group, a telephone, and a tiny figure in a tall room. Replace these with the actual complete-frame relationships shown in the cited files (eggs/cigarette; profile/beads/butterflies; avenue pair/balloon; yellow figure/checkerboard/debris; cracked close portrait). These inaccurate accounts make the per-image fair-use documentation materially false even though the official links themselves resolve.

### Advisory (non-blocking)

- `02-like-a-painting-1`: tighten the opening segment of `PEARL ARC`; it begins left of the bead string and crosses hair/butterfly detail before joining the pearls.
- `09-the-promise`: `CRACK IMPACT` and `EYE-LINE CRACK` labels overlap at the impact point. Their geometry is truthful and the scorer passes, but separating the text would make the teaching annotation easier to read.
- `11-in-the-garden`: the `FACE` ellipse includes substantial hair, neck, and shoulder. A tighter face contour would be clearer, but the present claim still reads correctly.

### Verification notes

- All eleven proofs were visually inspected. The deterministic strict scorer reports 100/100 for every overlay; the required overlay findings above are semantic/visual, which the geometric scorer does not test.
- Every listed official work-record URL returned HTTP 200. No camera settings are invented: the manifest’s EXIF objects are empty and the chapter/research explicitly limit claims accordingly.

## Resolution — 2026-08-01

Re-verified required fixes from the complete critique history: the 2026-08-01
round (the only prior round).

1. `04-a-precious-glam-2` now labels the outlined food as `RED DISH`; its
   chapter paragraph likewise identifies a white dish containing red food.
2. `08-night-car-1` now retains only the visible blue neon tube and seated
   figure; the unsupported `WINDOW` frame and `NEON MID-BAND` have been
   removed. The fresh rendered proof was visually checked and the strict
   deterministic score is 100/100.
3. The five corrected source records now describe the complete-frame
   relationships actually present in their files: eggs/cigarette;
   profile/beads/butterflies; avenue pair/balloon; yellow
   figure/checkerboard/debris; and cracked close portrait. Each retains its
   image-specific factor-three necessity and non-substitution rationale.

`04-a-precious-glam-2` was also freshly rendered, visually checked, and scored
100/100 in strict mode. The updated chapter is byte-identical to
`src/chapters/miles-aldridge.mdx`.

## Critique round — 2026-08-01

### Required fixes

None.

### Advisory (non-blocking)

- `09-the-promise`: the `CRACK IMPACT` and `EYE-LINE CRACK` labels still
  overlap at the impact point. As noted in the prior round, both primitives
  accurately trace the fracture and the overlap does not change the reading.
- `11-in-the-garden`: the `FACE` ellipse remains broad enough to include hair,
  neck, and shoulder. Its claim remains visually clear; a tighter contour is
  optional.

### Verification notes

- All eleven current proofs were visually reviewed against their overlay specs.
  The resolved `04-a-precious-glam-2` and `08-night-car-1` corrections remain
  materially truthful; no resolved finding regressed.
- The chapter's quoted tonal, edge-density, palette, horizon, and crack-impact
  values agree with the matching current analysis files within the stated
  tolerance. The manifest has no camera EXIF and the chapter makes no invented
  technical-setting claim.
- Every cited official work-record URL and public display-file URL resolved
  successfully. Each selection retains an image-specific fair-use explanation
  of the complete-frame necessity and non-substitution rationale.
