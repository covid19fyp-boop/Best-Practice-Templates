# Alembic Revision Authoring

## 1) Generate Revisions With Intent

- Use `alembic revision -m "<message>"` for manual revisions.
- Use `--autogenerate` only when metadata is complete and reviewed.
- Keep each revision focused on one coherent change set.

## 2) Review Autogenerate Output Carefully

- Verify column nullability, defaults, index names, and constraint names.
- Remove accidental diffs from metadata drift.
- Add hand-written operations where autogenerate cannot infer intent.

## 3) Keep Naming Conventions Stable

- Configure SQLAlchemy `MetaData.naming_convention` to stabilize constraint and index names.
- Keep generated names deterministic across environments.
- Avoid anonymous constraints in production schemas.

## 4) Transaction-Aware Operations

- Keep normal schema operations in transaction-safe migration flow.
- Use Alembic `autocommit_block()` for operations that must run outside transaction blocks.
- Document why each non-transactional operation is required.

## 5) Authoring Checklist

- Confirm `upgrade()` and `downgrade()` behavior is explicit.
- Confirm dependent revisions and branch labels are correct.
- Confirm migration script does not rely on environment-specific side effects.
