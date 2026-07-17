verdict: approve

## Critique round — 2026-07-17

### Required

1. **02-anzio-landing — false tether annotation.** In `proofs/02-anzio-landing.png`, the polyline labelled `BALLOON TETHER` is drawn inside the balloon silhouette (`[0.42,0.56]` → `[0.40,0.30]`), not on the visible tether descending toward the shore. Reposition it to the actual tether or replace it with a truthful, pedagogically useful primitive. Update the matching “tether dropping to the shore” prose in `chapter.mdx` if necessary.

2. **09-chain-bridge-budapest — two leading lines do not trace their labels.** In `proofs/09-chain-bridge-budapest.png`, the lines labelled `LEFT CRANE BOOM` and `LEFT PLATFORM EDGE` run through open water rather than along the named boom and platform edge. Correct or replace both primitives, then make the related chapter claim agree with the repaired overlay.

3. **10-altalena-tel-aviv — detector line is mislabeled as a sea horizon.** The `y: 0.237` line crosses the ship itself; it is not a visible sea horizon in `proofs/10-altalena-tel-aviv.png`. Remove or recast that primitive and revise the repeated `sea horizon` assertion in `chapter.mdx`.

4. **11-weymouth-landing-craft — subject anchor misses the named subject.** `RIGHT-HAND SOLDIER` is anchored at `x: 0.992`, essentially on the cropped frame edge, rather than on the clearly visible right-hand soldier. Move the anchor onto its intended subject or relabel it truthfully.

5. **Correct materially false source-note descriptions.** `sources.md` describes 02 as repeated landing-craft ramps and packed bodies rather than the visible barrage balloon; 03 invents a standing officer, tabletop model, and triangular arrangement instead of the gathered heads over a map; and 10 calls the ship isolated on a largely empty coast despite the dense shore crowd. Rewrite all three `Why it matters` entries to match their current images and the chapter’s own accurate readings.

6. **09-chain-bridge-budapest — open-rights route is unsubstantiated for U.S. use.** The linked Commons record provides a life-plus-70 public-domain rationale but explicitly says a U.S. public-domain tag is also required; the current record supplies none. Do not represent this image as `open` for this U.S.-based publication until an applicable U.S. route is documented; otherwise document the per-image fair-use route required by the project policy.

7. **11-weymouth-landing-craft — license/credit record is incomplete.** The linked Commons record labels the underlying photograph public domain but separately licenses the hosted scan under CC BY-SA 2.0. Record the scan’s attribution and share-alike conditions accurately in `sources.md`; the current wholly-public-domain wording omits that material license information.

### Advisory (non-blocking)

- **04-face-in-the-surf:** the `BODY EMERGING FROM SURF` polyline crosses the figure instead of cleanly following a contour. It remains legible beside the accurate tilted horizon and subject ellipse, so this is not a gate.
- The source overview should avoid calling all downloaded Commons files “originals”: 10 retains later iPhone reproduction EXIF and 11 is explicitly a scan. “Hosted source files” would be more precise.

### Verification notes

- All eleven proof PNGs were inspected. Every current spec scored 100/100 against its paired analyzer JSON, but the visual semantic failures above remain blocking.
- The chapter contains no invented historical camera settings; it explicitly limits itself to unverified-record disclaimers.
- All eleven local image, overlay, analysis, proof, and source-record links are structurally present. The unresolved source-route and license inaccuracies above prevent approval.

## Builder resolution — 2026-07-17

Re-verified prior critique rounds: **2026-07-17** (the sole prior round in `git log -p -- content/robert-capa/critique.md`). Every required finding from that round remains satisfied in the current artifacts.

1. Removed the false 02 balloon-tether polyline and its matching prose claim; the proof now limits itself to the visible balloon and shore-and-water band.
2. Removed the two untruthful 09 leading lines and revised the chapter so it no longer asserts that either traces the construction geometry.
3. Removed the false 10 sea-horizon primitive and its repeated prose assertion.
4. Moved the 11 subject anchor onto the right-hand soldier's helmet. It scores 90.9/100: the remaining deduction is the detector preferring a crop-edge saliency signal, while visual inspection confirms the named subject is correctly marked.
5. Rewrote the inaccurate 02, 03, and 10 source-note descriptions to match the visible photographs.
6. Reclassified 09 as a documented per-image fair-use use, including purpose, nature, amount, market-effect, credit, and U.S. public-domain limitation.
7. Recorded 11's separate hosted-scan CC BY-SA 2.0 attribution and share-alike conditions.

Validation: re-rendered and visually inspected all four affected proofs; their deterministic overlay scores are 100, 100, 100, and 90.9 (threshold 80). `scripts/check.sh` passes, and `content/robert-capa/chapter.mdx` remains byte-identical to `src/chapters/robert-capa.mdx`.

## Critique round — 2026-07-17

### Required

None.

### Advisory (non-blocking)

- **Source-note redundancy:** the Commons file-page source links for every plate resolve and preserve the traceable source/credit record. The separately listed direct-file URLs for 04 and 05 currently return 404, so refresh those optional convenience links when their current upload URLs are available; this does not impair source traceability through the working Commons records.

### Verification notes

- Re-reviewed all eleven proof PNGs, paired overlay and analyzer JSON, chapter prose, research note, manifest, and source records. The seven required findings from the 2026-07-17 round remain resolved: 02 contains no tether claim; 09 contains no false crane/platform lines and uses the documented fair-use route; 10 contains no false sea-horizon claim; 11 anchors the visible right-hand soldier; the revised source notes and hosted-scan attribution are present.
- Deterministic re-scoring passes every overlay: 01–10 score 100/100; 11 scores 90.9/100 (above the 80 threshold). Its anchor is visibly on the named soldier's helmet; the scorer's 0.060 distance to a crop-edge saliency detection is not a semantic regression.
- No invented camera settings or material chapter/spec disagreements found. All image source pages resolve; 09 includes a per-image four-factor fair-use rationale and 11 identifies the separate CC BY-SA 2.0 hosted-scan conditions.
