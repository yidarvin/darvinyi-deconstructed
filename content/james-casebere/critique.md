verdict: revise

## Critique round — 2026-07-23

### Required fixes

1. `05-yellow-hallway-2` — `TILTED DOOR` does not trace the tilted door. Its `frame_in_frame` brackets the much larger recess (`x=0.267–0.539`, `y=0.068–0.493`) while the door occupies only the right-hand portion. Tighten the frame to the tilted door, or relabel/retype the claimed feature.
2. `07-green-staircase-4` — the straight `horizon_line` at `y=0.372`, `angle=2.1` is labelled `CURVED SOFFIT`, but it crosses a shallow ceiling/wall division rather than tracing the curved soffit. Replace the primitive with one that follows the actual curve, or name the straight division it actually marks. Update the corresponding prose/caption if the claim changes.
3. `08-dorm-room` — `WINDOW PAIR` substantially overshoots the two windows: its right boundary at `x=0.966` sits over the blank right wall, well beyond the window structure. Rebound the `frame_in_frame` to the visible pair.
4. `09-turning-hallway` — `WINDOW EXIT` is not positioned on the bright window: its upper bracket floats above the window head and its right bracket extends into the adjacent wall. Reposition and tighten it to the actual opening.

### Advisory (non-blocking)

- `sources.md` incorrectly calls *Turning Hallway* (`756 × 600` in `manifest.json`) a 600px-long-edge exception. Its long edge is 756px, above the normal 640px floor; only *Green Staircase #1* needs the documented exception. Correct this source-note detail during the resolution.
- The artist portfolio confirms all eleven selected titles and dates, the chapter’s measured values agree with the current analysis JSON within tolerance, and the source notes provide a per-image four-factor fair-use rationale. The generic copyright wording should be qualified to the portfolio’s actual notice (or its absence) when the source notes are next revised.
