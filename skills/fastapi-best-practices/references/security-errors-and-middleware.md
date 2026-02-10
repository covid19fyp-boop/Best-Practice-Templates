# Security, Errors, And Middleware

## Authentication And Authorization

- Use explicit authentication dependencies for protected routes.
- Use FastAPI security utilities (for example OAuth2 flows) when suitable.
- Keep authorization checks close to business operations and policy boundaries.

## Error Handling

- Use `HTTPException` for expected client-facing failures.
- Use custom exception handlers for consistent error envelopes when required.
- Avoid leaking internal implementation details in error responses.

## CORS And Middleware

- Configure allowed origins explicitly for browser clients.
- Avoid wildcard origins when credentials are required.
- Keep middleware ordering intentional, especially for auth/logging/metrics.
