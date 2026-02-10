# AGENTS.md

## Download Rule
- ALWAYS use DOCKER for downloads and dependency installation.
- DO NOT download or install anything to the local host environment.
- Keep the local environment clean by running setup, builds, and tooling inside containers.

## Skills Rule
- ALWAYS refer to relevant skills BEFORE generating code.
- Use `fullstack-fastapi-nextjs-postgres-docker` when the task spans 2 or more stack layers (frontend, backend, database, docker, CI/release flow).
- Use stack-specific skills for isolated tasks:
- `fastapi-best-practices` for backend API/service design and implementation.
- `nextjs-best-practices` for frontend app/routing/rendering concerns.
- `postgres-docker-best-practices` for PostgreSQL container setup, migrations, backup/recovery.
- `docker-best-practices` for container/build/runtime concerns not specific to PostgreSQL.
- `soft-delete-best-practices` for delete/restore behavior, `deleted_at` schema design, active-row uniqueness, retention, and purge workflows.
- `module-consistency-best-practices` for consistent module structure, naming, import boundaries, and cross-layer contract organization.
- `testing-best-practices-codex` for test scope selection, Dockerized test execution, flaky-test control, and pre-merge quality gates.
- `codex-research-best-practices` when the task is general Codex research (official docs, feature behavior, safety/verification workflow, prompt/research method), and output must be citation-backed.
- `codex-rfc-codebase-research` when the task is RFC-level engineering analysis tied to an actual codebase (module tracing, contract/runtime validation, migration/rollback risk, and implementation tradeoff decisions).
- `codex-cli-windows11-vscode-best-practices` when setting up or operating Codex CLI on Windows 11 with VS Code (WSL vs native decisions, IDE integration, config/profiles, approval/sandbox policy, and environment troubleshooting).
- `sdlc-codex-cli-best-practices` when using Codex CLI across SDLC phases (planning, implementation, verification, review, CI/release gates, and post-release operations).
- `ci-cd-best-practices` when designing or reviewing CI/CD pipelines (build/test/deploy stage design, quality gates, secrets and supply-chain security, deployment strategy, rollback planning, and delivery metrics).
- `attachment-best-practices` when designing or reviewing file attachment workflows (object storage key structure, metadata schema, upload/download contracts, soft-delete/restore, retention/purge jobs, and attachment security/testing).
- `backup-restore-best-practices` when designing or auditing backup and recovery for FastAPI + Next.js + PostgreSQL + Docker (RPO/RTO definition, logical/physical backups, PITR, restore runbooks, and release recovery gates).
- `security-best-practices` when designing or reviewing cross-stack security controls (threat boundaries, FastAPI/Next.js authz/authn and data exposure, PostgreSQL access hardening, Docker/runtime secrets, and CI/CD supply-chain defenses).
- `observability-best-practices` when designing or operating cross-stack observability (OpenTelemetry instrumentation, logs/metrics/traces correlation, telemetry pipelines, dashboards, alert rules, SLO/error-budget workflows, and incident response readiness).
- `auth-best-practices` when designing or reviewing cross-stack authentication and authorization (session/token strategy, FastAPI route protection, Next.js auth boundaries, OAuth/OIDC integration, password/MFA controls, token/session revocation, and auth incident readiness).
- `api-contract-versioning-best-practices` when designing or reviewing API contract governance and evolution (OpenAPI source-of-truth, versioning strategy, backward-compatibility rules, deprecation/sunset policy, consumer migration, and CI contract-break detection).
- `alembic-migration-best-practices` when designing or reviewing Alembic migration workflows (revision authoring, autogenerate review, expand-contract rollout, PostgreSQL lock-aware DDL, branch/merge hygiene, Dockerized migration execution, and rollback/recovery planning).
- `background-jobs-best-practices` when designing or reviewing asynchronous job systems (FastAPI in-process task boundaries, durable worker queues, retry/backoff and idempotency, dead-letter handling, periodic scheduling, PostgreSQL queue patterns, and Dockerized worker operations/testing).
- `performance-load-testing-best-practices` when designing or reviewing performance validation workflows (SLO/latency targets, realistic workload modeling, k6/Locust execution, FastAPI/Next.js/PostgreSQL bottleneck diagnostics, Dockerized test parity, and CI regression gates).
- `feature-flag-release-best-practices` when designing or reviewing flag-driven release controls (flag taxonomy/lifecycle, targeting and stickiness, progressive rollout and kill-switch safety, FastAPI/Next.js implementation boundaries, testing/observability gates, and stale-flag cleanup policy).
- `codex-cli-hook-best-practices` when designing or reviewing Codex CLI hook-style automation (notify command handlers, `codex exec --json` event consumers, app-server notification integrations, command/rules safety guardrails, and hook reliability/testing).
- Combine full-stack and specific skills when needed:
- Use full-stack skill first for architecture and integration decisions.
- Then use specific skills for deep implementation details in each layer.

## Skill Creation Scope Rule
- When creating or updating any skill, create it only inside this repository.
- Do not create or modify skills outside this repository path.
- Store repository skills under `skills/` unless explicitly instructed otherwise.

## Language and Locale Rule
- Use English for all communication and documentation.
- Follow Malaysian formatting conventions where applicable (for example: `DD/MM/YYYY` dates and 24-hour time).

## Database Rule
- Use PostgreSQL as the project database.

## Version Control Rule
- Use Git for version control.

## Framework Rule
- Use FastAPI for backend APIs.
- Use Next.js for the frontend application.
