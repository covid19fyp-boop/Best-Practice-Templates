---
name: skill-best-practices
description: Design, review, and improve agent skills so they trigger reliably and stay maintainable. Use when creating a new skill, fixing poor skill activation, splitting an oversized SKILL.md into references/scripts/assets, or running a pre-publish quality review of skill structure and metadata.
---

# Skill Best Practices

Follow this workflow when authoring or updating a skill.

## 1) Lock Scope And Triggers

- Capture 3 to 8 concrete user requests the skill must handle.
- Extract the trigger language from those requests and mirror it in `description`.
- Keep `description` specific enough to route correctly; avoid vague scope words.

## 2) Build The Smallest Useful Package

- Start with `SKILL.md` only.
- Add `references/` for long domain guidance that is not needed in every run.
- Add `scripts/` for deterministic, repeated, or fragile operations.
- Add `assets/` only for output artifacts/templates.
- Keep reference loading shallow: link each reference directly from `SKILL.md`.

## 3) Write Frontmatter For Routing

- Use a stable, lowercase, hyphenated `name`.
- Put all "when to use" criteria in `description` (not in body sections).
- State both what the skill does and when the agent should invoke it.

## 4) Keep Body Lean And Actionable

- Write imperative instructions.
- Prefer checklists and short procedures over long narrative blocks.
- Put optional or variant-specific details in `references/`.
- Include selection rules when multiple variants/frameworks are supported.

## 5) Control Degrees Of Freedom

- Use high freedom for context-sensitive work.
- Use medium freedom for preferred patterns with tunable parameters.
- Use low freedom (scripts/strict steps) for fragile operations.

## 6) Validate Before Shipping

- Confirm frontmatter fields exist and parse.
- Confirm path references are valid.
- Confirm scripts actually run for representative cases.
- Test at least one prompt per trigger scenario and one near-miss prompt.

## 7) Iterate From Failures

- Record misses: not triggered, wrong trigger, low-quality output, or token bloat.
- Fix the minimal layer that solves the issue.
- `Metadata`: routing issues.
- `SKILL.md` body: workflow and quality issues.
- `references/` or `scripts/`: depth and reliability issues.

For Anthropic-specific constraints, anti-patterns, and sizing guidance, read `references/anthropic-agent-skill-research.md`.
