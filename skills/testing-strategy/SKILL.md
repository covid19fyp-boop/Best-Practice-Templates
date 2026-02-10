---
name: testing-strategy
description: Build a practical, CI-friendly test portfolio for modular monolith systems. Use when defining unit/integration/e2e balance, fixtures, contract tests, and merge gates for reliable delivery.
---

# Testing Strategy

## Instructions

1. Define a test portfolio before writing tests:
   - Unit tests for domain rules first
   - Integration tests for DB/adapters and boundaries
   - Minimal E2E for critical journeys
2. Start with a 70/20/10 heuristic:
   - ~70% unit
   - ~20% integration/contract
   - ~10% E2E smoke
3. Design fixtures for determinism:
   - Minimal seed data
   - Stable IDs/timestamps where possible
   - No hidden cross-test coupling
4. Add contract tests for module/public API boundaries.
5. Run tests in Dockerized or CI-parity environments when possible.
6. Gate merges on lint + type checks + required test suites.
7. Track flaky tests and quarantine/fix quickly.

Use with:

- `skills/database-and-migrations/SKILL.md`
- `skills/release-and-versioning/SKILL.md`
- `skills/codex-cli-integration/SKILL.md`

## Decision Criteria

- Prefer unit tests when behavior is domain logic.
- Prefer integration tests when behavior depends on DB, framework wiring, or I/O adapters.
- Keep E2E only for user-critical, high-impact paths.
- Fail the pipeline on flaky critical-path tests until stabilized.

## Examples

### Example 1: Test plan for new feature

```text
Create a test plan for "recurring transactions":
unit cases, DB integration cases, contract checks, and one E2E smoke path.
Include fixture strategy and CI command list.
```

### Example 2: Pyramid rebalance

```text
Our suite is slow and mostly E2E.
Propose a migration plan to rebalance toward unit/integration tests without reducing risk coverage.
```

### Example 3: Contract test addition

```text
Define contract tests for POST /finance/transactions and downstream consumers.
Include compatibility checks for response schema changes.
```

## Anti-Patterns

- Over-relying on brittle end-to-end tests.
- Mocking away all real boundary behavior in integration scenarios.
- Sharing mutable fixtures across unrelated tests.
- Allowing flaky tests to remain in required gates.

## Checklist

- [ ] Portfolio split is explicit and justified.
- [ ] Domain invariants are covered by unit tests.
- [ ] DB and migration behavior is covered by integration tests.
- [ ] Critical public/internal contracts are tested.
- [ ] E2E suite is minimal and stable.
- [ ] CI gates are defined and enforced.
