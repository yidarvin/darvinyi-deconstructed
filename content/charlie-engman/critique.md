verdict: revise

## Critique round — 2026-07-27

### Required

1. **`06-mom-on-the-ground-2` — remove or replace the `symmetry_axis` primitive and bring the accompanying sentence into the same truthful reading.** The teal vertical line at x0.438 is labelled “FOLDED BODY BALANCE,” but `symmetry_axis` asserts that the frame mirrors across that line. The visible curled pose is asymmetrical; the line passes through it without identifying a mirror structure. Use an appropriate subject/contour or balance claim instead, and revise the chapter's “near-vertical bodily balance” wording if necessary so it does not rely on an unsupported symmetry reading.
2. **`11-mom-05` — redraw the `frame_in_frame` for “BILLBOARD PORTRAIT” to the actual billboard, or replace it with a truthful primitive.** The current bracket (`x: 0.47, y: 0.20, w: 0.39, h: 0.44`) encloses a broad section of factory façade and misses the lower portion of the sign. It therefore does not trace the internal billboard frame its label names.

## Builder resolution — 2026-07-27

1. `06-mom-on-the-ground-2`: replaced the unsupported vertical `symmetry_axis` with an `outstretched arm contour` polyline aligned to the visible arm, and revised the matching sentence in both chapter copies. The rendered proof is visually clean and scores 100/100.
2. `11-mom-05`: redrew `BILLBOARD PORTRAIT` as the actual rounded sign (`x: 0.531`, `y: 0.382`, `w: 0.151`, `h: 0.354`), including its lower extent rather than the factory façade. The rendered proof is visually clean and scores 100/100.

Re-verified prior critique rounds: 2026-07-27 (the complete critique history). Both required fixes hold; the chapter copies are byte-identical, and `scripts/check.sh` passed.

### Advisory (non-blocking)

- The remaining proofs visually trace their labelled features, and their matching overlay specs score 100/100 against the current analyses. Some analyzer-supported horizon and convergence labels are necessarily interpretive, but none materially misstates the visible composition.
- All twelve source entries identify a public institutional record, creator credit, rights notice/context, and a concise image-specific four-factor fair-use rationale. The chapter and research notes correctly decline to infer camera settings from the normalized web files.

## Critique round — 2026-07-27

### Required

1. **`03-extended-producer-responsibility` — replace the `symmetry_axis` labelled `SEATED BALANCE` with a primitive that makes the claim actually visible, and revise the matching chapter sentence.** A `symmetry_axis` asserts that the frame mirrors across x0.537; the proof instead shows a seated figure amid markedly unequal printed textile, goods, and drapery on either side. The vertical mark can support an interpreted balance only if it is expressed with a non-mirroring primitive. The chapter's “loose vertical balance around x0.537” currently repeats the unsupported symmetry reading.
2. **`05-projection-mapping` — remove or redraw the canopy claims, then bring the chapter prose into line.** The `SUSPENDED CANOPY` polyline (`[0.07,0.21] → [0.49,0.11] → [0.92,0.22]`) follows overhead sky/wires as a peaked triangle rather than the visible sagging cloth canopy. The `CANOPY CONVERGENCE` marker at x0.509, y0.376 lies on dark drapery rather than a visible canopy convergence. The chapter relies on that marker as evidence, so it must be corrected or omitted together with the misleading primitives.
3. **`09-mom-03` — redraw `DOUBLE-SIDED BILLBOARD` to the visible sign.** Its current `frame_in_frame` begins at y0.250, well above the billboard's top edge, enclosing a large area of factory façade before reaching the sign. This is outside the endpoint tolerance and contradicts the chapter's statement that the overlay contains the double-sided object.
4. **Document all four fair-use factors for every image in `sources.md`.** Each current image-level use-basis entry establishes transformative criticism/scholarship (factor 1), why the complete frame is needed (factor 3), and why the web-sized use is non-substitutive (factor 4), but omits an assessment of the creative nature of the underlying work (factor 2). Add a concise, accurate factor-2 assessment per image; for the CONTACT records, state the displayed rights/copyright context precisely as well (including if no notice is displayed), rather than treating artist identification alone as a rights notice.

### Advisory (non-blocking)

- `10-mom-04`'s `BILLBOARD PORTRAIT` bracket is slightly inset at the top/edge but remains recognizably on the rounded sign and is within the approximate 2% endpoint margin; it does not block approval.
- The prior fixes for `06-mom-on-the-ground-2` and `11-mom-05` remain in place: the arm contour and corrected billboard frame each trace the labelled feature. No settled finding is reopened.
