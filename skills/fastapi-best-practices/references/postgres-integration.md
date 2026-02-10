# PostgreSQL Integration

## Session Scope

- Provide database session access via FastAPI dependencies.
- Use one logical unit of work per request unless a specific workflow requires otherwise.
- Ensure sessions are closed/cleaned up after request completion.

## Transaction Boundaries

- Keep commit/rollback behavior explicit and observable.
- Avoid hidden commits in utility layers when transactional control is needed.
- Treat background workflows as separate transaction contexts.

## Reliability

- Configure connection pooling consistent with worker count and workload.
- Add retry/backoff only for transient failures and keep idempotency in mind.
- Surface DB failures through consistent API error semantics.
