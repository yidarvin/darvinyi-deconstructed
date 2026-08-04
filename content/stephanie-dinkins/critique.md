verdict: resolved

## Critique round — 2026-08-03

### Required fixes

1. **`03-bina48-fragments-17-19-20-mocp` — correct the screen annotations.** In the proof, the three monitors occupy approximately x=0.18–0.35, x=0.35–0.59, and x=0.59–0.78. The spec instead labels the centre monitor `LEFT SCREEN`, the right monitor `CENTRE SCREEN`, and frames x=0.784–0.969 as `RIGHT SCREEN`; that final box lands on the blank wall and headphones. Its `CENTRE PORTRAIT` anchor (0.726, 0.318) is consequently on the right-hand monitor, not the centre one. Redraw and label the three actual screen frames (and name the portrait's actual monitor) so every primitive traces the named feature. The horizon at y=0.904 is accurate and does not need revision.

2. **Document or remove the MoCP attribution for `03-bina48-fragments-17-19-20-mocp`.** `sources.md`, `research.md`, and the Plate label call this a Museum of Contemporary Photography installation view. The cited artist page captions the supplied image only as *Conversations with Bina48: Fragments 17, 19 & 20*, “2020 (image only)”; its `mocp` filename is not a source record. Add a traceable MoCP source that identifies this image/view, or revise the venue claim to what the cited source establishes. The title and 2020 date are otherwise supported by the artist page.

3. **Make the per-image copyright/credit statements evidence-specific.** Each fair-use entry currently asserts `Stephanie Dinkins / © Stephanie Dinkins Studio`, while the cited artist pages provide artist attribution but no copyright notice for each of these files. The explicit `© Stephanie Dinkins Studio` notice is documented on the Whitney record for the related *Fragments 7, 6, 5, 2* work only. Preserve that notice where it applies; for the other five selections, either cite an applicable copyright notice or distinguish artist attribution from the work-specific Whitney notice. The fair-use factors and publicly reachable source URLs are otherwise present for all six images.

### Advisory (non-blocking)

- `02-bina48-fragments-7-6-5-2-icp`: the four screen boxes broadly trace the monitors, but the `LOWER SCREEN` anchor is positioned on the upper edge of the lower-right monitor and the repeated boxes read more as an inventory than a compositional argument. Consider simplifying or anchoring a pictured subject/viewer.
- `06-ntoo-making-process`: `STARTING PROMPT` marks “Getting started” rather than the heading above, and the `PROCESS LIST` frame excludes the visible “learn Tensorflow” line. Tightening those labels/bounds would make the teaching claim clearer, but the current overlay remains legible.

## Resolution — 2026-08-03

Re-verified critique round 2026-08-03 in full.

1. Re-rendered `03-bina48-fragments-17-19-20-mocp`. Its three labelled
   frames now trace the actual left, centre, and right monitors; the portrait
   anchor is on the right monitor and is labelled accordingly. Deterministic
   score: 97/100 (pass), followed by a clean visual pass.
2. Removed the unsupported Museum of Contemporary Photography attribution from
   the source notes, research note, and both byte-identical chapter copies. The
   2020 image is now described only as the artist page documents it.
3. Rewrote all six per-image fair-use credit statements: five distinguish artist
   attribution from the absence of a supplied work-specific notice; the Whitney
   record's “© Stephanie Dinkins Studio” notice is retained only for *Fragments
   7, 6, 5, 2*.

`bash scripts/check.sh` passed before this resolution was recorded.
