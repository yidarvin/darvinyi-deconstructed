verdict: revise

## Critique round — 2026-08-02

### Required

1. **01-endsars-EndSARSProtests-25, 02-endsars-EndSARSProtests-11, 06-endsars-EndSARSProtests-13, 07-endsars-EndSARSProtests-28, 09-endsars-EndSARSProtests-39, 11-endsars-EndSARSProtests-67, and 12-endsars-EndSARSProtests-63 — replace the false `vanishing_point` claims.** The proofs place the vanishing-point cross respectively on a raised sign/crowd, the placard’s center, a foreground shirt/crowd, a foreground face/crowd, the near roadway/car, grass beside the sidewalk, and the security tower. The named features are visible, but none is a point at which visible frame diagonals converge; in 11 the claimed road-depth point is not even on the road. The analyzer suggestions and 100 geometric scores confirm coordinate agreement only, not this semantic claim. Use the fitting primitive for each visible subject/area (for example `subject_anchor`), or remove it, and rerender/re-score the affected proofs.

2. **04-endsars-EndSARSProtests-16 — remove or replace the `horizon_line` labeled `ring of feet`.** In the proof its horizontal stroke passes across the grounded figure and pavement; it does not trace a horizon, threshold, or a ring of feet. The separate `crowd perimeter` polyline already makes the defensible enclosure claim. Retain only a primitive that follows the visible structure, then rerender/re-score.

### Advisory (non-blocking)

- The fair-use record is traceable for all twelve files: each entry links the artist archive and public display rendition, credits Yagazie Emezi, and gives a concise complete-frame/non-substitution rationale; the chapter and research note correctly avoid invented camera settings.
- All twelve current specs score 100 with the deterministic scorer. Those results should be retained as geometry checks after revision, but the visual semantic corrections above are still required.
