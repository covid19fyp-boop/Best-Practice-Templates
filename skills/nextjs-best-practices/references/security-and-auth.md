# Security And Auth

## Server-Side Safety

- Keep secrets in server-only environment variables.
- Avoid passing privileged data through client-side props/state.
- Validate all external input at server boundaries.

## Mutations

- Treat Server Actions as public-facing mutation endpoints.
- Enforce authorization checks inside actions and handlers.
- Apply schema validation before processing writes.

## Auth And Session Control

- Centralize auth/session checks in shared server utilities or middleware patterns.
- Protect sensitive routes and mutation paths consistently.
- Log auth failures and suspicious mutation attempts.
