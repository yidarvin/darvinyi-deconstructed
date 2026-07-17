verdict: approve

## Critique round — 2026-07-17

### Required

1. **02-bricklayer — `SHOULDER LINE`:** The polyline crosses the lower brick course and the neck/brick gap rather than a visible shoulder contour. Its label therefore asserts a feature the line does not trace. Redraw it on an actual shoulder/load edge and rename it accurately, or remove it.
2. **03-proletarian-intellectuals — `LINKING ARM`:** The path begins away from the rear sitter's visible arm, then zigzags through the foreground grouping and across the right-hand sitter's face. Trim and redraw it to the real arm contour, or remove it.
3. **03-proletarian-intellectuals — `SHARED PORTRAIT FIELD`:** The `frame_in_frame` rectangle lies in blank background and does not correspond to an internal photographic frame. Remove it or replace it with a primitive that traces visible geometry.

The deterministic scorer returns 100/100 for all ten current specs, but the three findings above are semantic visual failures in primitive types that are bounds-checked rather than image-checked. The remaining proofs were visually reviewed; their labels trace visible features. The chapter's quoted tonal values match the current analyzer within tolerance, it invents no settings, and each selected work has a MoMA record, credit, and concise per-image fair-use rationale.

### Advisory (non-blocking)

None.

## Builder resolution — 2026-07-17

1. **02-bricklayer — `SHOULDER LINE`:** Removed the unsupported polyline rather than asserting a contour that crosses the brick course and neck gap. The retained body axis and accurately bounded `BRICK LOAD` frame describe the visible construction; the corresponding chapter sentence now refers only to the broad segmented load.
2. **03-proletarian-intellectuals — `LINKING ARM`:** Removed the false arm path. A `REAR SITTER` ellipse now traces the rear figure's actual face, paired with the existing `RIGHT-HAND FACE` ellipse.
3. **03-proletarian-intellectuals — `SHARED PORTRAIT FIELD`:** Removed the blank-background `frame_in_frame`; the chapter now describes the two face annotations and makes no claim of an internal photographic frame or connecting contour.

Re-ran the full analyze → render → visual-review → score loop for 02 and 03. Both revised specs score 100/100 (threshold 80) and passed visual review. Re-verified all prior required rounds from `git log -p -- content/august-sander/critique.md`: 2026-07-17 (the sole prior round); all three required fixes hold. `scripts/check.sh` passes.

## Critique round — 2026-07-17

### Required

1. **04-police-officer — `UNIFORM SILHOUETTE`:** The `frame_in_frame` rectangle is an imposed bounding bracket; it does not trace the uniform's irregular outer contour and there is no internal frame in the photograph. The label therefore makes a structural claim the primitive cannot support. Remove it or replace it with a primitive that traces a visible feature.
2. **06-member-of-parliament — `CLOAKED FIGURE`:** The near-full-height `frame_in_frame` is likewise a bounding rectangle around the sitter, not a depicted internal frame. It does not trace the cloak silhouette. Remove or replace it with a primitive that follows visible geometry.
3. **07-radio-secretary — `SEATED SILHOUETTE`:** The `frame_in_frame` only boxes the sitter; it is neither an internal photographic frame nor a trace of the seated silhouette. Remove or replace it with a truthful compositional annotation.
4. **10-young-woman — `RIGHT ARM`:** The polyline begins on the image-left/anatomical-right arm but then crosses the torso and continues along the other forearm/dress area. It cannot truthfully label one arm or support the chapter's claim of “one long arm.” Redraw it as a single-arm contour or change the claimed feature and chapter text to match.
5. **sources.md — mismatched visual descriptions:** Several “Why it matters” entries describe objects or framings absent from the supplied, linked images: **02-bricklayer** claims a hod, trowel, street, and low viewpoint; **05-match-seller** claims shop-window lettering and street depth; **06-member-of-parliament** claims a dark ground and cropped proximity; **08-painter-otto-dix** claims a narrow full body, brush, and vertical canvas; **09-otto-dix-and-martha** claims a domestic room; and **10-young-woman** claims a hat brim and coat. These are material false source notes for the selected files. Rewrite them from the current images while retaining the verified MoMA links, credits, and per-image fair-use rationales.

All ten specs score 100/100 in the deterministic scorer; the first four failures are semantic visual errors in primitives that are bounds-checked rather than semantically scored. The prior round's three resolved findings in 02 and 03 remain resolved and are not reopened. The chapter itself contains no invented camera settings. The ten MoMA record URLs, credits, and per-image four-factor fair-use rationales remain present; direct automated requests received MoMA's 403 bot response, which is not evidence of an untraceable or restricted acquisition route.

### Advisory (non-blocking)

None.

## Builder resolution — 2026-07-17

1. **04-police-officer — `UNIFORM SILHOUETTE`:** Replaced the imposed `frame_in_frame` with a vertical `FRONTAL AXIS` at x=0.5, which follows the photograph's genuinely frontal organization through cap, face, uniform closure, and body. The chapter now describes that compositional axis rather than a bracketed silhouette.
2. **06-member-of-parliament — `CLOAKED FIGURE`:** Replaced the near-full-frame rectangle with a `CAPE EDGE` polyline that follows the visible outer fall of the cape. The chapter now names the cape-edge line alongside the head, umbrella, and cloak relation.
3. **07-radio-secretary — `SEATED SILHOUETTE`:** Replaced the bounding rectangle with a `SHOULDER CONTOUR` polyline that follows the visible shoulder edge. The chapter now discusses the face, raised arm/hand, and shoulder contour, without treating the sitter as an internal frame.
4. **10-young-woman — `RIGHT ARM`:** Trimmed the cross-body polyline to the one visible forearm and renamed it `FOREARM`; the caption and prose now say “bent forearm,” not “one long arm.”
5. **sources.md:** Rewrote the six flagged visual descriptions directly from the supplied files: brick stack; doorway and step; hat, cloak, and umbrella; Dix's close profile; the two heads and shoulders; and the sleeveless seated woman with chair arm. MoMA links, credits, and per-image fair-use rationales are retained unchanged.

Re-ran analyze → render → visual-review → score for 04, 06, 07, and 10. Each revised overlay scores 100/100 (threshold 80) and passed visual review. Re-verified required fixes from every prior critique round in `git log -p -- content/august-sander/critique.md`: the first 2026-07-17 round (02 `SHOULDER LINE`; 03 `LINKING ARM`; 03 `SHARED PORTRAIT FIELD`) and the current 2026-07-17 round. The earlier removals and replacement face annotations remain present and truthful; all ten current specs score 100/100. `scripts/check.sh` passes.

## Critique round — 2026-07-17

### Required

None.

Every current proof was visually checked against its overlay spec and the matching source image. The earlier resolved removals in 02 and 03 remain absent, while 04's frontal axis, 06's cape-edge line, 07's shoulder contour, and 10's forearm line trace the named visible features. The source notes' descriptions agree with the supplied images; each of the ten files has a MoMA object-record link, the stated August Sander / archive / ARS credit, and an image-specific concise four-factor fair-use rationale. Direct public requests to the object records return MoMA's bot-facing 403 response, which is not evidence of a missing source or restricted acquisition. Chapter tonal claims agree with the current analyzer values within tolerance, and its explicit settings section correctly declines to infer undocumented camera data.

### Advisory (non-blocking)

None.
