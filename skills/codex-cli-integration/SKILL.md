---
name: codex-cli-integration
description: Integrate Codex CLI safely across planning, implementation, testing, review, and documentation in a modular-monolith SDLC. Use when running Codex locally or in CI with guardrails, prompt templates, and reproducible workflows.
---

# Codex CLI Integration

## Instructions

Follow this SOP for every Codex-assisted task.

1. Start task intake with skills first.
   - Read `skills/sdlc-personal-dev/SKILL.md`.
   - Read only the minimum additional skill(s) required for the active task.
   - Confirm scope, acceptance criteria, risks, and target files.
2. Keep boundaries explicit to prevent giant files.
   - Respect module ownership (`core`, `finance`, `dev`, etc.).
   - Add files when needed instead of growing one oversized file.
   - Keep handlers thin; move logic into domain/service layers.
3. Execute safe edits.
   - Prefer small, reviewable commits.
   - Avoid unrelated refactors in the same change.
   - Avoid destructive operations by default.
4. Apply CRUD authorization policy.
   - If user explicitly authorizes CRUD on specific paths, proceed on those paths without re-asking.
   - For destructive operations outside explicitly authorized paths, ask before proceeding.
   - Treat broad deletes/overwrites as destructive operations.
5. Verify before completion.
   - Run lint/type/tests if available.
   - Confirm migration safety when schema changes exist.
   - Summarize changed files, risks, and follow-up actions.
6. Update documentation and ADRs when architecture/contract decisions change.
7. In CI usage, keep least privilege.
   - Default to read-only analysis jobs for reviews.
   - For write-capable jobs, open PRs rather than direct merges.
   - Capture outputs and provenance metadata for auditability.

Prompt templates are provided in:

- `skills/codex-cli-integration/templates/plan-prompt.md`
- `skills/codex-cli-integration/templates/implement-prompt.md`
- `skills/codex-cli-integration/templates/test-prompt.md`
- `skills/codex-cli-integration/templates/refactor-prompt.md`
- `skills/codex-cli-integration/templates/doc-prompt.md`

## Decision Criteria

- Use read-only Codex runs when intent is analysis/review/reporting.
- Use write-capable runs only with clear scope and verification gates.
- Escalate to ADR updates when module boundaries, contracts, or data ownership change.
- Split work into multiple prompts when a single prompt would produce oversized diffs.

## Examples

### Example 1: Plan prompt usage

```text
Use template: templates/plan-prompt.md
Task: add recurring expenses feature.
Fill constraints, boundaries, migration risk, and test plan sections before implementation.
```

### Example 2: Implement prompt usage

```text
Use template: templates/implement-prompt.md
Task: implement POST /finance/transactions idempotency behavior.
Limit edits to backend/app/finance and related tests only.
```

### Example 3: CI review workflow prompt

```text
Generate a PR review summary focused on security, migration safety, and duplicate-transaction risks.
Return findings by severity and include exact file references.
```

## Guardrails

- Never delete or overwrite large areas without explicit instruction.
- Always show a plan before big refactors.
- Always run tests after changes (if test framework exists).
- Always update docs/ADRs when architecture decisions change.

## Anti-Patterns

- Running `--full-auto` for broad, unscoped requests.
- Letting Codex change unrelated files for convenience.
- Skipping verification because "the diff looks small".
- Accepting generated code without module-boundary review.

## Checklist

- [ ] Relevant skills were read before implementation.
- [ ] File/module boundaries are respected.
- [ ] CRUD authorization constraints are applied correctly.
- [ ] Changes are small and reviewable.
- [ ] Tests and quality gates were run.
- [ ] Docs/ADRs were updated when required.
- [ ] CI mode uses least privilege and auditable artifacts.
