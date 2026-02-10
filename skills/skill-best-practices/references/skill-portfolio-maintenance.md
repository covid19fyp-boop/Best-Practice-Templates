# Skill Portfolio Maintenance

## 1) Keep A Portfolio Inventory

- Maintain one index of all skills with fields: `name`, `owner`, `domain`, `status`, `last_reviewed`, `next_review`.
- Require every new skill to register in the index before release.
- Mark orphan skills (no owner or stale review date) as governance risk.
- Record scope where applicable (`enterprise`, `personal`, `project`) to avoid ambiguous precedence.

## 2) Define Portfolio Taxonomy And Boundaries

- Group skills by domain and intent (for example: stack, security, testing, operations).
- Define trigger boundaries between adjacent skills to prevent routing collisions.
- Keep naming conventions consistent and explicit.
- Avoid duplicated skill names across scopes when platform precedence rules apply.

## 3) Control Overlap And Duplication

- Run periodic overlap review for skills with similar descriptions.
- Merge or split skills when trigger precision degrades.
- Reuse shared references for common standards rather than copying content across skills.

## 4) Apply Lifecycle Management

- Use explicit lifecycle states:
- `draft`: under active authoring and not stable.
- `active`: production-ready and maintained.
- `deprecated`: still callable but replacement exists.
- `retired`: no longer used.
- Require deprecation notice and migration path for each deprecated skill.

## 5) Set Review Cadence And Quality Gates

- Weekly: triage trigger misses and false-positive activations.
- Monthly: stale-content review against source updates.
- Quarterly: portfolio pruning and restructuring review.
- Require validation checks (`quick_validate.py`) before promoting `draft` to `active`.
- Keep per-skill positive and negative trigger prompt suites for regression checks.

## 6) Measure Portfolio Health

- Track trigger precision and false-positive rate.
- Track stale skill ratio (review overdue).
- Track duplication rate (overlapping scope across active skills).
- Track change lead time (request to validated update).

## 7) Standardize Change Workflow

- Intake: classify request as create, update, split, merge, deprecate, or retire.
- Design: update frontmatter routing and minimal `SKILL.md` workflow first.
- Deep content: adjust `references/` and `scripts/` only where needed.
- Validate: run checks and test trigger boundaries.
- Release: record changelog note and next review date.

## 8) Add Invocation And Orchestration Controls

- Constrain risky skills with tool allowlists where platform supports invocation controls.
- Use `user-invocable` and `disable-model-invocation` style controls deliberately.
- Route high-complexity domains through dedicated subagents with explicit contracts.
