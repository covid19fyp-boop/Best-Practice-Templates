# Performance Objectives And SLOs

## 1) Define Service-Level Objectives Per Journey

- Define SLI metrics for latency, error rate, and availability.
- Set percentile targets (for example p95 or p99) by critical endpoint or flow.
- Separate interactive user SLOs from batch or async workflow SLOs.

## 2) Define Test Types Explicitly

- Baseline: current behavior at low-to-moderate traffic.
- Load: expected peak traffic with steady-state duration.
- Stress: exceed expected peak to identify breakpoints.
- Soak: sustained load to detect memory and resource leaks.

## 3) SLO Checklist

- Confirm each critical flow has measurable SLI and target threshold.
- Confirm threshold ownership and escalation path are assigned.
- Confirm test acceptance criteria are machine-verifiable.
