# Rendering, Caching, And Revalidation

## Rendering Modes

- Choose static generation when data is stable and latency-sensitive.
- Choose dynamic rendering when response depends on per-request context.
- Use incremental/static revalidation when freshness and speed must be balanced.

## Cache Controls

- Set fetch cache and revalidation options intentionally.
- Use tag/path-based revalidation where selective invalidation is needed.
- Keep cache behavior explicit in routes with frequent content updates.

## Version-Aware Behavior

- Route Handler and caching defaults can change across Next.js versions.
- Verify behavior against the active project version docs before relying on defaults.
