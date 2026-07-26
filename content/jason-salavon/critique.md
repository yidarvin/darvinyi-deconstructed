verdict: approve

## Critique round — 2026-07-26

### Required

1. **05-100-special-moments-little-leaguer — correct or remove `centered player contour`.** The polyline (`[.430,.250] → [.500,.400] → [.570,.660]`) runs through the softened face and torso rather than along a visible contour. A contour claim therefore misdescribes the image. Replace it with a feature that is visibly present, or relabel/use an explicitly interpretive primitive that accurately describes its path.

2. **07-the-loop-chicago — make the panel and lower-rhythm primitives trace the photographed lightboxes.** All three `frame_in_frame` boxes substantially include wall space or stop inside a panel: the left box begins around y=.34 while the lightbox begins about y=.43; the centre box begins above and left of its lightbox; and the right box ends above its base. The `shared lower-panel rhythm` polyline also crosses the panels' interiors rather than their lower edges. Reposition these to the visible panel boundaries/base edges, or remove the inaccurate claims.

3. **08-american-varietal-us-population — correct the mural boundary and lower-rail claims.** The `multi-panel mural` rectangle at y=.26 does not trace the perspective-sloping top edge (about y=.25 at left and y=.10 at right), leaving the upper-right mural outside its stated frame. The `mural lower rail` at y=.600 lies inside the coloured field, visibly above the lower rail (about y=.65–.68; analyzer dominant horizontal y=.671). Use primitives that trace the actual perspective geometry, or omit/relabel these claims.

4. **12-automatic-pattern-for-you — replace or remove the two `leading_line` rhythm claims.** `upper-row rhythm` (y=.360) and `lower-row rhythm` (y=.640) run through the centres of the framed works, not along a visible edge or contour as a `leading_line` asserts. The row alignment can be taught with an explicitly interpretive path/label, but the present primitive type and wording are materially misleading. The scorer independently flags both lines as unsupported (score 88).

### Advisory (non-blocking)

- **01-golem-printer:** the two paper-edge lines read as the intended roll boundaries, but their endpoints sit slightly inside those boundaries; the scorer also warns that the right line has no detected edge match (score 94). Tightening them would improve clarity, but this is not a blocking semantic error.
- **04-100-special-moments-newlyweds:** `paired face contour` is a broad V-shaped cue between diffuse face masses rather than a literal continuous facial edge. It still directs attention to the correct paired masses; consider wording it as a relationship rather than a contour.
- **11-good-and-evil-12:** the shared-baseline line is visually defensible as an alignment across the diptych even though it crosses the wall gap and is not detected as one continuous edge (score 94).

### Checked without finding a required issue

All twelve proofs were visually inspected against their specs and analysis. The remaining overlays are materially truthful and use a teachable 3–5-primitives scale. Chapter tonal/palette/edge-density figures match the corresponding analyzer values within tolerance. The chapter does not invent camera settings; it explicitly confines the one delivery-file EXIF record to its installation rendition. Every displayed item has an official-archive source, artist credit/copyright notice, direct public rendition URL, and the shared plus item-specific fair-use rationale required for this critical use.

## Builder resolution — 2026-07-26

Re-verified critique history: the 2026-07-26 critique round (the only prior round).
All four numbered requirements remain satisfied after the full resolution pass:

1. `05-100-special-moments-little-leaguer` now labels the vertical line as an
   explicitly interpretive `centered pose axis`; it no longer claims a visible
   contour. The paired ellipses retain the only broad figure claims.
2. `07-the-loop-chicago` replaces rectangular brackets with perspective-aware
   lightbox-perimeter polylines and traces the photographed lower edges as a
   stepped path.
3. `08-american-varietal-us-population` replaces the rectangular mural claim
   with its sloping perimeter and moves the lower rail to the visible
   y=.650–.680 boundary.
4. `12-automatic-pattern-for-you` changes both unsupported `leading_line`
   claims to explicitly interpretive upper- and lower-row alignment paths.

The affected images were re-analysed, rendered, visually checked, and scored
at 100, 100, 94, and 100 respectively (all above the 80 threshold). The
94-point mural score retains only a non-blocking detector warning for the
visually verified lower rail. `scripts/check.sh` passed, including the
content/site chapter byte-identity gate.

## Critique round — 2026-07-26

### Required

None. All twelve current proofs were visually checked against their overlay
specifications and analyzer evidence. The four requirements from the preceding
round remain resolved: the Little Leaguer centreline is explicitly interpretive;
the Loop and American Varietal perimeter/edge paths trace the visible installation
geometry; and the Automatic Pattern paths are truthfully described as row
alignments. No resolved point has materially regressed.

The chapter's tonal, palette, and edge-density measurements match the associated
analyzer JSON within the stated tolerance. It makes no production-camera claim.
Each displayed image has a reachable official-archive work page and public PNG
rendition, an accurate Jason Salavon credit/copyright notice, and item-specific
four-factor fair-use reasoning appropriate to the complete web-scale frame.

### Advisory (non-blocking)

None newly observed. The prior round's advisories remain non-blocking and do not
misstate the pictured composition.
