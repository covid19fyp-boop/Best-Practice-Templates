# Naming, Imports, And Dependencies

## Naming Conventions

- Keep module directory names lowercase and purpose-driven.
- Use consistent file naming for equivalent roles (`routes`, `schemas`, `service`, `repository`).
- Avoid role ambiguity (for example mixing orchestration and persistence in one file).

## Import Policy

- Prefer configured absolute imports/aliases to reduce fragile deep relative imports.
- Import across modules only through approved entry points.
- Avoid circular dependencies between feature modules.

## Dependency Direction

- UI/routes depend on application services, not directly on persistence internals.
- Services depend on repository interfaces/implementations by design rules.
- Shared utilities must not introduce backward dependencies into feature modules.
