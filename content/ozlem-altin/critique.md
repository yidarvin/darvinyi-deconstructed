verdict: revise

## Critique round — 2026-08-02

### Required

1. **05-untitled-alignment-blessing** — Replace the `frame_in_frame` primitive labelled `ORANGE PAINTED FIELD`. The inset rectangle (`x: 0.03, y: 0.12, w: 0.94, h: 0.72`) does not follow an internal frame or a bounded orange field: its top, side, and lower segments float across uninterrupted painted passages. A `frame_in_frame` asserts a real internal frame, so this materially misstates the pictured structure. Remove it or use primitives that trace only real features.

2. **06-our-light-is-a-voice-i** — Replace the inset `frame_in_frame` labelled `VIOLET PANEL`. Its rectangle (`x: 0.12, y: 0.08, w: 0.76, h: 0.84`) crosses painted figures and does not correspond to an internal panel boundary in the proof. Remove it or substitute truthful primitives; do not describe the whole painted field as an inset frame.

3. **10-psyche-grow-deep-installation** — Remove or replace the `symmetry_axis` at `x: 0.375`, labelled `COURTYARD BALANCE`. The proof is an asymmetrical courtyard and does not mirror across this axis; the primitive type itself claims bilateral mirroring. Retain the valid convergence and roof-corner claims, but replace this with a feature that visibly exists if a third teaching primitive is needed.

### Advisory (non-blocking)

- **02-fountain** — The `DARK LOWER KNOT` anchor is centered on the bright blue-green/iridescent portion of the lower cluster. A more precise label or a small retargeting would improve legibility, but the broader lower-cluster reading remains clear.
- **07-our-light-is-a-voice-ii** — `MIDDLE PIGMENT BREAK` corresponds to the measured tonal split, but reads only weakly as a distinct pigment boundary. Consider a more literal label if revising the overlay.

All ten proofs were visually inspected against their corresponding specs and analysis. Deterministic overlay scoring reports 100/100 with no deductions for every image; the required findings above are semantic/visual failures outside that geometric scorer's scope. Source links, credits, documented per-image fair-use rationale, historical claims, and the chapter's settings disclaimer were also reviewed; no blocking issue was found there.

## Builder resolution — 2026-08-02

1. **05-untitled-alignment-blessing:** Removed the unsupported
   `frame_in_frame` for the orange painted field. The refreshed proof now
   makes only the supportable central hinge and central black-fragment claims.
2. **06-our-light-is-a-voice-i:** Removed the unsupported
   `frame_in_frame` for the violet panel. The refreshed proof retains only the
   measured middle pigment break and lower dark-figure anchor.
3. **10-psyche-grow-deep-installation:** Removed the false
   `symmetry_axis`. The refreshed proof retains the measured courtyard
   convergence and the visible right roof-corner anchor.

Re-verified critique history: the sole prior round, **2026-08-02**, including
every required correction. Re-analyzed, rendered, visually checked, and scored
all three affected overlays; each scores 100/100 with no deductions. The
chapter remains byte-identical at `content/ozlem-altin/chapter.mdx` and
`src/chapters/ozlem-altin.mdx`.

## Critique round — 2026-08-02

### Required

1. **01-echo** — Remove or replace the `frame_in_frame` labelled `PAINTED
   PANEL`. The rectangle at `x: 0.14, y: 0.10, w: 0.72, h: 0.80` floats over
   the continuous painted image and does not trace an internal frame or a
   bounded panel. The work's outer edge is visible elsewhere; this inset is
   neither that edge nor a depicted internal boundary. A `frame_in_frame`
   asserts an actual internal frame, so the primitive materially misstates the
   photographed structure.

2. **07-our-light-is-a-voice-ii** — Remove or replace the
   `frame_in_frame` labelled `VIOLET PANEL`. Its inset rectangle
   (`x: 0.12, y: 0.08, w: 0.76, h: 0.84`) crosses the continuous painted field
   and both reproduced figures without following a visible panel boundary.
   The label describes the overall field, not an internal framed feature; this
   is therefore a false structural claim.

3. **09-pulse-and-grief-encapsulated-reactivated** — Remove or replace the
   `frame_in_frame` labelled `PANORAMIC PAINTED FIELD`. The near-full-frame
   inset (`x: 0.01, y: 0.10, w: 0.98, h: 0.78`) cuts through the red field and
   does not follow any internal frame. It names the work's overall painted
   field as though it were an inset structure, which is materially misleading.

### Advisory (non-blocking)

None. The three fixes resolved in the previous round remain resolved: the
unsupported inset frames on 05 and 06 and the false symmetry axis on 10 have
not regressed. All ten current proof/spec pairs score 100/100 under the
deterministic scorer; the required findings above are semantic failures outside
that scorer's geometric deductions. The chapter's measured claims agree with
the current analyses, its settings disclaimer avoids invented camera data, and
the ten per-image fair-use records provide linked sources, credits, and
four-factor rationales. Public source and image routes sampled from THE PILL,
Istanbul Modern, and the Berlin Biennale returned successfully.
