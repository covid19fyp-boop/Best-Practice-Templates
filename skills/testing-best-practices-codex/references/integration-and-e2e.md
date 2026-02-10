# Integration And E2E

## Integration Gates

- Verify FastAPI-to-PostgreSQL query behavior for changed endpoints.
- Verify Next.js-to-FastAPI contract compatibility for changed UI flows.
- Keep integration tests focused on service boundaries.

## E2E Gates

- Cover high-value user journeys and release-critical paths.
- Keep E2E data setup deterministic and isolated.
- Avoid duplicating low-level coverage already handled by unit/integration tests.

## Release Criteria

- Require passing smoke tests before staging promotion.
- Require passing critical E2E gates before production rollout.
