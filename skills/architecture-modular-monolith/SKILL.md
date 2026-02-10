---
name: architecture-modular-monolith
description: Design and evolve a service-shaped modular monolith with explicit internal contracts and low coupling. Use when defining modules, boundaries, ownership, and extraction-ready architecture in a single deployable system.
---

# Architecture Modular Monolith

## Instructions

1. Start from business capabilities, not technical layers.
2. Define module ownership explicitly:
   - Responsibilities
   - Non-responsibilities
   - Published internal APIs
3. Enforce one-way dependencies:
   - API layer -> service layer -> domain -> repository/adapter
   - No cross-module direct table writes.
4. Keep domain rules pure and testable; keep API handlers thin.
5. Use DTOs at module and HTTP boundaries.
6. For risky interface changes, apply expand -> migrate -> contract.
7. Record major boundary decisions in ADRs and architecture docs.

Suggested baseline module set:

- `core` for auth/audit/shared primitives
- `finance` for finance-specific rules and write paths
- `dev` for development/task workflows

Pair this skill with:

- `skills/repo-structure-and-conventions/SKILL.md`
- `skills/database-and-migrations/SKILL.md`

## Decision Criteria

- Create a new module when a capability has distinct language, lifecycle, and ownership.
- Keep modules together when coordination is tight and boundaries are unstable.
- Treat module APIs as published contracts even inside one process.
- Reject designs requiring broad cross-module imports for routine work.

## Examples

### Example 1: Define module boundaries

```text
Define module boundaries for billing, tasks, and identity in a modular monolith.
Output ownership matrix, published internal APIs, and forbidden dependency patterns.
```

### Example 2: Review architecture drift

```text
Review current repo for modular-monolith violations:
cross-module writes, cross-import shortcuts, leaked internal models, missing ADRs.
Return prioritized fixes.
```

### Example 3: Add new capability safely

```text
Design how to add "budget planning" as a new capability.
Decide whether it belongs in finance or a new module.
Include dependency rules, contracts, and initial tests.
```

## Anti-Patterns

- Organizing modules by framework layer only.
- Allowing shared "utils" to become a coupling sink.
- Exposing database schemas as de facto APIs.
- Changing module interfaces without migration strategy.

## Checklist

- [ ] Each module has clear ownership and published interfaces.
- [ ] Cross-module communication happens through interfaces, not table writes.
- [ ] API handlers are thin and domain rules are isolated.
- [ ] DTO boundaries are explicit and version-aware.
- [ ] ADRs capture key decisions and trade-offs.
