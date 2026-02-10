# Deployment And Operations

## Runtime Clarity

- Keep runtime mode explicit per service (development vs production).
- Keep worker/concurrency settings aligned to CPU and workload profile.
- Keep cache behavior and invalidation strategy explicit across releases.

## Observability

- Emit logs to stdout/stderr for all services.
- Expose health endpoints for API and frontend runtime checks.
- Track request failures, latency, and dependency errors with actionable metadata.

## Release Discipline

- Run migrations before opening traffic to new API versions.
- Validate health and smoke checks immediately after deployment.
- Reconfirm auth, CORS, and DB connectivity with production-like requests.
