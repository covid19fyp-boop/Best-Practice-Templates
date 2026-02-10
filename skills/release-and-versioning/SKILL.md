---
name: release-and-versioning
description: Run reliable release management with semantic versioning, changelog discipline, CI/CD gates, and rollback planning. Use when preparing releases, coordinating migrations, and controlling production risk over time.
---

# Release And Versioning

## Instructions

1. Define release scope and compatibility impact early.
2. Use semantic versioning where APIs/contracts are consumed by others.
3. Maintain a changelog entry for every release candidate.
4. Require release gates:
   - Lint and type checks
   - Required test suites
   - Migration safety checks
   - Smoke checks
5. Coordinate schema and app rollout order using expand -> migrate -> contract.
6. Use feature flags for incomplete or high-risk behavior when needed.
7. Prepare rollback plan before deployment:
   - Traffic rollback
   - App rollback
   - Data rollback posture
8. Tag releases and capture deployment metadata.
9. Track delivery health via metrics such as deployment frequency, lead time, failure rate, and restore time.

Use with:

- `skills/testing-strategy/SKILL.md`
- `skills/database-and-migrations/SKILL.md`
- `skills/technical-debt-controls/SKILL.md`

## Decision Criteria

- Bump major version for breaking contract changes.
- Block release if rollback strategy is undefined.
- Delay release when migration risk exceeds current observability/recovery capability.
- Prefer smaller, frequent releases over large batches.

## Examples

### Example 1: Release checklist generation

```text
Generate a release checklist for v1.4.0 including tests, migrations, smoke checks, changelog, and rollback steps.
```

### Example 2: Versioning decision

```text
Given API response schema changes and one removed field, determine SemVer bump and deprecation messaging.
```

### Example 3: Rollback playbook

```text
Draft rollback playbook for a failed deployment with partial traffic shift.
Include app rollback, schema safety, and communication steps.
```

## Anti-Patterns

- Manual "tribal knowledge" releases without documented steps.
- Releasing breaking API changes without compatibility window.
- Running destructive migrations in the same step as risky app changes.
- Skipping changelog and version tags after deployment.

## Checklist

- [ ] Release scope and compatibility impact are documented.
- [ ] Version bump and changelog are prepared.
- [ ] CI gates and smoke checks pass.
- [ ] Migration rollout sequence is safe and verified.
- [ ] Rollback plan is explicit and tested where possible.
- [ ] Release tags and metadata are captured.
