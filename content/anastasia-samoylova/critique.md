verdict: approve

## Critique round — 2026-08-03

### Required

1. **04-pool-after-hurricane — HANDRAIL.** The `leading_line` from
   `(0.237, 0.285)` to `(0.860, 0.783)` follows the analyzer's dominant
   down-right water/reflection diagonal, not the physical metal handrail,
   which rises toward the upper right. Refit it to the rail or remove it;
   the current label makes a false compositional claim.
2. **04-pool-after-hurricane — FLOATING LEAVES.** The `subject_anchor` at
   `(0.420, 0.429)` sits on the metal rail rather than on a defined cluster
   of leaves. Move it to the leaves it names, or rename/replace the
   primitive so that it identifies the feature actually marked.
3. **09-gun-shop-port-orange — SECOND GUN SIGN.** The horizontal polyline at
   `y=0.610` runs below the second rifle silhouette, across blank façade.
   Place it on the weapon sign or replace it with a primitive that accurately
   marks that sign.
4. **09-gun-shop-port-orange — MINT FACADE.** The `frame_in_frame` begins at
   `y=0.380`, in the sky above the sloping roof, and stops short of the
   building on the right. It does not bound the facade named by its label;
   correct the boundary or omit the primitive.
5. **10-road-destroyed-by-hurricanes — ROAD EDGE.** The polyline follows the
   painted centerline/pavement interior rather than either visible road
   boundary. Reposition it to a real road edge or remove the redundant claim.
6. **11-real-estate-advertisement-moscow — ADVERTISEMENT DIVIDE.** A
   `symmetry_axis` asserts mirrored structure, but the billboard image is
   visibly asymmetric; the chapter itself correctly says it is not a claim of
   bilateral symmetry. Replace it with an appropriate primitive for the panel
   divide or remove it.
7. **12-female-lead-times-square — ESCALATOR RAIL.** The polyline sits
   materially below the visible escalator handrails, crossing lower
   signage/reflection instead. Refit it to a rail or relabel it to the feature
   it actually traces.

### Advisory (non-blocking)

- **01-gator — SUSPENDED LIMB.** The polyline is a loose gesture through
  negative space for part of its route. Tightening it to the silhouette or
  omitting it would make the teaching point cleaner.
- **06-construction-normandy-shores — MESH DIAGONAL.** The two aligned,
  same-named leading lines make nearly the same claim. One would be clearer,
  though both identify real mesh structure.
- **09-gun-shop-port-orange — ROOF EAVE.** The labeled line more nearly traces
  the upper roof line than the lower eave; a label refinement would improve
  precision.
- **11-real-estate-advertisement-moscow.** The `PANEL SEAM` horizontal and
  billboard frame's lower edge are near-duplicate visual claims; simplification
  would reduce clutter.

### Audit notes

All twelve rendered proofs were visually reviewed against their specs and
analysis files. The chapter's measurable tonal and palette statements match the
analysis values, it makes no unsupported camera-setting claim, and the twelve
itemized fair-use records include attribution, source links, whole-frame
pedagogical need, transformative purpose, and non-substitution rationale. All
fifteen cited artist-project and direct-JPEG endpoints returned HTTP 200 during
this review.

## Builder resolution — 2026-08-03

Re-verified prior critique round: **2026-08-03** (the only prior round in
`git log -p -- content/anastasia-samoylova/critique.md`). Every required item
from that round now holds against the current overlay JSON and rendered proof:

1. **04-pool-after-hurricane — HANDRAIL / FLOATING LEAVES.** Refit the
   `HANDRAIL` leading line to the rising metal rail, including its bend at the
   upper right. Removed the falsely placed `FLOATING LEAVES` subject anchor;
   the remaining `WATER FIELD` ellipse makes the leaf-covered pool surface
   without pretending to isolate a particular cluster.
2. **09-gun-shop-port-orange — SECOND GUN SIGN / MINT FACADE.** Moved the
   second-gun polyline up onto the silhouette and removed the inaccurate
   rectangular facade bound. The related advisory was also corrected by
   renaming the actual traced line `UPPER ROOF EDGE`.
3. **10-road-destroyed-by-hurricanes — ROAD EDGE.** Removed the polyline that
   traced the painted centerline while claiming to be a road edge; the true
   `CENTERLINE` and measured recession point remain.
4. **11-real-estate-advertisement-moscow — ADVERTISEMENT DIVIDE.** Replaced
   the false `symmetry_axis` with a vertical `ADVERTISEMENT DIVIDE` polyline
   on the physical panel seam. The near-duplicate horizontal seam was removed
   as the related advisory simplification.
5. **12-female-lead-times-square — ESCALATOR RAIL.** Refit and renamed the
   polyline to `ESCALATOR HANDRAIL`; it now follows the upper visible rail
   rather than the lower signage/reflection.

Fresh analyses, rendered proofs, and overlay scoring were run for all five
affected plates. Scores are 94 for 04 (a semantic rail line, visually verified)
and 100 for 09–12; all meet the 80-point gate with clean visual passes.

## Critique round — 2026-08-03

### Required

None. I re-reviewed all twelve current proof PNGs against their overlay specs,
analysis files, chapter, research note, manifest, and per-image source records.
The seven requirements from the preceding 2026-08-03 round remain resolved:
the pool handrail follows the metal rail; the false floating-leaves anchor is
absent; both gun-sign paths sit on their silhouettes; the road spec labels only
its true centerline; the Moscow divide follows the physical panel seam; and the
Times Square handrail follows the escalator rail. No material regression was
found. The chapter's measurable rendition claims agree with the recorded
analysis, it makes no camera-setting claim, and all twelve fair-use records
retain a source link, credit, complete-frame teaching need, transformative
purpose, and non-substitution rationale. The three cited project records
returned HTTP 200 in this review.

### Advisory (non-blocking)

- **01-gator — SUSPENDED LIMB.** The interpretive polyline remains a loose
  gesture through negative space for part of its route, but it unambiguously
  relates the named submerged limb and does not make a false structural claim.
- **04, 09–11.** A few bold prose references preserve labels from before the
  prior resolution (for example, `FLOATING LEAVES` and `ROAD EDGE`) although
  the relevant visible features remain accurately described. Aligning that
  wording with the current specs would be clearer, but it is not materially
  misleading.
