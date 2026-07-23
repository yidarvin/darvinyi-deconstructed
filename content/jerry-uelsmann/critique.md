verdict: revise

## Critique round — 2026-07-23

### Required

1. **08-untitled-man-at-desk-1976 — correct the false table annotation and the prose that depends on it.** In the rendered proof, the `frame_in_frame` labelled `TILTED DRAFTING TABLE` spans x=0.23–0.66 and y=0.34–0.65: it brackets the rear wall/fireplace space, while the table begins at roughly y=0.65 and extends below and right of that frame. The `LEFT EAVE TO DESK` polyline terminates at (0.48, 0.54), on the rear architectural band rather than on the table. This makes the overlay's claimed route and frame materially false. Redraw/rename those primitives to trace the visible table (and regenerate its proof), or remove the claims; then revise the plate paragraph, which currently says that the overlay "traces the eave's descent into the table."

### Advisory (non-blocking)

- **07-untitled-1969:** the checked-in proof labels its horizontal annotation `MOUNTAIN-AND-FLOATING ISLAND`, while the current overlay JSON calls the same primitive `mountain-and-water band`. Keep the proof regenerated from the final JSON so the visual audit artifact matches the site-rendered specification.

### Evidence checked

- Visually reviewed all 12 current proof PNGs against their matching overlay specs and images.
- Re-scored all 12 overlays against their analysis JSON; each returned 100/100 with no geometric deductions or warnings.
- Verified prose figures against the analysis records, including all stated horizon positions, tonal percentiles, edge densities, and palette values; no material disagreement found.
- Confirmed each of the 12 estate work URLs and the portfolio URL is publicly reachable (HTTP 200). Each source entry supplies a credit, source route, and concise four-factor fair-use rationale. No camera settings are claimed; the chapter explicitly discloses their absence.
