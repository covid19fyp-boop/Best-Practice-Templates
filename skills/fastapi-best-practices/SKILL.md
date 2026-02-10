---
name: fastapi-best-practices
description: Design, implement, and operate FastAPI services with production-ready patterns. Use when creating or refactoring FastAPI apps, organizing routers and dependencies, defining request/response models, configuring settings and secrets, integrating PostgreSQL, adding security and error handling, testing APIs, or preparing deployment/runtime configuration.
---

# FastAPI Best Practices

Follow this workflow when building or reviewing FastAPI services.

## 1) Define Service Boundaries

- Identify service responsibilities, external dependencies, and deployment target.
- Decide whether the service is sync-heavy, async-heavy, or mixed.
- Document API versioning and backward-compatibility expectations.

## 2) Structure The Application Deliberately

- Split endpoints into domain routers and include them in a central app module.
- Use dependency injection (`Depends`) for shared concerns.
- Use lifespan handlers for startup/shutdown resource management.

Read `references/app-structure-and-dependencies.md` before shaping module layout.

## 3) Enforce Contracts At The API Boundary

- Define explicit request and response models.
- Use `response_model` so output is validated and filtered to expected schema.
- Keep validation logic in Pydantic models and avoid ad-hoc shape handling in routes.

Read `references/models-settings-and-validation.md` for model and settings guidance.

## 4) Configure Settings And Secrets Safely

- Load configuration from environment and avoid hardcoded secrets.
- Separate environment-specific settings from application logic.
- Follow repository policy: run dependency install/build tooling in Docker, not host.

## 5) Integrate PostgreSQL With Request-Scoped Access

- Use dependency injection to provide request-scoped DB sessions/units of work.
- Ensure cleanup happens deterministically after requests.
- Keep transaction boundaries explicit and observable.

Read `references/postgres-integration.md` for FastAPI + PostgreSQL patterns.

## 6) Apply Security And Error Discipline

- Use explicit auth flows (for example OAuth2/JWT where appropriate).
- Raise `HTTPException` for controlled client-facing failures.
- Configure CORS explicitly; avoid permissive wildcard patterns with credentials.

Read `references/security-errors-and-middleware.md` before finalizing public API behavior.

## 7) Test Critical Paths And Overrides

- Test success, validation failure, auth failure, and dependency failure paths.
- Use dependency overrides to isolate external systems in tests.
- Use async test patterns for async data stores and external integrations.

Read `references/testing-and-quality.md` for test patterns.

## 8) Prepare Runtime And Deployment

- Run with production server settings appropriate to environment.
- Do not combine reload mode with worker-process scaling.
- Keep one process concern per container and scale via replicas/workers deliberately.

Read `references/deployment-and-runtime.md` before shipping.

For source updates and standards review, consult `references/official-sources.md`.
