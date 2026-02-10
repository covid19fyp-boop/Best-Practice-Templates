---
name: feature-flag-release-best-practices
description: Design, govern, and operate feature-flag-driven release workflows across FastAPI, Next.js, PostgreSQL, and Dockerized delivery systems. Use when defining flag taxonomy and lifecycle, choosing server and client evaluation boundaries, implementing progressive rollouts and kill switches, enforcing targeting and stickiness rules, reducing flag technical debt, or adding release and cleanup gates in CI/CD.
---

# Feature Flag Release Best Practices

Follow this workflow when planning, implementing, or reviewing flag-driven releases.

## 1) Define Flag Taxonomy And Ownership First

- Classify flags clearly: release, experiment, and operational kill switch.
- Assign owner, purpose, and expected lifetime at creation time.
- Keep naming, tagging, and environment scope explicit.

Read `references/flag-taxonomy-and-governance.md`.

## 2) Choose Evaluation Boundary Deliberately

- Prefer server-side evaluation for sensitive logic and targeting attributes.
- Expose client-side flags only when required by UX behavior.
- Keep fallback behavior safe when provider or network fails.

Read `references/evaluation-boundaries-and-context.md`.

## 3) Standardize Targeting Context And Stickiness

- Define required targeting fields and stable targeting keys.
- Keep percentage rollout stickiness deterministic per subject.
- Avoid PII overexposure in evaluation context.

Read `references/evaluation-boundaries-and-context.md`.
Read `references/rollout-strategies-and-guardrails.md`.

## 4) Use Progressive Rollouts With Explicit Gates

- Start with a small cohort and expand in controlled steps.
- Define stop and rollback criteria before rollout begins.
- Use approval gates for high-impact targeting rule changes.

Read `references/rollout-strategies-and-guardrails.md`.

## 5) Design Operational Kill Switches For Emergencies

- Keep kill switches permanent and operationally documented.
- Use simple targeting for emergency shutoff paths.
- Validate kill switch behavior regularly under incident drills.

Read `references/kill-switch-and-operational-safety.md`.

## 6) Implement Flag Usage In FastAPI And Next.js Safely

- Keep authorization and security decisions outside flag-only logic.
- Keep both flag states fully functional while the flag exists.
- Isolate versioned code paths to reduce merge and removal risk.

Read `references/fastapi-nextjs-implementation-patterns.md`.

## 7) Test Both Flag States And Failure Modes

- Test on and off behavior for every temporary release flag.
- Test provider outage and fallback behavior.
- Test rollout rule boundaries and targeting edge cases.

Read `references/testing-observability-and-release-gates.md`.

## 8) Instrument Rollouts And Track Impact

- Emit metrics for exposure, error rate, and rollback frequency.
- Correlate rollout events with latency and failure signals.
- Alert on anomaly thresholds during progressive rollouts.

Read `references/testing-observability-and-release-gates.md`.

## 9) Enforce Cleanup And Technical Debt Controls

- Move flags through explicit lifecycle stages and cleanup deadlines.
- Remove stale flags from code and archive them in the flag platform.
- Block release for overdue temporary flags where policy requires.

Read `references/flag-lifecycle-and-cleanup.md`.

## 10) Verify Before Release

- Confirm rollout, stop, and rollback actions are operationally ready.
- Confirm both flag variations are tested in target environment.
- Confirm cleanup owner and sunset criteria are recorded.

For canonical standards and updates, read `references/official-sources.md`.
