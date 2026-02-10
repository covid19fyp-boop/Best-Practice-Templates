---
name: sdlc-personal-dev
description: Run a maintainable SDLC loop for solo or small-team apps with low technical debt and long-term evolution. Use when planning or executing requirements, architecture, implementation, testing, release, and operations work.
---

# SDLC Personal Development

## Instructions

1. Define one outcome-focused slice.
2. Write acceptance criteria, non-goals, and risk notes for that slice.
3. Confirm domain invariants and data sensitivity before design.
4. Choose the smallest reversible design that respects module boundaries.
5. Implement with explicit contracts, migrations, and tests as part of the same change.
6. Verify with automated checks before considering the change complete.
7. Release with changelog, version update, and rollback notes.
8. Observe runtime signals and capture debt or follow-up work immediately.
9. Feed findings into the next iteration and repeat.

Use specialized skills for deep topics:

- Architecture: `skills/architecture-modular-monolith/SKILL.md`
- Splitting strategy: `skills/architecture-splitting-strategy/SKILL.md`
- Testing: `skills/testing-strategy/SKILL.md`
- Data/migrations: `skills/database-and-migrations/SKILL.md`
- Security: `skills/security-and-secrets/SKILL.md`
- Release: `skills/release-and-versioning/SKILL.md`
- Codex operations: `skills/codex-cli-integration/SKILL.md`

## Decision Criteria

- Prefer a modular monolith baseline unless clear split signals exist.
- Prefer reversible changes over one-way transformations.
- Prefer explicit contracts over implicit coupling.
- Prefer many fast tests plus targeted integration coverage.
- Prefer small, reviewable diffs over large cross-cutting edits.
- Treat security, observability, and migration safety as definition-of-done items.

## Examples

### Example 1: Plan a weekly slice

```text
Create a one-week SDLC plan for adding recurring expense tracking.
Output: acceptance criteria, non-goals, risks, module boundaries, migration needs, tests, release checklist.
Keep scope minimal and reversible.
```

### Example 2: Convert idea into execution checklist

```text
Turn "add transaction tagging" into an SDLC execution checklist:
requirements -> architecture -> implementation -> tests -> release -> operations.
Highlight debt risks and rollback points.
```

### Example 3: Post-release learning loop

```text
Given a release that increased error rate, run a maintenance loop:
identify cause, define corrective slice, update tests/alerts, and log debt items for next sprint.
```

## Anti-Patterns

- Building features without clear acceptance criteria.
- Treating migrations, docs, and observability as optional.
- Shipping large unrelated refactors with feature work.
- Ignoring technical debt interest until it blocks delivery.
- Choosing microservices by default without split signals.

## Checklist

- [ ] Slice has clear scope, acceptance criteria, and non-goals.
- [ ] Domain invariants and data sensitivity are documented.
- [ ] Module boundaries and interfaces are explicit.
- [ ] Tests cover domain rules and boundary behavior.
- [ ] Migration and rollback paths are defined.
- [ ] Changelog/version update is prepared.
- [ ] Observability and security updates are included.
- [ ] Debt items are recorded with owner and due window.
