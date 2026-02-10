# Testing, CI, And Release Gates

## Minimum Quality Gates

- Backend: unit/integration tests for API contracts, auth, validation, and DB failure paths.
- Frontend: route/component tests for loading/error/not-found and key user journeys.
- Integration: end-to-end request flow from Next.js to FastAPI to PostgreSQL.

## CI Baseline

- Run lint/type checks for both backend and frontend.
- Run tests in containerized environments consistent with runtime.
- Fail release when migrations, health checks, or smoke tests fail.

## Pre-Release Verification

- Verify service startup order and readiness behavior in Compose.
- Verify environment-variable and secret injection in target environment.
- Verify rollback or recovery path when migrations fail.
