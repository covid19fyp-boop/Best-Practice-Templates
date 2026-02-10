---
name: technical-debt-controls
description: Control and reduce technical debt with enforceable quality gates, refactoring cadence, and definition-of-done standards. Use when preventing rework, triaging debt, and maintaining delivery speed over time.
---

# Technical Debt Controls

## Instructions

1. Make debt visible:
   - Track debt issues with explicit labels and impact notes.
   - Link debt to affected modules and risks.
2. Define a strict definition of done:
   - Lint and format clean
   - Type checks pass
   - Tests pass
   - Migrations safe
   - Docs/ADRs updated when architecture changes
3. Reserve recurring capacity for debt reduction in each cycle.
4. Enforce small-change discipline:
   - Keep PRs narrow
   - Separate feature work from deep refactors unless required
5. Refactor by seams:
   - Introduce interfaces first
   - Move behavior incrementally
   - Remove old paths only after verification
6. Use CI to enforce non-negotiable standards.
7. Review debt trends monthly and rebalance priorities.

Use with:

- `skills/sdlc-personal-dev/SKILL.md`
- `skills/testing-strategy/SKILL.md`
- `skills/release-and-versioning/SKILL.md`

## Decision Criteria

- Pay debt immediately when it blocks correctness, security, or release safety.
- Schedule debt when impact is moderate but growing.
- Accept temporary debt only with owner, expiry, and exit condition.
- Reject debt that hides architectural boundary violations.

## Examples

### Example 1: Debt register bootstrap

```text
Create an initial technical debt register from current repo state.
Categorize by severity, interest cost, owner, and target sprint.
```

### Example 2: Definition-of-done update

```text
Draft a definition-of-done for this project that includes lint, types, tests, migrations, docs, and security checks.
Keep it enforceable in CI.
```

### Example 3: Controlled refactor plan

```text
Plan a refactor to separate finance domain rules from API handlers.
Use incremental seams and include rollback points.
```

## Anti-Patterns

- Treating debt as "later" work without owners or dates.
- Shipping quality gate failures under deadline pressure.
- Combining unrelated cleanup with feature delivery.
- Allowing codegen output to bypass review standards.

## Checklist

- [ ] Debt items are tracked with impact and owner.
- [ ] Definition of done is explicit and automated where possible.
- [ ] Refactoring budget exists in each cycle.
- [ ] CI enforces lint, types, tests, and migration checks.
- [ ] Architecture/docs updates are part of completion criteria.
