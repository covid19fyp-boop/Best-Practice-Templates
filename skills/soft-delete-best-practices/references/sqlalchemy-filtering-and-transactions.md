# SQLAlchemy Filtering And Transactions

## Default Filtering

- Apply global row filters for entities that support soft delete.
- Use `with_loader_criteria` to enforce `deleted_at IS NULL` by default.
- Use `SessionEvents.do_orm_execute` to centralize filter application.

## Opt-In Inclusion

- Provide explicit query options or flags for admin/reporting flows that need deleted rows.
- Keep opt-in narrow and audited.

## Transaction Rules

- Perform delete/restore in transactions.
- Use row-level locking where needed when restore can conflict with active-row unique indexes.
- Keep cascade soft-delete behavior explicit; do not rely on hard-delete FK cascades for soft delete.
