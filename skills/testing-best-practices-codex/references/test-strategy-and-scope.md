# Test Strategy And Scope

## Testing Pyramid In Practice

- Favor more unit and component tests than end-to-end tests.
- Keep integration tests for boundary behavior between modules/services.
- Reserve E2E for high-risk business-critical flows.

## Scope Selection

- For pure logic changes, start with unit tests.
- For API contract changes, add integration tests.
- For cross-service UI impact, add focused E2E coverage.

## Cost Control

- Keep slow tests limited and intentional.
- Separate smoke, regression, and full-suite commands.
- Prefer stable assertions over snapshot-heavy brittle checks.
