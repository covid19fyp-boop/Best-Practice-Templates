---
name: repo-structure-and-conventions
description: Define and maintain repository structure, naming, and documentation conventions for modular monolith development. Use when scaffolding modules, enforcing folder patterns, and keeping ADR/docs/code contracts consistent.
---

# Repo Structure And Conventions

## Instructions

1. Keep one repository with explicit top-level zones:
   - `backend/`
   - `frontend/`
   - `docs/`
   - `infra/`
   - `skills/`
2. Keep backend modules capability-oriented (`finance`, `dev`, `core`), not layer-only.
3. Use consistent per-module structure:
   - `api` or router files
   - `schemas`/DTOs
   - `domain` rules
   - `service` use-cases
   - `repo` adapters
4. Keep frontend feature folders aligned to backend capabilities.
5. Enforce naming conventions:
   - Files and folders: lowercase with hyphens/underscores per stack norms
   - DTOs and contracts: explicit suffixes (`DTO`, `Request`, `Response`)
6. Treat docs as code:
   - Maintain `docs/architecture.md`
   - Add ADR files for significant decisions
   - Keep runbook and onboarding docs current
7. Reject changes that introduce ambiguous ownership.

Use with:

- `skills/architecture-modular-monolith/SKILL.md`
- `skills/technical-debt-controls/SKILL.md`

## Decision Criteria

- Add a new top-level folder only when ownership and lifecycle are clearly distinct.
- Add a new module only when it reduces coupling and clarifies responsibility.
- Update ADRs when changing boundaries, contracts, or major operational workflows.

## Examples

### Example 1: Scaffold module layout

```text
Scaffold a new backend module named "reporting" using our modular structure:
api/schemas/domain/service/repo/tests.
Do not modify unrelated modules.
```

### Example 2: Conventions audit

```text
Audit repository structure for convention drift.
List naming violations, folder inconsistencies, and missing docs/ADRs with fix suggestions.
```

### Example 3: Architecture doc update

```text
Update docs/architecture.md after adding a notifications capability.
Include module ownership, dependencies, and data ownership rules.
```

## Anti-Patterns

- Mixed naming styles inside the same module.
- Massive shared helper folders that bypass module boundaries.
- Keeping architecture decisions only in chat history.
- Frontend routes that do not map to backend ownership concepts.

## Checklist

- [ ] Top-level repository zones are clear and minimal.
- [ ] Module folders follow a consistent pattern.
- [ ] Naming conventions are documented and enforced.
- [ ] ADRs exist for major design changes.
- [ ] Architecture and runbook docs match actual code paths.
