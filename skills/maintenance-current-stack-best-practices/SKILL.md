---
name: maintenance-current-stack-best-practices
description: Maintain FastAPI + Next.js + PostgreSQL + Docker systems through ongoing maintenance operations such as dependency drift control, patch cadence, upgrade waves, and runtime hygiene. Use when planning maintenance windows and operational upkeep for an existing stack. Do not use for net-new architecture design (use `fullstack-fastapi-nextjs-postgres-docker`) or deep migration/backup design (use `alembic-migration-best-practices` and `backup-restore-best-practices`).
---

# Maintenance Current Stack Best Practices

Follow this workflow for maintenance planning, risk review, and execution.

## 1) Baseline Stack State And Drift

- Inventory versions for FastAPI, Starlette, Pydantic, Next.js, React, Node.js, PostgreSQL, Docker, and base images.
- Compare deployed versions against supported windows and security advisories.
- Classify drift as `urgent`, `planned`, or `defer`.

Read `references/stack-inventory-and-cadence.md`.

## 2) Plan Upgrade And Patch Waves

- Group upgrades into low-risk and high-risk waves.
- Define dependency order and rollback criteria before execution.
- Keep change windows explicit and environment promotion controlled.

Read `references/upgrade-playbooks.md`.

## 3) Protect Data And Schema Safety

- Validate migration sequencing and lock impact.
- Run backup and restore drills before risky schema/data operations.
- Confirm RPO/RTO targets are realistic and tested.
- For deep implementation patterns, route to `alembic-migration-best-practices` and `backup-restore-best-practices`.

Read `references/postgres-maintenance-and-recovery.md`.

## 4) Maintain Runtime And Supply Chain Hygiene

- Keep images minimal, patched, and non-root by default.
- Keep health checks and startup probes aligned to real readiness.
- Enforce dependency/image scanning in CI.

Read `references/docker-runtime-maintenance.md`.

## 5) Close With Operational Verification

- Re-run regression tests and smoke checks after each wave.
- Update runbooks, dashboards, and incident playbooks.
- Log deferred items and revisit in next maintenance cycle.

Read `references/verification-and-operations.md`.

For canonical updates and source verification, consult `references/official-sources.md`.
