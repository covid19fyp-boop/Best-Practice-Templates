# Rollout Strategies And Guardrails

## 1) Use Progressive Cohort Expansion

- Start with internal users or canary cohort.
- Expand in fixed steps when metrics remain healthy.
- Pause automatically on threshold violations.

## 2) Define Guardrails Before Rollout

- Latency and error-rate thresholds.
- Conversion or business KPI protection bounds.
- Operational saturation thresholds (queue depth, DB pressure).

## 3) Keep Rollout Rules Understandable

- Prefer simple inclusion rules over deeply nested logic.
- Keep segment definitions stable during the same rollout window.
- Document rollback trigger and owner before first expansion.

## 4) Rollout Checklist

- Confirm initial cohort and each expansion step are approved.
- Confirm stop and rollback action can be executed quickly.
- Confirm metrics dashboard is live before enabling production traffic.
