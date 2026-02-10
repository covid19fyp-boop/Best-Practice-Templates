---
name: observability-best-practices
description: Design, implement, and operate observability across FastAPI, Next.js, PostgreSQL, and Docker-based deployments. Use when defining telemetry standards, instrumenting application and database paths, building collection pipelines, designing dashboards and alert rules, setting SLO and error-budget workflows, or improving incident response and reliability verification gates before release.
---

# Observability Best Practices

Follow this workflow when building or reviewing observability posture for this stack.

## 1) Define Outcomes And Service Taxonomy First

- Identify critical user journeys and reliability-sensitive operations.
- Define stable service boundaries and service labels per environment.
- Assign ownership for each dashboard and alert group.

Read `references/telemetry-foundations.md`.

## 2) Standardize Telemetry Contract

- Use traces, metrics, and logs together; correlate by trace, span, and request IDs.
- Standardize OpenTelemetry resource attributes and context propagation across services.
- Enforce metric naming, units, and cardinality budgets.

Read `references/telemetry-foundations.md`.
Read `references/pipeline-and-collector.md`.

## 3) Instrument FastAPI Critical Paths

- Instrument request lifecycle, dependency calls, and error paths.
- Add middleware for request timing and correlation context.
- Keep custom span attributes low cardinality and operationally useful.

Read `references/fastapi-observability.md`.

## 4) Instrument Next.js Server Runtime

- Enable `instrumentation.ts` registration and OpenTelemetry setup.
- Preserve trace context between browser, Next.js, and backend APIs.
- Focus telemetry on Route Handlers, Server Actions, and external dependencies.

Read `references/nextjs-observability.md`.

## 5) Instrument PostgreSQL Query And Lock Visibility

- Enable `pg_stat_statements` and monitor high-cost query patterns.
- Configure slow-query logging and consistent log prefix fields.
- Add targeted execution plan diagnostics for recurring slow paths.

Read `references/postgres-observability.md`.

## 6) Operate Container And Runtime Observability

- Configure container logging driver strategy explicitly.
- Use health checks to improve startup and failure detection behavior.
- Expose runtime metrics endpoints intentionally and securely.

Read `references/docker-runtime-observability.md`.

## 7) Build A Clear Telemetry Pipeline

- Route telemetry through OpenTelemetry Collector receivers, processors, and exporters.
- Use recording rules to precompute expensive Prometheus queries.
- Align retention and storage tiers with debugging and incident needs.

Read `references/pipeline-and-collector.md`.

## 8) Design Dashboards And Alerts For Actionability

- Build dashboards around golden signals and top user journeys.
- Add alert rules with explicit severity labels, hold windows, and runbook links.
- Prefer symptom and SLO burn-rate alerts over noisy low-signal conditions.

Read `references/dashboards-alerting-slos.md`.

## 9) Close The Incident And Learning Loop

- Ensure each page has owner, escalation path, and first-response steps.
- Review MTTA, MTTR, and false-positive trends.
- Feed incidents back into instrumentation, alerts, and tests.

Read `references/dashboards-alerting-slos.md`.

## 10) Verify Before Release

- Confirm each critical flow emits correlated traces, metrics, and logs.
- Confirm dashboards and alerts are tested with representative failures.
- Confirm on-call runbooks and ownership metadata are current.

For canonical standards and updates, read `references/official-sources.md`.
