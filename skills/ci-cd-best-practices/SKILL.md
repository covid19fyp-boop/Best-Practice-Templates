---
name: ci-cd-best-practices
description: Design and operate reliable CI/CD workflows for software delivery. Use when creating or improving pipelines, defining test and quality gates, securing build/deploy supply chains, managing deployment strategies, setting rollback procedures, or standardizing release automation across environments.
---

# CI/CD Best Practices

Follow this workflow when planning, implementing, or reviewing CI/CD.

## 1) Define Delivery Flow And Risk Profile

- Define branch/release model and deployment environments first.
- Classify services by change risk and blast radius.
- Define required promotion criteria for each environment.

Read `references/pipeline-design-and-branching.md`.

## 2) Build Deterministic Pipelines

- Keep builds reproducible with pinned versions and immutable artifacts.
- Keep stages explicit: build, test, scan, package, deploy, verify.
- Use caching intentionally without sacrificing correctness.

Read `references/pipeline-design-and-branching.md`.
Read `references/quality-gates-and-test-strategy.md`.

## 3) Enforce Quality Gates Before Promotion

- Run lint/type checks and unit/integration tests as required gates.
- Add smoke tests after deployment before full traffic.
- Fail fast on migration or contract incompatibility.

Read `references/quality-gates-and-test-strategy.md`.

## 4) Secure CI/CD Supply Chain

- Use least-privilege identities and short-lived credentials.
- Prefer OIDC-based cloud auth over long-lived static secrets.
- Add dependency/image provenance and vulnerability scanning.

Read `references/security-secrets-and-supply-chain.md`.

## 5) Use Safe Deployment Strategies

- Choose strategy by risk: rolling, blue/green, or canary.
- Decouple deployment from full release when feature flags are available.
- Keep rollback and forward-fix paths pre-defined.

Read `references/deployment-strategies-and-rollbacks.md`.

## 6) Observe And Improve Continuously

- Instrument pipeline and runtime outcomes.
- Track lead time, deployment frequency, change-failure rate, and recovery time.
- Feed incidents and failed releases back into gate and test improvements.

Read `references/observability-and-metrics.md`.

## 7) Verify Before Handoff

- Confirm all gates are explicit and reproducible.
- Confirm security controls are documented and enforceable.
- Confirm rollback steps are tested and time-bounded.

For canonical standards and updates, read `references/official-sources.md`.
