# PostgreSQL Testing

## Migration Safety

- Test schema migrations on realistic data volumes when possible.
- Verify forward migration behavior and rollback expectations.
- Fail release when migrations cannot be applied cleanly.

## Data Behavior

- Test constraints, indexes, and query behavior relevant to changed features.
- Validate transaction semantics for concurrent or conflicting writes.
- Keep fixtures minimal but representative.

## Isolation

- Prefer disposable test databases or per-test transaction rollback patterns.
- Keep tests independent of persistent shared state.
