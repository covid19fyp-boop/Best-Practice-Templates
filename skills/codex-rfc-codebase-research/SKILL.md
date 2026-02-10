---
name: codex-rfc-codebase-research
description: Run deep technical research with Codex for RFC and codebase decisions. Use when analyzing existing architecture, tracing behavior across modules, mapping design constraints, validating RFC proposals against current implementation, identifying migration and risk impacts, or producing decision-ready engineering recommendations with source evidence.
---

# Codex RFC And Codebase Research

Follow this workflow for deep technical discovery and decision support.

## 1) Frame The Decision Precisely

- Define the RFC question, scope boundary, and non-goals.
- Define success criteria and rejection criteria before exploration.
- Separate must-keep constraints from negotiable preferences.

Read `references/intake-and-scope.md`.

## 2) Build A Codebase Evidence Map

- Identify ownership boundaries: modules, services, data contracts, and runtime edges.
- Trace hot paths and mutation paths end to end.
- Record concrete file-level evidence for each claim.

Read `references/codebase-discovery.md`.

## 3) Validate Against Current Runtime And Contracts

- Verify observed behavior against documented behavior.
- Check API, schema, and migration contracts for compatibility risk.
- Flag hidden coupling and rollout hazards early.

Read `references/contract-and-runtime-validation.md`.

## 4) Analyze RFC Options With Explicit Tradeoffs

- Evaluate at least one baseline and two alternatives when feasible.
- Score options by complexity, risk, reversibility, and delivery cost.
- Mark assumptions clearly and label confidence.

Read `references/rfc-analysis-and-tradeoffs.md`.

## 5) Produce Decision-Ready Output

- Summarize recommendation, alternatives, and rationale.
- Include implementation steps, rollout sequencing, and rollback approach.
- Include open questions and required follow-up experiments.

Read `references/output-and-handoff.md`.

## 6) Verify Before Handoff

- Re-check all cited files and links.
- Re-check that recommendation honors stated constraints.
- Re-check unresolved risks are explicit and actionable.

For source updates and verification links, read `references/official-sources.md`.
