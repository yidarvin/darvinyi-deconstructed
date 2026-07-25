verdict: revise

## Critique round — 2026-07-25

### Required

1. **03-gestures-and-reenactments — correct the ordinal anchor.** The
   `subject_anchor` at `(0.227, 0.348)` is visually on the second framed body,
   while its label says `FIRST CROPPED BODY`. The analyzer supports that
   coordinate as the salient body area, not as the first unit. Move the anchor
   to the first panel or rename the label so the serial-position claim is true.

2. **06-guarded-conditions — make `CENTRAL FIGURE UNIT` trace one unit.** The
   `frame_in_frame` from `x=0.43` to `0.58` straddles the adjacent central
   figure panels instead of enclosing a single panel. Set its bounds to one
   visible figure unit, or relabel it as the relationship it actually traces.

3. **10-untitled-two-necklines — fit the circular-crop ellipses.** The two
   ellipse specs (`rx=0.16`, `ry=0.14`) render visibly flattened and oversized
   against the circular black crop boundaries. Refit each ellipse to its named
   circular crop; the present outlines trace surrounding white space rather
   than the crop edges.

4. **12-easy-for-who-to-say — refit `REPRESENTATIVE PORTRAIT PANEL`.** The
   frame from `(0.06, 0.05)` to `(0.24, 0.60)` begins inside the first panel,
   spills into its gutter, and stops well above the panel bottom. Its label
   claims a portrait panel, so it must trace the panel boundary (or be renamed
   to the smaller region actually marked).

### Advisory (non-blocking)

- **04-five-day-forecast:** the `FOURTH IMAGE UNIT` anchor sits close to that
  panel's right edge. It still identifies the fourth unit, but centering it
  would make the ordinal reading more immediate.
- **07-kid-gloves:** the `FIVE PHOTO FRAMES` line crosses the figures rather
  than a shared frame edge. The serial row remains clear.
- **09-three-seated-figures:** `THREE PORTRAIT TOPS` sits at the shoulder/upper
  torso level rather than the literal top edges; it still communicates the
  repeated alignment.

### Verified in this round

All twelve proofs were visually reviewed against their overlay and analyzer
JSON. The chapter's reported tonal and edge-density values match the analysis
files within the stated rounding tolerance. Sources are traceable public
artist-archive display files (all twelve returned HTTP 200 during this review),
with per-image fair-use rationale and credit; no camera settings are invented.
