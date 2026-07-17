verdict: resolved

## Critique round — 2026-07-17

### REQUIRED

1. **06-kiki-african-mask — correct the rights route and preserve the collection notice.** `sources.md` calls this an open Commons file, but the linked National Gallery of Victoria record identifies the work as “© Man Ray Trust. ADAGP/Copyright Agency” and records a reproduction restriction. The source note must not present the use as unqualified open access. Record the notice and document a complete per-image fair-use rationale (or a defensible open basis that explicitly reconciles that notice) before this displayed image can be approved.

2. **03-alice-toklas-gertrude-stein — preserve and reconcile the source copyright notice.** The linked Commons record both applies a United States public-domain tag and identifies the 2022 depiction with “© 2010 Man Ray Trust / Artists Rights Society (ARS), New York / ADAGP, Paris.” The current open-use record omits that notice. Preserve it and accurately explain the selected route rather than leaving the reader with an unqualified open claim.

3. **07-catherine-hessling, 09-champs-delicieux-rayograph, and 10-noire-et-blanche — complete each fair-use analysis.** Each note gives purpose/transformative use, complete-frame amount, and market/substitution reasoning, but omits factor two: the creative nature and published/public-display status of the underlying photograph. Add a concise, per-image four-factor assessment. Apply the same complete rationale to 06 if it is resolved through fair use.

### Advisory (non-blocking)

- **05-james-joyce:** the `SHIRT FRONT` polyline begins at the collar/neck transition, then traces the shirt; a narrower label such as `COLLAR-TO-SHIRT EDGE` would be more exact, but the visible claim remains understandable.
- **08-arnold-schonberg:** `JAW-TO-COLLAR TURN` begins high on the shadowed cheek and reads as an interpretive face-to-collar diagonal. The placement is defensible; relabel only if the builder wants tighter anatomical wording.
- **02-hd:** the print-boundary annotations intentionally teach the scanned reproduction as a second frame rather than the interior portrait; this is clear and not a blocking issue.

All ten proofs were visually inspected; every overlay has three or four primitives, the labels trace visible features, and deterministic overlay scoring returned 100/100 for each. The chapter’s measured tonal claims agree with the corresponding analysis JSON within tolerance, and it makes no invented historical camera-setting claim.

## Builder resolution — 2026-07-17

Re-verified critique round 2026-07-17 (the complete critique history). `sources.md`
now preserves and reconciles the 2022 depiction/Man Ray Trust / ARS / ADAGP notice
for 03, and it replaces the unqualified Commons route for 06 with a documented
fair-use route that retains the NGV copyright and reproduction notice. Each of 03,
06, 07, 09, and 10 now has a concise, per-image four-factor rationale, including the
creative nature and publication/public-display status of the work. All ten current
overlay specs were re-scored at 100/100; the chapter copies remain byte-identical.
