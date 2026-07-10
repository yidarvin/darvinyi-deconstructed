import { useId, useState } from "react";
import { getPlate } from "../lib/plates";
import { OverlayRenderer } from "./OverlayRenderer";

interface PlateProps {
  /** Photographer slug, e.g. "walker-evans". */
  slug: string;
  /** Image id = the ingested filename without extension, e.g. "01-allie-mae-burroughs". */
  id: string;
  /** The compositional read, shown under the plate. */
  caption?: React.ReactNode;
  /** Optional plate label, e.g. "Fig. 3.1"; defaults to the id. */
  label?: string;
  /** Whether the overlay starts visible (default true). */
  overlay?: boolean;
}

/**
 * Plate --- one deconstructed photograph. The image is shown at its natural aspect
 * with no crop; the OverlayRenderer draws the measured overlay on top. A single
 * control toggles the overlay so a reader can compare the bare frame against the
 * geometry the analyzer found. This is the only place chapters touch image markup;
 * they name a plate by (slug, id) and nothing else.
 */
export function Plate({ slug, id, caption, label, overlay = true }: PlateProps) {
  const plate = getPlate(slug, id);
  const [show, setShow] = useState(overlay);
  const captionId = useId();

  if (!plate) {
    return (
      <figure className="my-8 rounded-lg border border-danger/40 bg-surface p-5 font-mono text-sm text-danger">
        {`// missing plate: ${slug}/${id}`}
      </figure>
    );
  }

  const hasOverlay = Boolean(plate.spec);

  return (
    <figure className="my-10 rounded-lg border border-border bg-surface p-3 sm:p-4">
      <div
        className="relative mx-auto overflow-hidden rounded bg-black"
        style={{ maxWidth: plate.width, aspectRatio: `${plate.width} / ${plate.height}` }}
      >
        <img
          src={plate.src}
          width={plate.width}
          height={plate.height}
          loading="lazy"
          decoding="async"
          alt={typeof caption === "string" ? caption : `${slug} ${id}`}
          className="block h-full w-full"
        />
        {hasOverlay && show && (
          <OverlayRenderer
            spec={plate.spec!}
            width={plate.width}
            height={plate.height}
            className="pointer-events-none absolute inset-0 h-full w-full"
          />
        )}
      </div>

      <figcaption className="mt-3 flex items-start gap-3 font-mono text-xs leading-relaxed text-muted">
        {hasOverlay && (
          <button
            type="button"
            onClick={() => setShow((s) => !s)}
            aria-pressed={show}
            aria-controls={captionId}
            className="shrink-0 rounded border border-border px-2 py-0.5 uppercase tracking-wider text-comment transition-colors hover:border-accent hover:text-accent"
          >
            {show ? "overlay on" : "overlay off"}
          </button>
        )}
        <span id={captionId} className="flex-1">
          <span className="text-comment">{`/* ${label ?? plate.id} */ `}</span>
          {caption}
        </span>
      </figcaption>
    </figure>
  );
}
