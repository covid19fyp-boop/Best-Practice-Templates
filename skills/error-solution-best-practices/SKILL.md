---
name: error-solution-best-practices
description: Design and improve end-to-end error handling and resolution workflows across frontend, backend, database, and operations. Use when defining error contracts, triaging production incidents, creating remediation playbooks, and reducing repeat failures. Do not use for full observability platform design (use `observability-best-practices`) or broad testing strategy (use `testing-best-practices-codex`).
---

# Error Solution Best Practices

Follow this workflow for error architecture, triage, and durable fixes.

## 1) Define Unified Error Taxonomy

- Classify errors by layer and failure type.
- Separate user-safe messages from diagnostic detail.
- Assign stable error codes for automation and analytics.

Read `references/error-taxonomy-and-contracts.md`.

## 2) Standardize Error Contracts And Telemetry

- Use consistent API error envelope and correlation IDs.
- Capture client and server errors with shared identifiers.
- Ensure logs, metrics, and traces can be correlated quickly.

Read `references/observability-and-diagnostics.md`.

## 3) Run Structured Triage

- Define severity levels with clear operational thresholds.
- Isolate symptom, trigger, and root cause before selecting fixes.
- Keep escalation paths and ownership explicit.

Read `references/triage-and-root-cause.md`.

## 4) Choose And Verify Solutions

- Prioritize fixes by impact, frequency, and blast radius.
- Apply mitigation first during active incidents, then structural fix.
- Define post-fix verification via tests and runtime signals.

Read `references/remediation-playbooks.md`.

## 5) Prevent Recurrence

- Write actionable postmortems and convert actions to backlog.
- Add missing tests and alerts for newly discovered failure modes.
- Review repeat incidents periodically for systemic gaps.

Read `references/incident-learning-and-prevention.md`.

For canonical updates and source verification, consult `references/official-sources.md`.
