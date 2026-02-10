# Anthropic Agent Skills Research Notes

Date reviewed: 10/02/2026

## Core Model

- Treat skills as modular, on-demand instruction bundles.
- Keep always-loaded metadata strong enough to route correctly.
- Keep default context small; defer detail to files loaded only when needed.

## Skill Package Expectations

- Use `SKILL.md` as the entry point.
- Include required frontmatter fields: `name`, `description`.
- Use optional folders when needed.
- `scripts/`: deterministic execution.
- `references/`: deep documentation.
- `assets/`: reusable output artifacts.

## Description And Triggering Guidance

- Write descriptions that combine capability and context triggers.
- Include explicit trigger phrases users are likely to type.
- Include the likely user language that indicates skill usage.
- Avoid broad labels that match too many requests.
- Avoid overlong descriptions that bloat context.

## Progressive Disclosure Guidance

- Keep `SKILL.md` concise; move advanced details to references.
- Prefer one-hop navigation from `SKILL.md` to each reference file.
- For multi-domain or multi-framework skills, separate each variant into its own reference file.

## Size And Operational Constraints Mentioned By Anthropic

- Skills are lazy loaded; long skills can still hurt inference quality after loading.
- Practical guidance emphasizes concise skills and avoiding monoliths.
- Anthropic documentation notes these API constraints for uploaded skills.
- Skill `name` max length: 64.
- Skill `description` max length: 1024.
- Skill package max size: 8 MB.
- Skill names cannot include reserved words `anthropic` or `claude`.

## Evaluation And Trigger Testing Guidance

- Develop skills incrementally and validate with real prompts.
- Test both "what the skill should trigger on" and "what it should not trigger on".
- Keep explicit positive and negative examples for boundary prompts.
- Evaluate across models/environments where the skill will run.

## Portfolio Operations Guidance From Claude Code Docs

- Separate scopes and ownership clearly (enterprise, personal, project).
- Avoid naming collisions across scopes, because matching names can create precedence ambiguity.
- Use directory organization patterns for scale (`skills/`, category folders, monorepo references).
- Use invocation controls where available (`allowed-tools`, `user-invocable`, `disable-model-invocation`).
- Use subagents for specialized execution when orchestration complexity grows.

## Common Anti-Patterns

- Monolithic `SKILL.md` files that mix every variant and edge case.
- Trigger text that is too generic, causing false-positive routing.
- Missing test prompts for trigger boundaries.
- Repeating large reference content directly in `SKILL.md`.

## Practical Review Checklist

- Does frontmatter clearly encode what the skill does and when to use it?
- Is `SKILL.md` short, imperative, and focused on execution flow?
- Are deep details moved to `references/` and linked explicitly?
- Are repeated deterministic steps moved to `scripts/`?
- Have positive and negative trigger prompts been tested?

## Sources

- https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview
- https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices
- https://docs.anthropic.com/en/docs/claude-code/skills
- https://docs.anthropic.com/en/docs/claude-code/sub-agents
- https://resources.anthropic.com/hubfs/The-Complete-Guide-to-Building-Skill-for-Claude.pdf?hsLang=en
- https://github.com/anthropics/skills
