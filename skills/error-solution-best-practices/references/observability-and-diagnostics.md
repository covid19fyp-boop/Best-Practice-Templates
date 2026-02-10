# Observability And Diagnostics

## 1) Correlation Strategy

- Propagate request IDs and trace IDs across frontend, API, workers, and database jobs.
- Log error codes and context fields consistently.
- Keep dashboards aligned to key error classes and severity.

## 2) Signal Quality

- Track error rate, latency, and saturation together.
- Avoid alert noise by tuning thresholds and deduplication.
- Keep runbook links attached to alert definitions.

## 3) Debugging Readiness

- Capture enough context to reproduce failures safely.
- Keep PII and secret redaction in logs by default.
