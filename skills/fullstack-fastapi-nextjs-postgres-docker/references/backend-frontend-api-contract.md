# Backend-Frontend API Contract

## FastAPI Contract Discipline

- Define request and response schemas explicitly.
- Keep error semantics predictable across endpoints.
- Keep API versioning strategy explicit before public release.

## Next.js Integration Patterns

- Prefer server-side data access patterns for privileged operations.
- Keep client-only API calls limited to truly interactive browser flows.
- Keep secrets and private tokens out of client bundles.

## Cross-Origin And Proxying

- Prefer same-origin API routing patterns when feasible.
- If using cross-origin calls, configure FastAPI CORS with explicit allowed origins/methods/headers.
- Avoid wildcard CORS with credentials-enabled flows.
