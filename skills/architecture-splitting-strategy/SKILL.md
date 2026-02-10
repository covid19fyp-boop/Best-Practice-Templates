---
name: architecture-splitting-strategy
description: Decide when to keep a modular monolith versus split into services, and execute a low-risk extraction plan. Use when evaluating service boundaries, migration readiness, and reversible extraction strategy.
---

# Architecture Splitting Strategy

## Instructions

1. Evaluate split signals before proposing services:
   - Team topology and ownership pressure
   - Independent deployment need
   - Stable boundaries over time
   - Isolated scaling or reliability needs
   - Compliance-driven separation
2. If signals are weak, keep the modular monolith and improve internal contracts.
3. If signals are strong, prepare extraction in phases:
   - Stabilize internal interface
   - Add contract tests and telemetry
   - Introduce strangler routing seam
   - Migrate endpoint-by-endpoint
   - Contract and remove legacy path
4. Keep rollback designed from day one:
   - Traffic rollback
   - Schema rollback posture
   - Data reconciliation strategy
5. Split database last unless there is a hard compliance driver.

Use with:

- `skills/architecture-modular-monolith/SKILL.md`
- `skills/database-and-migrations/SKILL.md`
- `skills/release-and-versioning/SKILL.md`

## Decision Criteria

- Keep monolith when team is small, boundaries are evolving, and one release train works.
- Split when boundaries are stable and independent deploy/scaling/isolation needs are recurring.
- Favor incremental strangler patterns over big-bang rewrites.
- Favor reversible data strategies over one-shot migrations.

## Examples

### Example 1: Split decision memo

```text
Create a split decision memo for extracting finance from our modular monolith.
Use signals: team, deploy cadence, boundary stability, scaling, reliability, compliance.
Conclude keep-or-split with rationale and risks.
```

### Example 2: Migration roadmap

```text
Draft a phased strangler roadmap to extract the reporting module.
Include seam design, contract tests, routing rollout, rollback strategy, and decommission criteria.
```

### Example 3: Readiness review

```text
Assess whether current module boundaries are extraction-ready.
List blocking issues and concrete pre-split actions for the next two sprints.
```

## Anti-Patterns

- Splitting services to "future-proof" without current pressure.
- Moving code and data in one irreversible release.
- Ignoring observability and contract tests during extraction.
- Creating shared databases with unclear ownership after split.

## Checklist

- [ ] Split signals are explicit and evidence-based.
- [ ] Internal contract is stable and tested.
- [ ] Strangler seam and rollback path are defined.
- [ ] Data migration strategy is incremental and auditable.
- [ ] Legacy path removal criteria are documented.
