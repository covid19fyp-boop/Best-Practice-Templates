# SDLC + Codex CLI Skill Pack

This pack turns two repository reports into modular filesystem skills for long-term personal or small-team development.

## Anthropic-Style Skill Rules Used

This pack follows the local Anthropic-style notes in `skills/skill-best-practices/references/anthropic-agent-skill-research.md` and local `skill-creator` guidance:

- Every skill uses `SKILL.md` with YAML frontmatter.
- Frontmatter includes required fields:
  - `name`: lowercase, hyphenated, <=64 chars, letters/numbers/hyphens only, no reserved words like `anthropic` or `claude`.
  - `description`: non-empty, states what it does and when to use it.
- Body uses progressive disclosure and consistent sections:
  - `Title`
  - `Instructions` (step-by-step)
  - `Decision Criteria`
  - `Examples`
  - `Anti-Patterns`
  - `Checklist`
- Skills stay focused and small so only relevant guidance is loaded.

## Skill Index

- `skills/sdlc-personal-dev/SKILL.md`
- `skills/architecture-modular-monolith/SKILL.md`
- `skills/architecture-splitting-strategy/SKILL.md`
- `skills/repo-structure-and-conventions/SKILL.md`
- `skills/testing-strategy/SKILL.md`
- `skills/technical-debt-controls/SKILL.md`
- `skills/database-and-migrations/SKILL.md`
- `skills/security-and-secrets/SKILL.md`
- `skills/release-and-versioning/SKILL.md`
- `skills/codex-cli-integration/SKILL.md`

Prompt templates:

- `skills/codex-cli-integration/templates/plan-prompt.md`
- `skills/codex-cli-integration/templates/implement-prompt.md`
- `skills/codex-cli-integration/templates/test-prompt.md`
- `skills/codex-cli-integration/templates/refactor-prompt.md`
- `skills/codex-cli-integration/templates/doc-prompt.md`

## Progressive Disclosure With Codex CLI

Use the minimum number of skills needed for the current task:

1. Start from `sdlc-personal-dev` for lifecycle framing.
2. Add one architecture/process skill for the current phase.
3. Add `codex-cli-integration` when using Codex CLI for planning, implementation, tests, reviews, or docs.
4. Open only deeper skills for the active concern (testing, DB, security, release).

Recommended loading order:

1. `skills/sdlc-personal-dev/SKILL.md`
2. One or two specialized skills for the task
3. `skills/codex-cli-integration/SKILL.md` when executing with Codex CLI

## Task Map: What To Open

| Common task | Open these skill(s) |
|---|---|
| Plan next sprint slice | `sdlc-personal-dev`, `technical-debt-controls` |
| Create/adjust module boundaries | `architecture-modular-monolith`, `repo-structure-and-conventions` |
| Decide whether to split a service | `architecture-splitting-strategy`, `database-and-migrations`, `release-and-versioning` |
| Add endpoint + tests | `repo-structure-and-conventions`, `testing-strategy`, `database-and-migrations` |
| Introduce migration safely | `database-and-migrations`, `release-and-versioning` |
| Security hardening pass | `security-and-secrets`, `technical-debt-controls` |
| Release with rollback safety | `release-and-versioning`, `testing-strategy`, `database-and-migrations` |
| Run Codex safely in local/CI | `codex-cli-integration` (+ relevant domain skill) |

## Suggested Solo SDLC Loop

1. Define a thin vertical slice with acceptance criteria and risk notes.
2. Confirm architecture boundaries and data ownership before coding.
3. Implement in small commits with explicit contracts and migrations.
4. Run unit/integration tests and quality gates.
5. Release with changelog, tag, and rollback plan.
6. Observe production signals, record debt, and feed the next iteration.

Keep each loop small enough to finish within one focused session or one day.
