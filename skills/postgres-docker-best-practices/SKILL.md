---
name: postgres-docker-best-practices
description: Design, deploy, and operate PostgreSQL in Docker and Docker Compose with safe defaults. Use when creating a Postgres container stack, choosing image tags and init scripts, configuring persistence, setting authentication and secrets, adding health checks and startup dependencies, or planning backup and recovery for containerized PostgreSQL.
---

# PostgreSQL In Docker Best Practices

Follow this workflow for new setups and production reviews.

## 1) Define The Operational Target

- Classify environment: local development, CI integration tests, staging, or production.
- Classify topology: single PostgreSQL container, Postgres plus app services, or replicated architecture.
- Classify durability goals: disposable data, daily recovery point objectives, or point-in-time recovery.

## 2) Choose Image And Initialization Strategy

- Prefer the official Postgres image.
- Pin major/minor tags explicitly and avoid `latest` for non-ephemeral environments.
- Initialize with official image environment variables and `/docker-entrypoint-initdb.d` scripts.
- Keep initialization idempotent and predictable.

Read `references/image-init-and-config.md` before writing Dockerfiles or compose files.

## 3) Configure Persistent Storage And Runtime Shape

- Persist database state with Docker volumes, not writable container layers.
- Set `PGDATA` deliberately when filesystem layout requires it.
- Set container shared memory size when workload needs it (`shm_size`/`--shm-size`).
- Keep storage and I/O choices consistent with workload size and durability requirements.

## 4) Apply Authentication And Secret Hygiene

- Never rely on trust authentication in production.
- Prefer SCRAM-based password auth for host connections.
- Use runtime secret injection instead of hardcoding credentials in compose files.
- Use `_FILE` environment variable patterns where supported by the official image.

Read `references/security-auth-and-secrets.md` before finalizing deployment manifests.

## 5) Wire Compose Startup And Health Correctly

- Add Postgres health checks using `pg_isready`.
- Gate dependent services on database health, not only start order.
- Keep network exposure minimal and explicit.
- Keep logs available through stdout/stderr for platform observability.

Read `references/compose-and-runtime-ops.md` for compose dependency patterns.

## 6) Plan Backup And Recovery Upfront

- Decide on backup method before production rollout.
- Use physical backups and/or WAL archiving based on recovery objectives.
- Test restore procedures regularly in an isolated environment.
- Treat recovery verification as a release gate for schema changes.

Read `references/backup-and-recovery.md` when defining operational runbooks.

## 7) Verify Before Shipping

- Confirm clean bootstrapping of a new volume.
- Confirm restart behavior with existing volumes.
- Confirm auth mode, secret loading, and least-privilege connectivity.
- Confirm backup/restore procedures pass with representative data.

For standards audits or updates, consult `references/official-sources.md`.
