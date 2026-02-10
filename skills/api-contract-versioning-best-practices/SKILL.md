---
name: api-contract-versioning-best-practices
description: Design, govern, and evolve API contracts across FastAPI, Next.js, PostgreSQL, and Docker deployments without breaking consumers. Use when defining OpenAPI as source of truth, choosing URI or header versioning strategy, applying backward-compatibility rules, introducing or deprecating fields and endpoints, planning deprecation and sunset lifecycle, generating typed clients, or enforcing contract-change gates in CI before release.
---

# API Contract And Versioning Best Practices

Follow this workflow when designing, changing, or reviewing API contracts.

## 1) Define Contract Ownership And Source Of Truth First

- Choose one canonical contract artifact (OpenAPI).
- Assign owners for each API surface and consumer group.
- Keep change policy and approval gates explicit.

Read `references/contract-governance-and-ownership.md`.

## 2) Choose Versioning Strategy Deliberately

- Pick URI versioning, header/media-type versioning, or date-based policy intentionally.
- Use one primary strategy per API surface to avoid ambiguity.
- Define when a change requires a new version versus a backward-compatible update.

Read `references/versioning-strategy-and-compatibility.md`.

## 3) Apply Backward-Compatibility Rules For Schema Evolution

- Treat removing fields, tightening constraints, or changing semantics as breaking.
- Prefer additive changes for non-breaking evolution.
- Keep default behavior explicit when introducing optional fields.

Read `references/versioning-strategy-and-compatibility.md`.

## 4) Govern OpenAPI In FastAPI

- Keep request and response models explicit and versioned.
- Use deterministic `operationId` values for stable client generation.
- Mark endpoints as deprecated in OpenAPI before removal.

Read `references/fastapi-openapi-governance.md`.

## 5) Keep Next.js Consumer Contracts Stable

- Generate typed clients from committed OpenAPI specs.
- Treat type-generation diffs as contract-change signals.
- Isolate version-specific API calls behind server-side client modules.

Read `references/nextjs-client-contracts.md`.

## 6) Run Deprecation And Sunset Lifecycle

- Announce deprecation with timeline, migration path, and owner.
- Use HTTP `Deprecation` and `Sunset` headers where applicable.
- Keep deprecated endpoints available until the committed sunset date.

Read `references/deprecation-and-sunset-lifecycle.md`.

## 7) Enforce Contract Gates In CI/CD

- Validate OpenAPI syntax and lint rules on every change.
- Run contract diff checks to detect breaking changes before merge.
- Block release when breaking changes lack approved version/migration plan.

Read `references/contract-testing-and-ci-gates.md`.

## 8) Plan Rollback And Incident Handling For Contract Breaks

- Keep previous compatible API contract artifact available for rollback.
- Define emergency response for accidental breaking releases.
- Track incident root causes and feed fixes into governance rules.

Read `references/contract-testing-and-ci-gates.md`.

## 9) Communicate Contract Changes To Consumers

- Publish changelog entries with clear upgrade instructions.
- Include sample requests and responses for changed behavior.
- Track consumer migration progress and unresolved blockers.

Read `references/deprecation-and-sunset-lifecycle.md`.

## 10) Verify Before Release

- Confirm OpenAPI artifact matches runtime behavior.
- Confirm consumer-impacting changes include versioning and migration notes.
- Confirm deprecated contract timelines and headers are correct.

For canonical standards and updates, read `references/official-sources.md`.
