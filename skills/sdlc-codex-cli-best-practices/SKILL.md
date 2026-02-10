---
name: sdlc-codex-cli-best-practices
description: Apply Codex CLI effectively across the software development lifecycle. Use when planning changes, implementing code, running verification loops, performing reviews, preparing release gates, or operating repeatable engineering workflows with Codex CLI in local and CI contexts.
---

# SDLC With Codex CLI Best Practices

Follow this workflow for end-to-end software delivery with Codex CLI.

## 1) Define Scope And Delivery Gates First

- Define objective, non-goals, constraints, and acceptance criteria.
- Break work into increments that can be tested and reviewed independently.
- Set required quality gates before implementation starts.

Read `references/planning-and-intake.md`.

## 2) Standardize Execution Context

- Use explicit Codex config and profile selection per workflow type.
- Keep approval mode and sandbox mode aligned with risk.
- Keep environment assumptions explicit for local and CI execution.

Read `references/lifecycle-and-gates.md`.
Read `references/governance-and-safety.md`.

## 3) Implement In Tight Change Loops

- Run small, reversible edits.
- Re-run closest failing or impacted tests immediately after each change.
- Expand from targeted checks to broader suites before handoff.

Read `references/implementation-and-verification.md`.

## 4) Review With Evidence

- Require concrete diff-level reasoning for behavior changes.
- Prioritize bug risk, regression risk, and missing test coverage.
- Keep findings severity-ordered and action-oriented.

Read `references/review-ci-and-release.md`.

## 5) Use Non-Interactive Runs For Repeatability

- Use non-interactive Codex CLI runs for deterministic SDLC tasks.
- Use structured outputs for downstream parsing and policy checks.
- Keep prompts and constraints versioned for reproducible automation.

Read `references/implementation-and-verification.md`.
Read `references/review-ci-and-release.md`.

## 6) Enforce Release And Post-Release Discipline

- Block release on failed quality gates.
- Run smoke checks immediately after deployment.
- Capture incident findings and feed process improvements into next cycle.

Read `references/lifecycle-and-gates.md`.
Read `references/review-ci-and-release.md`.

## 7) Verify Before Handoff

- Confirm command reproducibility from clean environments.
- Confirm approval/sandbox policy is documented and enforced.
- Confirm unresolved risks and follow-up actions are explicit.

For canonical updates and command details, read `references/official-sources.md`.
