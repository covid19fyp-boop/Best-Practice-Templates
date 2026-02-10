# Flag Lifecycle And Cleanup

## 1) Track Lifecycle States

- Define states such as `draft`, `active`, `ramping`, `stable`, `deprecated`, and `archived`.
- Move flags through states with explicit ownership.
- Keep lifecycle state visible in code and flag platform metadata.

## 2) Control Technical Debt

- Set review cadence for stale temporary flags.
- Add automated reminders or CI checks for expired cleanup dates.
- Remove dead branches and platform entries after rollout completion.

## 3) Decommissioning Workflow

- Freeze targeting rules before removal PR.
- Remove flag checks and fallback code in one coherent change set.
- Verify behavior parity after cleanup deployment.

## 4) Cleanup Checklist

- Confirm no active traffic depends on the flag.
- Confirm docs/runbooks are updated post-removal.
- Confirm archived metadata preserves audit trail.
