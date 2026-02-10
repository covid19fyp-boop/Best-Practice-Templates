---
name: performance-load-testing-best-practices
description: Plan, execute, and operationalize performance and load testing across FastAPI, Next.js, PostgreSQL, and Dockerized environments. Use when defining latency and throughput targets, modeling realistic traffic profiles, selecting load-testing tools, running baseline and stress tests, identifying API and database bottlenecks, setting regression gates in CI, or validating production-readiness before release. Do not use for general unit/integration test strategy; use `testing-best-practices-codex`.
---

# Performance And Load Testing Best Practices

Follow this workflow when designing or reviewing performance validation.

## 1) Define SLO Targets And Test Scope First

- Set latency, error-rate, and throughput targets per critical user journey.
- Define test boundaries: API-only, frontend-plus-API, and full-stack end-to-end.
- Separate baseline, load, stress, and soak objectives explicitly.

Read `references/performance-objectives-and-slos.md`.

## 2) Model Workload Realistically

- Build traffic profiles from expected user behavior, not synthetic uniform loops.
- Define arrival-rate and concurrency assumptions per scenario.
- Include realistic data size and query-shape distributions.

Read `references/workload-modeling-and-test-design.md`.

## 3) Prepare Environment Parity And Isolation

- Run tests in Dockerized environments that match production runtime characteristics.
- Pin image and dependency versions for reproducibility.
- Isolate load-test environments from unrelated noisy workloads.

Read `references/docker-test-environment-parity.md`.

## 4) Instrument Before You Test

- Emit request, queue, and dependency timing metrics before running load.
- Correlate logs, metrics, and traces with scenario/test-run identifiers.
- Ensure database and worker telemetry is available for root-cause analysis.

Read `references/fastapi-nextjs-runtime-performance.md`.
Read `references/postgres-performance-diagnostics.md`.

## 5) Execute Controlled Load Scenarios

- Start from baseline and ramp gradually to target load.
- Use pass/fail thresholds for latency, error rate, and resource saturation.
- Keep scenario scripts version-controlled with clear test metadata.

Read `references/k6-and-locust-execution.md`.

## 6) Diagnose Bottlenecks By Layer

- FastAPI: inspect route latency, dependency waits, and worker saturation.
- Next.js: inspect server-render and route-handler latency under concurrency.
- PostgreSQL: inspect slow queries, lock contention, and connection pressure.

Read `references/fastapi-nextjs-runtime-performance.md`.
Read `references/postgres-performance-diagnostics.md`.

## 7) Tune Safely And Re-Test Iteratively

- Apply one change set at a time and re-run the same scenarios.
- Compare before/after percentile latency and error behavior.
- Keep tuning notes linked to code, config, and schema revisions.

Read `references/workload-modeling-and-test-design.md`.

## 8) Add CI Regression Gates

- Add automated perf smoke or benchmark gates on critical paths.
- Fail builds when regression exceeds agreed thresholds.
- Keep heavy load suites scheduled or pre-release if they exceed CI budget.

Read `references/ci-regression-gates-and-reporting.md`.

## 9) Operationalize Reporting And Capacity Signals

- Publish trend dashboards for latency percentiles and throughput.
- Track saturation indicators (CPU, memory, DB connections, queue depth).
- Use results to update capacity plans and release risk assessments.

Read `references/ci-regression-gates-and-reporting.md`.

## 10) Verify Before Release

- Confirm critical journeys meet SLO under expected and peak profiles.
- Confirm no unresolved bottleneck with known user impact remains.
- Confirm rollback and mitigation plans exist for performance regressions.

For canonical standards and updates, read `references/official-sources.md`.
