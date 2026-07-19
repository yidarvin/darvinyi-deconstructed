verdict: resolved

## Critique round — 2026-07-18

### Required

1. **01-memphis-oven — source description conflicts with the photograph.** In `sources.md`, the “Why it matters” entry describes a red oven, circular burner pattern, and a diagonal handle. The rendered proof instead shows the dark interior of an open oven, organized by its cavity and rack planes; those claimed features are not visible. Replace this source-note description with one that matches the current image and the chapter’s accurate rack/cavity analysis.
2. **05-untitled-1974 — `TRUCK BED LINE` does not trace the named feature.** Its left and middle segments run across the cab/lower truck body and wheel area rather than the pickup bed’s visible edge. Redraw it along the bed edge or rename the primitive to the feature it actually follows.
3. **06-tennessee — `ENTRANCE DOOR` does not mark the door’s boundary.** The frame brackets a narrow central interior slice while omitting the clearly visible outer perimeter of the black entrance door. Redraw the frame to the door or relabel the smaller structure precisely.
4. **07-rosa-sleeping — two annotations name features they do not surround.** `LEFT ORGANIZER` frames the open closet/doorway rather than the hanging shoe organizer, and `BLUE TELEVISION` sits high on the blank wall while the television is lower at right. Move both frames to their named objects.
5. **10-untitled-grocery-store — two overlays and the matching prose misstate the visible composition.** `RIGHT FLUORESCENT RUN` begins in the black area outside the photographed print and does not trace the fixture for that segment. `CENTRAL SHOPPERS` encloses the foreground cart and empty aisle rather than the central pair; the chapter’s statement that the pair is enclosed is therefore also false. Reposition/relabel these primitives and revise the prose to match.
6. **11-untitled-car-wreck — `CAR AND ONLOOKERS` excludes almost all of the car.** The ellipse contains the onlookers but begins only at the car’s far right edge. Enlarge/reposition it to include the named car, or relabel it as the onlookers.
7. **12-baby-doll-cadillac — `CADILLAC EMBLEM` is materially high.** The ellipse is centered above the crest and catches only its upper edge. Move it down and/or resize it to surround the emblem.

### Advisory (non-blocking)

- **03-halloween-morton:** `CAST SHADOW` begins around the figures’ torso rather than at the visible feet/shadow origin. Its direction remains intelligible, but anchoring it at the origin would make the proof cleaner.
- `sources.md` says every downloaded image has a long edge of at least 843px, while the current manifest records several ingested files below that value. The current image set still clears the 640px floor; reconcile the wording on the next source-note pass.

### Audit notes

All twelve current proof/spec pairs were visually reviewed, and the deterministic scorer returned 100/100 with no warnings for each. The required findings above are semantic/placement errors that scoring cannot establish; all twelve source entries retain traceable public collection links, credits, and concise per-image fair-use rationales.

## Resolution — 2026-07-18

Applied all seven required fixes. The *Memphis* source note and overlay thesis now describe the open oven cavity and its two rack planes; the unrelated long-edge wording was also corrected. Re-rendered and visually checked the revised overlays for the truck bed edge, full entrance-door perimeter, shoe organizer, blue television, right fluorescent run, central shopper pair, car-and-onlookers group, and Cadillac emblem. Each revised spec scores 100/100 with no warnings.

Re-verified critique history: 2026-07-18 (the sole prior critique round). Its seven required findings all hold in the current source note, overlays, proofs, and synchronized grocery-store prose. `scripts/check.sh` passed before this verdict was set.
