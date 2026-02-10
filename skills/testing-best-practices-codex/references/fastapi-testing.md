# FastAPI Testing

## Route And Contract Tests

- Validate status codes, response schemas, and error payloads.
- Cover authz/authn failure paths explicitly.
- Validate input validation behavior for malformed requests.

## Dependency Overrides

- Use dependency overrides to isolate external services.
- Keep test-specific overrides local to test scope and reset after use.

## Async And Integration

- Use async test patterns when testing async DB/network code.
- Keep API and DB integration tests deterministic with controlled fixtures.
