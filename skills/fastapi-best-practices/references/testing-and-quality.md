# Testing And Quality

## Test Layers

- Cover route contracts (status codes, schemas, headers).
- Cover dependency failures and degraded external dependencies.
- Cover auth and permission boundaries.

## FastAPI Test Patterns

- Use `TestClient` for sync tests.
- Use `AsyncClient` with ASGI transport for async tests.
- Use `app.dependency_overrides` to replace external services in tests.

## Lifespan And State

- Ensure startup/shutdown behavior is exercised in integration tests.
- Keep tests isolated by clearing overrides and state after each test.
- Use deterministic fixtures for database setup and teardown.
