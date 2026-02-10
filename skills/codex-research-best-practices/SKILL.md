---
name: codex-research-best-practices
description: Research efficiently and safely with OpenAI Codex for engineering decisions. Use when gathering current technical facts, comparing implementation options, validating claims with primary sources, synthesizing findings into recommendations, or producing citation-backed research notes and handoff summaries.
---

# Codex Research Best Practices

Follow this workflow when Codex is used for research.

## 1) Lock The Research Target First

- Define the exact question, decision, and constraints before searching.
- Split facts into two groups: time-sensitive (must be checked now) and stable background.
- Define the output shape before execution (recommendation memo, options matrix, risks).

Read `references/prompting-and-scoping.md`.

## 2) Prompt Codex With Explicit Research Instructions

- Write specific scope, success criteria, and output format.
- Ask for assumptions, unknowns, and confidence per claim.
- Break broad work into checkpoints and require a summary at each checkpoint.

Read `references/prompting-and-scoping.md`.

## 3) Start With Primary Sources

- Prefer official docs, standards, and maintainer-authored pages first.
- For each material claim, keep a direct source URL.
- Record "last verified date" for any guidance likely to drift.

Read `references/source-selection-and-web-research.md`.

## 4) Use Codex Web Search Deliberately

- Use cached search when you want lower-risk browsing with stable context.
- Use live search when recency is critical (breaking changes, policy, pricing, releases).
- Treat all web results as untrusted and cross-check high-impact claims.

Read `references/source-selection-and-web-research.md`.
Read `references/safety-and-verification.md`.

## 5) Protect The Research Workflow

- Keep sandbox and approval settings aligned to risk.
- Prefer least privilege first, then escalate only when required.
- Keep clear separation between sourced facts and inferred conclusions.

Read `references/safety-and-verification.md`.

## 6) Produce Decision-Ready Output

- Present recommendation, alternatives, tradeoffs, and residual risks.
- Attach citations inline for factual statements.
- End with explicit open questions and follow-up checks.

Read `references/automation-and-reporting.md`.

## 7) Make Results Reproducible

- Use repeatable command patterns for recurring research tasks.
- Use Codex profiles/config for stable approval/sandbox/search behavior.
- For scripted runs, prefer non-interactive execution and machine-readable output.

Read `references/automation-and-reporting.md`.

## 8) Verify Before Handoff

- Reconfirm links, dates, and critical claims.
- Confirm recommendations match stated constraints.
- Confirm unresolved uncertainty is explicit.

For canonical docs and updates, read `references/official-sources.md`.
