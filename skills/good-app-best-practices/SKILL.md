---
name: good-app-best-practices
description: Define and govern application quality policy across correctness, security, reliability, performance, maintainability, and operational readiness. Use when setting cross-team quality baselines, release-readiness governance, and quality debt prioritization. Do not use for deep implementation in a specific layer; route to dedicated domain skills such as `security-best-practices`, `observability-best-practices`, `performance-load-testing-best-practices`, and `testing-best-practices-codex`.
---

# Good App Best Practices

Follow this workflow to define and enforce full-app quality.

## 1) Define Quality Model And Definition Of Done

- Set quality attributes explicitly (correctness, security, reliability, usability, performance, maintainability, operability).
- Define measurable acceptance criteria for each attribute.
- Require each feature to satisfy quality criteria before release.

Read `references/quality-model-and-definition-of-done.md`.

## 2) Set Release Governance

- Define go/no-go checks and approvers.
- Require rollback criteria for high-risk changes.
- Keep deployment strategy aligned to risk (staged rollout, canary, or controlled cutover).

Read `references/release-governance-and-risk.md`.

## 3) Enforce Security, Reliability, And Performance Baselines

- Apply secure-by-default controls and secret hygiene.
- Define SLOs and error-budget policy for critical journeys.
- Track performance budgets and regression alerts.
- Delegate implementation details to domain-specific skills (`security-best-practices`, `observability-best-practices`, `performance-load-testing-best-practices`).

Read `references/security-reliability-performance.md`.

## 4) Protect Maintainability And Operability

- Keep module boundaries and contracts explicit.
- Keep observability and runbooks current with product changes.
- Remove stale quality debt continuously.

Read `references/maintainability-and-operations.md`.

## 5) Run Continuous Quality Reviews

- Run periodic architecture and quality posture reviews.
- Use defect and incident trends to reprioritize backlog.
- Keep ownership and accountability explicit for each quality objective.

Read `references/review-cadence-and-quality-metrics.md`.

For canonical updates and source verification, consult `references/official-sources.md`.
