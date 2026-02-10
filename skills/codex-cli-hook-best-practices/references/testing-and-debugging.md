# Testing And Debugging

## 1) Test Hook Paths In Isolation

- Unit-test payload parsing and routing logic.
- Validate notifier command behavior with mock payloads.
- Validate event-stream parser against representative run samples.

## 2) Test End-To-End Behavior

- Run integration tests for notify, event-stream, and policy-guard paths.
- Simulate provider and downstream failures.
- Verify safe fallback behavior and incident visibility.

## 3) Debugging Workflow

- Capture hook command stderr/stdout for failed runs.
- Correlate failures with Codex run metadata.
- Reproduce with smallest possible command and config surface.

## 4) Verification Checklist

- Confirm every critical hook has a failure test case.
- Confirm parser behavior on unknown event fields is safe.
- Confirm stale or unused hooks are removed during release cleanup.
