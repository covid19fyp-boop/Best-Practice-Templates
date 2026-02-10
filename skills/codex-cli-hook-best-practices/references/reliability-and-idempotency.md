# Reliability And Idempotency

## 1) Keep Hook Actions Safe To Repeat

- Use deterministic idempotency keys for side-effectful actions.
- Store minimal execution state for duplicate suppression.
- Avoid non-idempotent external writes without guard checks.

## 2) Bound Runtime Risk

- Add timeout and retry policy for each downstream dependency.
- Classify errors into retryable and terminal categories.
- Route terminal failures to manual triage queue.

## 3) Add Operational Visibility

- Track hook success rate, failure rate, and latency percentiles.
- Log session and correlation identifiers for root-cause analysis.
- Alert on sustained degradation and spike anomalies.

## 4) Reliability Checklist

- Confirm timeout values are explicit and test-covered.
- Confirm retries do not amplify failure cascades.
- Confirm fallback mode preserves safe baseline behavior.
