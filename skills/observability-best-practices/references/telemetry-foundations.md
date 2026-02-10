# Telemetry Foundations

## 1) Define The Reliability Scope First

- Define user-visible critical journeys before choosing tools.
- Track golden signals per service: latency, traffic, errors, saturation.
- Set alert ownership and escalation path at design time.

## 2) Use All Three Signals Together

- Use traces for causal path and latency attribution.
- Use metrics for trend, SLO, and alert evaluation.
- Use logs for event details and forensic context.

OpenTelemetry defines traces, metrics, and logs as distinct signals and recommends using them together for complete observability.

## 3) Standardize Identity And Context

- Set stable `service.name` and environment metadata.
- Require context propagation across service boundaries.
- Preserve W3C Trace Context and baggage when crossing HTTP boundaries.

## 4) Enforce Metric Naming And Cardinality Controls

- Follow Prometheus naming conventions: include unit suffixes and `_total` for counters.
- Keep labels bounded and query-oriented.
- Ban unbounded label values (for example: raw user ID, request ID, UUID).

## 5) Baseline Telemetry Contract

Use this minimum contract across all services:

- Request volume by route/template and status class.
- Request latency histogram for server endpoints.
- Error counters with coarse error category labels.
- Dependency latency and error metrics (DB, cache, external APIs).
- Structured logs with request and trace correlation IDs.

## 6) Implementation Checklist

- Define a service catalog and ownership map.
- Define a shared telemetry naming guideline.
- Verify that every critical flow can be traced end to end.
- Verify that at least one user-impacting symptom alert exists per critical flow.
- Verify runbook links are included in alert annotations.
