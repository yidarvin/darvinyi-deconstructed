verdict: resolved

## Critique round — 2026-07-25

### REQUIRED

1. **`04-ajusco-girls` — replace the detector-driven claims that do not describe the spread.** The `spread gutter level` horizon at `y: 0.098` is a horizontal line across the upper page, while the visible gutter is the vertical white division at the center. The `left-page convergence` vanishing point (`0.207, 0.164`) lands over the left child's head/upper field, where the proof contains no converging perspective structure. The `left figure contour` line begins in empty lower-left ground and misses the figure's outline, and the `gutter-to-portrait route` runs from the upper left through the child to the gutter rather than tracing a visible route from the gutter to a portrait. These labels turn detector artifacts into claims about the photograph; replace them with 3–5 primitives that visibly trace the gutter and the actual page/figure relationships, or conservatively reduce the annotation.

2. **`07-ajusco-children` — correct the false ceiling-beam anchor.** The `subject_anchor` at `(0.507, 0)` labelled `ceiling-beam seam` is on the white inter-page gutter at the top of the spread, not on a ceiling-beam seam. The vertical `spread gutter` axis is defensible; remove or relocate and relabel this separate false anchor.

3. **`09-virgilio-sunlit-room` — remove or redraw three features that the proof does not support.** The `window lattice depth` vanishing point (`0.262, 0.384`) falls at the statue/window boundary with no visible convergence; the `window-frame diagonal` runs from the statue across the window rather than along a window frame; and the `sunbeam direction` line runs through the central panes instead of following the rays that emerge from the bright opening at far right. These are materially false compositional claims. Retain only primitives that visibly trace the window geometry, the actual rays, and/or the floor-light boundary.

4. **`10-virgilio-parade` — relocate the `altar and nave` anchor.** At `(0.314, 0.523)` the anchor is on the quotation page, over the Pedro Meyer credit, not in the cathedral photograph or on its altar/nave. It therefore labels text as architectural subject matter. Move it into the photo to the intended feature, or remove it.

### Advisory (non-blocking)

- `06-ajusco-men-portrait-pair`: the `ANIMAL LINE` label visually collides with the start of the adjacent `BRICK-YARD DIAGONAL` label. Both lines still read as the described relays through the animals and yard, so this is cosmetic only.

### Verified in this round

- All ten proof PNGs were visually reviewed against their matching overlay specs and analysis files. The deterministic scorer reports `100/100` for each; the required findings above are semantic visual failures that the geometry scorer cannot establish.
- The chapter's quoted palette values match the corresponding analysis JSON values, and it makes no camera-settings claims.
- Each of the ten used images has a cited museum or artist-archive source; all listed source and direct-rendition URLs returned HTTP 200 during this review. The fair-use entries provide the required critical purpose, complete-image necessity, creative-work consideration, web-sized amount, and non-substitution rationale.

## Resolution — 2026-07-25

1. `04-ajusco-girls` now marks the actual vertical spread gutter and the bounded
   right-page picture; it removes the false horizon, convergence, and figure-route
   claims.
2. `07-ajusco-children` retains the defensible page-number margin and spread
   gutter, with the false ceiling-beam anchor removed.
3. `09-virgilio-sunlit-room` now marks the window field, a visible raking beam,
   and the floor-light boundary; the unsupported vanishing point and diagonals
   are removed. The matching chapter sentence now uses those same terms.
4. `10-virgilio-parade` removes the false anchor from the quotation page.

Re-verified prior critique rounds: 2026-07-25 (the only prior round in this
slug's critique history). All four required fixes hold in the regenerated proofs.
The non-blocking label-collision advisory for `06-ajusco-men-portrait-pair` was
left unchanged to avoid altering an otherwise passing, semantically sound overlay.

Validation: each corrected overlay was re-analysed, rendered, visually checked,
and scored at least 80 (04: 90; 07, 09, 10: 100); `scripts/check.sh` passed.
