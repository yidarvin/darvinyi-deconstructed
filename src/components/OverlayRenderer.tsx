import type { CSSProperties } from "react";

// OverlayRenderer --- the site half of the overlay contract. It consumes the exact
// same normalized-coordinate JSON that the skill's render_overlay.py draws (see
// .claude/skills/composition-analysis/references/overlay-spec.md) and emits an SVG
// layer sized to the photograph's natural pixel dimensions. Draw it absolutely over
// an <img> shown at natural aspect ratio (no object-fit crop) and every primitive
// lands where the analyzer measured it. All coordinates are x in [0,1] left->right,
// y in [0,1] top->bottom; user units in the SVG are the image's natural pixels, so a
// stroke of W/550 reads the same on the page as it does in the python proof.

const PHI = (1 + Math.sqrt(5)) / 2;
const TEAL = "#2dd4bf";
const GRID_LINES: Record<string, number[]> = {
  thirds: [1 / 3, 2 / 3],
  phi: [1 - 1 / PHI, 1 / PHI],
};

export type Point = [number, number];

export interface Primitive {
  type: string;
  label?: string;
  // horizon_line
  y?: number;
  angle?: number;
  // vanishing_point / subject_anchor / ellipse
  x?: number;
  r?: number;
  cx?: number;
  cy?: number;
  rx?: number;
  ry?: number;
  // leading_line / polyline
  points?: Point[];
  arrow?: boolean;
  // symmetry_axis
  orientation?: "vertical" | "horizontal";
  pos?: number;
  // golden_spiral
  pole?: "tl" | "tr" | "bl" | "br";
  cw?: boolean;
  // diagonal
  from?: string;
  to?: string;
  // frame_in_frame
  w?: number;
  h?: number;
}

export interface OverlaySpec {
  version?: number;
  image?: string;
  grid?: { type?: "thirds" | "phi" | "none" };
  primitives?: Primitive[];
  notes?: string;
}

// Logarithmic (golden) spiral fit to the unit square, ported verbatim from
// complib.golden_spiral so the site sweep matches the proof sweep.
function goldenSpiral(pole: string, cw: boolean): { points: Point[]; pole: Point } {
  const n = 400;
  const turns = 2.0;
  const b = Math.log(PHI) / (Math.PI / 2);
  const tmax = turns * 2 * Math.PI;
  const sgn = cw ? 1 : -1;
  const raw: Point[] = [];
  for (let i = 0; i < n; i++) {
    const t = (tmax * i) / (n - 1);
    raw.push([Math.exp(b * t) * Math.cos(t), sgn * Math.exp(b * t) * Math.sin(t)]);
  }
  const xs = raw.map((p) => p[0]);
  const ys = raw.map((p) => p[1]);
  const minx = Math.min(...xs);
  const maxx = Math.max(...xs);
  const miny = Math.min(...ys);
  const maxy = Math.max(...ys);
  const spanx = maxx - minx || 1;
  const spany = maxy - miny || 1;
  let pts: Point[] = raw.map(([x, y]) => [(x - minx) / spanx, (y - miny) / spany]);
  let px = (0 - minx) / spanx;
  let py = (0 - miny) / spany;
  const wantRight = pole === "tr" || pole === "br";
  const wantBottom = pole === "bl" || pole === "br";
  if (px > 0.5 !== wantRight) {
    pts = pts.map(([x, y]) => [1 - x, y]);
    px = 1 - px;
  }
  if (py > 0.5 !== wantBottom) {
    pts = pts.map(([x, y]) => [x, 1 - y]);
    py = 1 - py;
  }
  return { points: pts, pole: [px, py] };
}

const CORNERS: Record<string, Point> = {
  tl: [0, 0],
  tr: [1, 0],
  bl: [0, 1],
  br: [1, 1],
};

interface Geo {
  W: number;
  H: number;
  lw: number;
  lw2: number;
  font: number;
}

// A label: uppercase mono text on a dark backing box, clamped inside the frame,
// matching render_overlay.label(). anchorAbove lifts the box above the point.
function Label({
  text,
  x,
  y,
  geo,
  anchorAbove = true,
}: {
  text?: string;
  x: number;
  y: number;
  geo: Geo;
  anchorAbove?: boolean;
}) {
  if (!text) return null;
  const t = text.toUpperCase();
  const { W, H, font } = geo;
  const pad = Math.max(3, font / 3);
  const tw = t.length * font * 0.62;
  const th = font;
  let bx = x;
  let by = anchorAbove ? y - th - 3 * pad : y;
  bx = Math.min(Math.max(2, bx), W - tw - 2 * pad - 2);
  by = Math.min(Math.max(2, by), H - th - 2 * pad - 2);
  return (
    <g>
      <rect
        x={bx}
        y={by}
        width={tw + 2 * pad}
        height={th + 2 * pad}
        fill="#0a0c0e"
        fillOpacity={0.67}
      />
      <text
        x={bx + pad}
        y={by + pad + th * 0.8}
        fill="#ebfaf7"
        fontFamily="'JetBrains Mono', ui-monospace, monospace"
        fontSize={font}
        style={{ letterSpacing: "0.04em" }}
      >
        {t}
      </text>
    </g>
  );
}

function Arrowhead({ from, to, geo }: { from: Point; to: Point; geo: Geo }) {
  const [x1, y1] = from;
  const [x2, y2] = to;
  const L = Math.hypot(x2 - x1, y2 - y1);
  if (L < 1e-6) return null;
  const ux = (x2 - x1) / L;
  const uy = (y2 - y1) / L;
  const s = Math.max(geo.W / 110, geo.lw * 4.5);
  const left: Point = [x2 - ux * s - uy * s * 0.55, y2 - uy * s + ux * s * 0.55];
  const right: Point = [x2 - ux * s + uy * s * 0.55, y2 - uy * s - ux * s * 0.55];
  return (
    <polygon points={`${x2},${y2} ${left[0]},${left[1]} ${right[0]},${right[1]}`} fill={TEAL} />
  );
}

function renderPrimitive(p: Primitive, i: number, geo: Geo) {
  const { W, H, lw, lw2 } = geo;
  const key = `${p.type}-${i}`;
  switch (p.type) {
    case "horizon_line": {
      const y = (p.y ?? 0.5) * H;
      const dy = Math.tan(((p.angle ?? 0) * Math.PI) / 180) * (W / 2);
      return (
        <g key={key}>
          <line x1={0} y1={y - dy} x2={W} y2={y + dy} stroke={TEAL} strokeWidth={lw} />
          <Label text={p.label ?? "horizon"} x={0.02 * W} y={y} geo={geo} />
        </g>
      );
    }
    case "leading_line": {
      const pts = (p.points ?? []).map(([x, y]) => [x * W, y * H] as Point);
      if (pts.length < 2) return null;
      const last = pts[pts.length - 1];
      const prev = pts[pts.length - 2];
      const line = pts.slice(0, -1);
      return (
        <g key={key}>
          <polyline
            points={line.map((q) => `${q[0]},${q[1]}`).join(" ")}
            fill="none"
            stroke={TEAL}
            strokeWidth={lw}
          />
          <line x1={prev[0]} y1={prev[1]} x2={last[0]} y2={last[1]} stroke={TEAL} strokeWidth={lw} />
          {p.arrow !== false && <Arrowhead from={prev} to={last} geo={geo} />}
          <Label text={p.label} x={pts[0][0]} y={pts[0][1]} geo={geo} />
        </g>
      );
    }
    case "vanishing_point": {
      const x = (p.x ?? 0.5) * W;
      const y = (p.y ?? 0.5) * H;
      const r = Math.max(7, W / 130);
      return (
        <g key={key}>
          <circle cx={x} cy={y} r={r} fill="none" stroke={TEAL} strokeWidth={lw} />
          <line x1={x - 2 * r} y1={y} x2={x + 2 * r} y2={y} stroke={TEAL} strokeWidth={lw2} />
          <line x1={x} y1={y - 2 * r} x2={x} y2={y + 2 * r} stroke={TEAL} strokeWidth={lw2} />
          <Label text={p.label ?? "vp"} x={x + 2.4 * r} y={y - r} geo={geo} anchorAbove={false} />
        </g>
      );
    }
    case "subject_anchor": {
      const x = (p.x ?? 0.5) * W;
      const y = (p.y ?? 0.5) * H;
      const r = (p.r ?? 0.035) * Math.min(W, H);
      const ticks: Point[] = [
        [1, 0],
        [-1, 0],
        [0, 1],
        [0, -1],
      ];
      return (
        <g key={key}>
          <circle cx={x} cy={y} r={r} fill="none" stroke={TEAL} strokeWidth={lw} />
          {ticks.map(([dx, dy], j) => (
            <line
              key={j}
              x1={x + dx * r * 0.6}
              y1={y + dy * r * 0.6}
              x2={x + dx * r * 1.4}
              y2={y + dy * r * 1.4}
              stroke={TEAL}
              strokeWidth={lw2}
            />
          ))}
          <Label text={p.label ?? "subject"} x={x - r} y={y - r - 4} geo={geo} />
        </g>
      );
    }
    case "symmetry_axis": {
      const dash = `${geo.W * 0.011},${geo.W * 0.0075}`;
      if ((p.orientation ?? "vertical") === "vertical") {
        const x = (p.pos ?? 0.5) * W;
        return (
          <g key={key}>
            <line
              x1={x}
              y1={0}
              x2={x}
              y2={H}
              stroke={TEAL}
              strokeOpacity={0.59}
              strokeWidth={lw}
              strokeDasharray={dash}
            />
            <Label text={p.label ?? "axis"} x={x + 6} y={0.03 * H} geo={geo} anchorAbove={false} />
          </g>
        );
      }
      const y = (p.pos ?? 0.5) * H;
      return (
        <g key={key}>
          <line
            x1={0}
            y1={y}
            x2={W}
            y2={y}
            stroke={TEAL}
            strokeOpacity={0.59}
            strokeWidth={lw}
            strokeDasharray={dash}
          />
          <Label text={p.label ?? "axis"} x={0.02 * W} y={y} geo={geo} />
        </g>
      );
    }
    case "golden_spiral": {
      const { points, pole } = goldenSpiral(p.pole ?? "tr", p.cw ?? true);
      const r = Math.max(4, W / 300);
      return (
        <g key={key}>
          <polyline
            points={points.map(([x, y]) => `${x * W},${y * H}`).join(" ")}
            fill="none"
            stroke={TEAL}
            strokeWidth={lw}
          />
          <circle cx={pole[0] * W} cy={pole[1] * H} r={r} fill={TEAL} />
        </g>
      );
    }
    case "diagonal": {
      const a = CORNERS[p.from ?? "bl"] ?? CORNERS.bl;
      const b = CORNERS[p.to ?? "tr"] ?? CORNERS.tr;
      return (
        <line
          key={key}
          x1={a[0] * W}
          y1={a[1] * H}
          x2={b[0] * W}
          y2={b[1] * H}
          stroke={TEAL}
          strokeOpacity={0.59}
          strokeWidth={lw2}
          strokeDasharray={`${geo.W * 0.01},${geo.W * 0.0063}`}
        />
      );
    }
    case "frame_in_frame": {
      const x = (p.x ?? 0) * W;
      const y = (p.y ?? 0) * H;
      const w2 = (p.w ?? 0) * W;
      const h2 = (p.h ?? 0) * H;
      const s = Math.min(w2, h2) * 0.18;
      const corners: [number, number, number, number][] = [
        [x, y, 1, 1],
        [x + w2, y, -1, 1],
        [x, y + h2, 1, -1],
        [x + w2, y + h2, -1, -1],
      ];
      return (
        <g key={key}>
          {corners.map(([ccx, ccy, sx, sy], j) => (
            <g key={j}>
              <line x1={ccx} y1={ccy} x2={ccx + sx * s} y2={ccy} stroke={TEAL} strokeWidth={lw} />
              <line x1={ccx} y1={ccy} x2={ccx} y2={ccy + sy * s} stroke={TEAL} strokeWidth={lw} />
            </g>
          ))}
          <Label text={p.label} x={x} y={y - 4} geo={geo} />
        </g>
      );
    }
    case "polyline": {
      const pts = (p.points ?? []).map(([x, y]) => `${x * W},${y * H}`).join(" ");
      const first = (p.points ?? [])[0];
      return (
        <g key={key}>
          <polyline points={pts} fill="none" stroke={TEAL} strokeWidth={lw} />
          {first && <Label text={p.label} x={first[0] * W} y={first[1] * H} geo={geo} />}
        </g>
      );
    }
    case "ellipse": {
      const cx = (p.cx ?? 0.5) * W;
      const cy = (p.cy ?? 0.5) * H;
      const rx = (p.rx ?? 0.1) * W;
      const ry = (p.ry ?? 0.1) * H;
      return (
        <g key={key}>
          <ellipse cx={cx} cy={cy} rx={rx} ry={ry} fill="none" stroke={TEAL} strokeWidth={lw} />
          <Label text={p.label} x={cx - rx} y={cy - ry - 4} geo={geo} />
        </g>
      );
    }
    default:
      return null;
  }
}

interface OverlayRendererProps {
  spec: OverlaySpec;
  /** Natural pixel width of the photograph (from the ingest manifest). */
  width: number;
  /** Natural pixel height of the photograph. */
  height: number;
  className?: string;
  style?: CSSProperties;
}

export function OverlayRenderer({ spec, width, height, className, style }: OverlayRendererProps) {
  const W = width;
  const H = height;
  const geo: Geo = {
    W,
    H,
    lw: Math.max(2, W / 550),
    lw2: Math.max(2, W / 800),
    font: Math.max(13, W / 85),
  };
  const gtype = spec.grid?.type ?? "none";
  const grid = GRID_LINES[gtype];
  const gridDash = `${W * 0.0075},${W * 0.0056}`;

  return (
    <svg
      viewBox={`0 0 ${W} ${H}`}
      className={className}
      style={style}
      role="img"
      aria-hidden="true"
      preserveAspectRatio="none"
    >
      {grid &&
        grid.map((g, j) => (
          <g key={`grid-${j}`}>
            <line
              x1={g * W}
              y1={0}
              x2={g * W}
              y2={H}
              stroke="#ffffff"
              strokeOpacity={0.37}
              strokeWidth={geo.lw2}
              strokeDasharray={gridDash}
            />
            <line
              x1={0}
              y1={g * H}
              x2={W}
              y2={g * H}
              stroke="#ffffff"
              strokeOpacity={0.37}
              strokeWidth={geo.lw2}
              strokeDasharray={gridDash}
            />
          </g>
        ))}
      {(spec.primitives ?? []).map((p, i) => renderPrimitive(p, i, geo))}
    </svg>
  );
}
