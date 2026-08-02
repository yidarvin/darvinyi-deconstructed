verdict: approve

## Critique round — 2026-08-02

Reviewed all ten current proof PNGs against their overlay specs, analyzer data, chapter, manifest, research note, and source notes. All ten current specs score 100/100 geometrically, but that score does not validate semantic labels. The Whitney record and media URLs for all ten plates resolve, the credits/titles/media and recorded EXIF agree with the manifest, and each copyrighted plate has a traceable per-image four-factor fair-use rationale.

### Required fixes

1. **`03-insert` — correct `WATER-TO-SHORE BAND`.** The rule at `y=0.382` crosses open water well above the visible shoreline (about `y=0.56` in the proof). It must either move to the actual shore transition or be relabelled for the water feature it traces. Update the accompanying prose/caption if needed; it currently presents this line as the water-to-shore band.

2. **`04-half-sheet` — correct or remove `CROPPED FIGURE EDGE`.** Its path from `(0.712, 0.406)` to `(0.954, 0.707)` runs across bare rock at the right of the frame. The cropped standing figure is at upper left, so the current primitive names the wrong feature. The chapter's claim that this measured line reaches a cropped figure edge must match the repaired spec.

3. **`06-three-sheet` — make `VAN AS SCREEN` trace the van.** The `frame_in_frame` spans `(0.059, 0.225)`–`(0.847, 0.959)`, enclosing most of the street and cutting through the van rather than framing the large white vehicle on the right. Reposition it to the vehicle, relabel it for the broader field it actually encloses, or remove it. The prose says the overlay frames the van, so it must be revised in tandem.

4. **`09-people-who-arent-friends` — repair the two falsely named structural lines.** `GALLERY WALL SEAM` at `y=0.448` runs through the orange lettering rather than a wall seam, and `REFLECTIVE BENCH` from `(0.511, 0.648)` to `(0.881, 0.719)` starts beyond the orange bench and crosses empty floor. Trace the real architectural/bench features or relabel/remove them; the chapter's claims about a wall seam and bench line must then agree with the visible proof.

5. **`10-intro-to-threat-modeling` — stop calling the visible framed photograph a video screen.** The `VIDEO SCREEN` anchor at `(0.195, 0.500)` lands on the framed bent-white-shirt image from `40x60`, not a screen. The Whitney record describes the supplied image only as an installation view and does not identify a pictured video. Reframe this plate as the record-associated installation-view rendition without asserting that its visible object is the video, or remove it if no verifiable installation image exists. Correct the caption and prose as well as the `sources.md` rationale, which currently claims screen-position analysis. In the same proof, `GALLERY WALL SEAM` at `y=0.438` crosses lettering rather than a wall seam, and `REFLECTIVE BENCH` from `(0.554, 0.657)` to `(0.960, 0.734)` crosses empty floor rather than the orange bench; repair, relabel, or remove both primitives.

### Advisory (non-blocking)

- **`07-window-card-a`:** `CENTRAL SUITED FIGURE` is semantically plausible but visually delicate because its small target blends into the distant light area. A slightly more explicit label or larger radius could make the teaching point easier to read; it is not a blocker.

## Resolution — 2026-08-02

Re-verified the complete critique history: 2026-08-02, the only prior round. All five required repairs are present and match the chapter/source prose: `03-insert` now identifies only the visible shoreline; `04-half-sheet` no longer claims a bare-rock line is a figure edge; `06-three-sheet` no longer frames the whole street as the van; `09-people-who-arent-friends` traces the actual bench top and removes the false wall seam; and `10-intro-to-threat-modeling` records only the visible gallery relation, without calling a framed photograph a video screen. The five repaired proofs received fresh visual passes and score 100/100; the entire ten-image set also scores 100/100. `scripts/check.sh` and `python3 scripts/validate_pipeline.py` pass.

## Critique round — 2026-08-02

Reviewed all ten current proof PNGs directly against the ingested images, overlay specs, analysis JSON, chapter, manifest, research note, and source notes. Re-ran the overlay scorer: every spec passes at 100/100. The previously resolved repairs remain materially intact: the `03-insert` shoreline, `04-half-sheet` rock plane, `06-three-sheet` vehicle edge, `09-people-who-arent-friends` bench top, and `10-intro-to-threat-modeling` gallery relation each trace the named visible feature. Chapter measurements and palette claims agree with the analyzer values within tolerance; EXIF statements are accurately limited to file-embedded metadata. All ten Whitney collection records and direct JPEG sources resolve publicly, and every copyrighted image has a traceable credit and concise four-factor fair-use rationale.

### Required fixes

None.

### Advisory (non-blocking)

- `10-intro-to-threat-modeling` intentionally keeps only the two defensible structural primitives after the prior round removed false claims. A future enhancement could add a clearly named lettering or wall relation, but the current sparse overlay is truthful and sufficient for the chapter's carefully limited installation-view reading.
