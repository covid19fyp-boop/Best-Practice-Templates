# App Structure And Dependencies

## Project Layout

- Organize endpoints with `APIRouter` modules by domain.
- Keep app bootstrap minimal and include routers centrally.
- Isolate side-effect setup code from route handlers.

## Dependency Injection

- Use `Depends` to share auth, DB, tenant, and policy logic.
- Prefer `Annotated` with dependencies for clearer typing and editor support.
- Keep dependencies composable and testable.

## Lifespan Management

- Use lifespan context manager for startup/shutdown resources.
- Avoid mixing old startup/shutdown event handlers when lifespan is used.
- Ensure external clients/pools are created once and closed cleanly.
