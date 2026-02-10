# FastAPI Module Rules

## Router Organization

- Organize by domain with `APIRouter` modules.
- Keep app bootstrap file responsible for including routers, not business logic.

## Dependency Injection

- Use `Depends` for cross-cutting concerns (auth, DB session, tenant context).
- Keep dependency composition declarative and reusable.

## Contract Separation

- Keep API schemas explicit and separate from ORM entities.
- Use response models so route outputs remain stable.

## Transaction And Session Scope

- Keep session lifecycle scoped to request/unit-of-work boundaries.
- Avoid hidden commits in helper utilities that bypass module ownership.

## Migration Ownership

- Track schema changes in migrations for each module-level data change.
- Keep migration scripts reviewed alongside related module code.
