---
name: backup-restore-best-practices
description: Design and operate backup and restore workflows for FastAPI, Next.js, PostgreSQL, and Docker-based deployments. Use when defining recovery objectives, choosing logical vs physical PostgreSQL backups, implementing point-in-time recovery, validating restore runbooks, or hardening release and operations procedures against data-loss incidents.
---

# Backup Restore Best Practices

Follow this workflow when implementing or reviewing backup and recovery.

## 1) Define Recovery Objectives First

- Set target RPO and RTO per environment.
- Define what must be restorable: database, object storage, config, and secrets.
- Define environment priority for restore order.

Read `references/recovery-objectives-and-scope.md`.

## 2) Choose PostgreSQL Backup Strategy By Objective

- Use logical backups for portability and selective restore flows.
- Use physical base backups plus WAL archiving for point-in-time recovery.
- Validate backup schedule against RPO targets.

Read `references/postgres-backup-and-pitr.md`.

## 3) Align Docker And Runtime Data Persistence

- Persist PostgreSQL data on named volumes, not container layers.
- Keep backup jobs and restore jobs as explicit operational workflows.
- Keep volume lifecycle and backup retention policies documented.

Read `references/docker-volume-and-compose-ops.md`.

## 4) Keep FastAPI And Next.js Recovery-Compatible

- Keep migrations controlled and versioned; block deploy on migration failure.
- Ensure FastAPI startup handles temporary dependency recovery states.
- Revalidate Next.js cached data and API paths after restore events.

Read `references/fastapi-nextjs-recovery-integration.md`.

## 5) Implement Restore Runbooks, Not Just Backups

- Document full restore sequence with owner, commands, and verification checks.
- Include point-in-time restore procedure where WAL archiving is enabled.
- Include rollback or forward-fix decision points after failed restore.

Read `references/restore-runbooks-and-drills.md`.

## 6) Add Recovery Quality Gates

- Run scheduled restore drills in isolated environments.
- Validate schema compatibility and application startup on restored data.
- Fail release when backup/restore verification is stale or failing.

Read `references/testing-and-release-gates.md`.

## 7) Verify Before Handoff

- Confirm backup artifacts are accessible and integrity-checked.
- Confirm restore steps meet RTO/RPO targets in recent drills.
- Confirm post-restore smoke checks are explicit and repeatable.

For canonical source updates, read `references/official-sources.md`.
