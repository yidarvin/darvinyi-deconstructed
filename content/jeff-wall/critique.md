verdict: resolved

## Critique round — 2026-07-23

### Required

1. **02-picture-for-women — rear-window frame is not on the window bank.** `overlays/02-picture-for-women.json` places `REAR WINDOW BANK` at `y: 0.220` through ceiling pipes and bulbs, while the proof's rear windows begin around `y: 0.36`. Tighten the `frame_in_frame` to the visible bank (or rename it to the feature actually bounded), then re-render. The chapter's statement that this frame supplies depth must remain consistent with the corrected overlay.

2. **03-mimic — curb line does not trace the curb.** The `CURB INTO DISTANCE` line (`[0.176, 0.988]` to `[0.466, 0.510]`) cuts across the sidewalk and terminates at the facade rather than following the visible curb/road edge at the left. Redraw it on that edge or remove the curb claim, and correct the matching chapter description.

3. **03-mimic — the “WALKING TRIO” ellipse excludes one of the three people.** Its bounds (`cx: 0.715`, `rx: 0.175`) enclose the couple at right but not the man at left. Enclose all three people or relabel the marked pair; do not leave a false count.

4. **05-the-well — `SHOVEL HANDLE` is on bare earth rather than the shovel.** The polyline runs up-right from `[0.315, 0.775]` to `[0.605, 0.580]`; the actual active shovel handle runs down-right from the worker toward the blade in the pit. Move the line to the handle and revise the related chapter sentence about the two tool lines, then re-render and re-score.

5. **07-rear-view-open-air-theatre — fair-use rationale describes a different scene.** `sources.md` says the image's criticism examines “massed figures,” a “reversed viewing position,” a “crowd’s patterned field,” and an implied off-frame stage. The sourced proof instead shows the theatre's rear exterior, shingled barrel roof, trees, and parked vehicles, with no crowd. Replace Factors 1 and 3 with the actual architectural teaching need (roof enclosure, shingles, door/window, and relation to trees/vehicles).

6. **08-dressing-poultry — `COUNTER EDGE` does not follow one physical edge.** The arrow from `[0.142, 0.383]` to `[0.661, 0.686]` cuts diagonally across separate work areas and people instead of tracing a counter boundary. Redraw it on a real tabletop/counter edge or relabel it as an interpretive activity path; update the chapter's literal claim that the counter runs across the workers' tasks if needed.

7. **10-mother-of-pearl — `DOWNWARD GAZE` begins at the girl's lower cheek/mouth, not her eye.** The first point `[0.380, 0.325]` is materially away from the visible eye (approximately `[0.44, 0.27]`), although the chapter calls the path her gaze. Start the polyline at the eye and route it to the shell tray, then re-render.

### Advisory (non-blocking)

- All ten specifications pass the deterministic scorer (01–05 and 07–10 at 100; 06 at 94 only because its visually valid canal-bank line is detector-unconfirmed). This does not validate the semantic placement errors above.
- The opening source-summary sentence calls all nine Glenstone downloads “1600px-long-edge” files, whereas the documented original for 05 is 1600 × 2057 and its ingested file is 1244 × 1600. Clarify this as a requested 1600px width/derivative dimension rather than a long-edge claim on a future source pass; it does not affect traceability, rights, or the full-frame analysis.

## Builder resolution — 2026-07-23

Re-verified prior required rounds: 2026-07-23 (the complete critique history; this is its first round).

1. **02-picture-for-women:** tightened `REAR WINDOW BANK` to the visible rear windows (`x: 0.165, y: 0.360, w: 0.660, h: 0.215`); the depth discussion remains tied to that rear window bank.
2. **03-mimic:** moved `CURB INTO DISTANCE` onto the left curb/road edge and expanded `WALKING TRIO` to contain all three walkers; matching chapter language now names the left curb and three walkers.
3. **05-the-well:** moved `SHOVEL HANDLE` down-right from the worker to the active blade; prose now distinguishes it from the discarded tool.
4. **07-rear-view-open-air-theatre:** replaced the incorrect crowd rationale with the actual roof, shingles, façade openings, trees, and vehicles.
5. **08-dressing-poultry:** moved and relabeled the line as `FRONT TABLE EDGE`, tracing the physical near edge; chapter prose no longer claims a counter crosses the workers' tasks.
6. **10-mother-of-pearl:** started `DOWNWARD GAZE` at the girl's eye and routed it to the mother-of-pearl tray.
7. Corrected the derivative-dimension wording in `sources.md` (advisory).

Re-analyzed and rendered all affected images. Deterministic scores: 02 100, 03 94, 05 100, 08 94, 10 100; the two 94s retain only detector-unconfirmed warnings for visually verified physical edges. `scripts/check.sh` passed after the corrections.
