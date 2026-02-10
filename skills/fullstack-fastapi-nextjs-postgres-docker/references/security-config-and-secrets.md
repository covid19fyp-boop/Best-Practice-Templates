# Security, Config, And Secrets

## Secret Boundaries

- Keep secrets server-side only.
- Use runtime secret injection instead of hardcoding values in source or images.
- Use PostgreSQL image secret-friendly env patterns where supported (for example `_FILE` variants).

## FastAPI Security Baseline

- Enforce authentication and authorization on protected routes and mutations.
- Use controlled error handling for client-visible failures.
- Configure CORS explicitly and minimally.

## Next.js Security Baseline

- Treat Server Actions and Route Handlers as security boundaries.
- Validate and authorize all mutation inputs.
- Use public environment variable exposure intentionally (`NEXT_PUBLIC_*` only when required).
