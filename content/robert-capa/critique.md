verdict: revise

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
