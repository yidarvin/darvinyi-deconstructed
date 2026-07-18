verdict: revise

## Critique round — 2026-07-17

### Required

1. **All image ids (01-winston-churchill through 10-jasper-johns) — complete the per-image fair-use rationale.** Each entry in `sources.md` identifies the copyrighted work and explains the transformative purpose, why the complete frame is needed, and the web-sized/non-substitutive use. It does not address the second statutory factor, the nature of the copyrighted work. The chapter's source policy requires a concise four-factor rationale for every fair-use image. Add an accurate, work-specific nature-of-work statement to each entry; do not alter the source, credit, or image merely to satisfy the documentation requirement.

### Advisory (non-blocking)

- None. All ten proof PNGs were visually checked against their overlay specs: every labeled primitive traces the named visible feature, and the overlays remain concise (three primitives each). The current analyzer/spec scorer reports 100/100 for every image. Chapter measurements and grid claims agree with their analyzer records within the stated tolerance, and the chapter properly declines to invent camera or printing settings.

## Resolution — 2026-07-17

- Resolved required fix 1: every image-specific fair-use assessment now states that the particular portrait is a highly creative, expressive studio work rather than a primarily factual record, and records that this second statutory factor weighs against the use. The existing assessment continues to document the transformative teaching purpose, why the complete frame is needed, and the web-sized, non-substitutive use.
- Prior rounds re-verified: 2026-07-17, required fix 1 and the accompanying visual/measurement findings. All ten current overlay specs score 100/100 under the strict scorer; chapter and rendered copies remain byte-identical; no camera or printing setting has been invented.

## Critique round — 2026-07-17

### Required

1. **`03-ernest-hemingway` — correct the inaccurate “Why it matters” description in `sources.md`.** It calls the sitter’s clothing a “heavy sweater” and describes a “dark ground,” while the current source-linked plate and proof show Hemingway in a light, short-sleeved shirt against a pale background. Replace it with a description of the actual displayed frame; do not change the source, credit, or fair-use assessment.
2. **`04-pablo-picasso` — correct the inaccurate “Why it matters” description in `sources.md`.** It describes a face emerging from a nearly black field and a faintly visible body, but the cited plate/proof visibly shows Picasso in a blue shirt leaning on a large painted vase. The source dossier must identify the composition it actually supplies.
3. **`07-georgia-okeeffe` — correct the inaccurate “Why it matters” description in `sources.md`.** The entry claims a direct face, hands, and draped fabric distributed in a vertical frame. The cited plate/proof instead shows a seated O’Keeffe in profile beneath antlers, looking toward the bright window. Update the description to match that image.
4. **`08-audrey-hepburn` — correct the inaccurate “Why it matters” description in `sources.md`.** It claims an elevated hand, a hand-to-face diagonal, and soft darkness; the source-linked proof is a handless left profile suspended against pale negative space with a dark collar. This is a material mismatch in the source record.
5. **`10-jasper-johns` — correct the inaccurate “Why it matters” description in `sources.md`.** It describes a sitter at the edge of wide black space, whereas the cited plate/proof visibly places Johns’ hand on his head before a large American flag. Describe the actual flag-field composition.

### Advisory (non-blocking)

- None. All ten current proof PNGs were visually checked against their overlay specs; every labeled primitive traces its named visible feature and each overlay remains a concise three-primitive teaching argument. The current analysis/spec scorer returns 100/100 for every image. Chapter luminance, percentile, edge-density, palette, and grid-fit statements agree with the corresponding analyzer records within tolerance. All ten Estate links returned HTTP 200, credits are consistent, each selection retains a concise four-factor fair-use rationale, and the chapter does not invent camera or printing settings.

## Resolution — 2026-07-17

- Resolved required fixes 1–5: corrected the “Why it matters” descriptions for Hemingway, Picasso, O’Keeffe, Hepburn, and Johns to identify the actual displayed compositions, without changing their sources, credits, or fair-use assessments.
- Prior rounds re-verified: the earlier 2026-07-17 fair-use nature-of-work fix remains present in all ten entries. The five corrected descriptions were checked against their current proofs; fresh deterministic analysis confirmed the recorded measurements, all ten strict overlay scores remain 100/100, and the visual pass confirmed each labeled primitive traces the named feature. Chapter/site copies remain byte-identical and continue not to invent camera or printing settings.
- Independent visual audit also clarified three non-geometric labels: Churchill’s path is explicitly an attention path, Hepburn’s collar anchor and face contour now sit on the named features, and Mandela’s line is explicitly an attention path.

## Critique round — 2026-07-17

### Required

1. **`03-ernest-hemingway` — redraw or relabel the `chair arm to shirt` polyline.** In the current proof, its first point (`0.210, 0.605`) lies on the sitter's upper-left shirt/shoulder area, not on the chair arm, which is visibly lower-left. The chapter also calls this a chair-arm route. Move the path so it traces the chair arm, or change the primitive and prose to the feature actually traced.
2. **`10-jasper-johns` — replace the `frame_in_frame` labeled `flag field`.** The box ends through uninterrupted flag stripes on its right and bottom sides; it does not trace an internal frame or bounded field. This makes the primitive's structural claim false. Remove it or replace it with a primitive that traces a real, visible flag structure, while retaining a concise teaching argument.
3. **`03-ernest-hemingway` — correct the fair-use necessity rationale in `sources.md`.** It still invokes “sweater texture” and a “black surround,” although the linked proof and the entry's already-corrected `Why it matters` show a light short-sleeved shirt against a pale ground. State why the complete displayed composition—face, shirt, chair arm, and pale ground—is needed instead.
4. **`08-audrey-hepburn` and `10-jasper-johns` — correct the fair-use necessity rationales in `sources.md`.** Hepburn's entry claims a hand-to-face diagonal and surrounding shadow where the proof has a handless profile, pale negative space, and dark collar. Johns's entry calls the counterweight a black field where the proof is visibly an American flag. Each per-image fair-use rationale must accurately identify the composition for which it asserts complete-frame necessity.
5. **Chapter-wide, including `03-ernest-hemingway` — remove or source unsupported venue, lighting, and direction claims.** The Estate's Hemingway record places the 1957 sitting at his home, Finca Vigía, while the source dossier calls the set “studio portrait” work with “theatrical key and rim light”; the research and chapter further make unrecorded claims about studio staging and direction. Those are historical/technical assertions, not measurements visible in a JPEG, and conflict with the chapter's own settings disclaimer. Recast them as visible observations (pose, selective highlights, dark/light contours, and setting as pictured), or cite evidence for each asserted circumstance.

### Advisory (non-blocking)

- `02-albert-einstein`: `look to hands` is a useful attention path but can read as a claim that Einstein's actual gaze is directed at his hands. `face-to-hands attention path` would make the intended viewer-routing claim clearer.
- `07-georgia-okeeffe`: the labeled `window seat` anchor correctly lands on the secondary counterweight, but a `subject_anchor` at an unoccupied seat is pedagogically ambiguous. A counterweight-specific label or a figure anchor would be clearer.

All ten proofs were visually reviewed and all ten current specs pass the deterministic scorer at 100/100. The remaining overlay primitives visibly trace their named features. Chapter measurement and grid-fit statements match the analyzer records, the source links returned HTTP 200, and no camera or printing setting is otherwise invented.
