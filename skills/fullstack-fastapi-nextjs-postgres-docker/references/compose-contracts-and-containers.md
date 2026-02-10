# Compose Contracts And Containers

## Service Contracts

- Keep one primary process concern per container.
- Define explicit ports, environment, volumes, and health checks per service.
- Keep runtime images minimal and non-root where practical.

## Readiness And Dependency Control

- Use health checks for `api` and `db`.
- Use readiness-aware dependency conditions in Compose when startup order matters.
- Use one-shot migration jobs with completion-based dependency for API startup when needed.

## Data Persistence

- Persist PostgreSQL data to named volumes.
- Keep DB config and data lifecycle independent from app container rebuilds.

## Environment Separation

- Use Compose profiles or separate overlays for dev/staging/prod differences.
- Keep environment-specific settings out of hardcoded source values.
- Follow project rule: no host-local installs; execute build/test tooling inside Docker.
