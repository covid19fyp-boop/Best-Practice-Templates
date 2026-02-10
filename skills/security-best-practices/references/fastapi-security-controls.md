# FastAPI Security Controls

## Authentication And Authorization

- Use explicit auth dependencies on protected routes.
- Keep authorization checks close to business operations, not only at router level.
- Fail closed by default for missing identity/permissions.

## Input And Output Safety

- Validate request payloads with strict Pydantic models.
- Use response models to prevent accidental data overexposure.
- Avoid echoing sensitive internal errors to clients.

## Error Handling And CORS

- Use consistent error envelopes and avoid leaking stack traces.
- Configure CORS with explicit origins/methods/headers.
- Avoid wildcard origins with credentials-enabled flows.

## Runtime Hardening

- Run behind trusted proxy settings when applicable.
- Rate-limit sensitive endpoints where abuse risk is high.
- Log auth failures and suspicious access patterns with request context.
