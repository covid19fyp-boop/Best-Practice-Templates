# Flag Taxonomy And Governance

## 1) Classify Flags By Intent

- Release flags: short-lived control for staged rollout.
- Experiment flags: measurement-driven variation control.
- Operational flags: long-lived safety controls (kill switches).

## 2) Require Metadata At Creation

- Owner and escalation contact.
- Business purpose and affected systems.
- Environment scope and cleanup deadline.

## 3) Apply Change Control

- Require review for targeting changes in production.
- Require audit trail for rule edits and emergency toggles.
- Restrict mutation permissions by role and environment.

## 4) Governance Checklist

- Confirm each active flag has lifecycle stage.
- Confirm temporary flags have removal date.
- Confirm operational flags are linked to incident runbooks.
