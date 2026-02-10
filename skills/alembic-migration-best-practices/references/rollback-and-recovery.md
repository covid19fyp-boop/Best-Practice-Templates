# Rollback And Recovery

## 1) Define Rollback Class Per Migration

- Fully reversible: safe downgrade path exists.
- Conditionally reversible: downgrade depends on preconditions.
- Irreversible: requires restore or compensating forward migration.

## 2) Treat Downgrade As A Product Decision

- Implement downgrade only when operationally meaningful.
- Mark intentionally irreversible migrations clearly in code and release notes.
- Keep operator runbooks aligned with real rollback capabilities.

## 3) Pair Migration Rollback With Backup Readiness

- Validate backup availability before high-risk releases.
- Test restore path in non-production environment regularly.
- Keep RPO and RTO targets explicit for migration incidents.

## 4) Incident Checklist

- Confirm stop condition for further migration rollout.
- Confirm communication path to application and operations owners.
- Confirm restore and forward-fix decision criteria are documented.
