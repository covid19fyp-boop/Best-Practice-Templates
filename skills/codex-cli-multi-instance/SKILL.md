---
name: codex-cli-multi-instance
description: Orchestrate multiple Codex CLI instances safely with role-based isolation, least-privilege sandboxing, and auditable CI workflows. Use when scaling from one Codex session to parallel scaffold/fixer/reviewer agents.
---

# Codex CLI Multi-Instance

## Instructions

1. Validate single-instance workflow first.
2. Define explicit agent roles before parallel execution.
   - `scaffold`: generates implementation changes.
   - `fixer`: focuses on tests/lint and minimal fixes.
   - `reviewer`: read-only analysis and risk reporting.
3. Isolate each instance state.
   - Use separate `CODEX_HOME` per role/run.
   - Use role-specific profile settings in `.codex/config.toml`.
4. Enforce least privilege by default.
   - Start `reviewer` and most `fixer` runs in `read-only` sandbox.
   - Allow `workspace-write` only for scoped write tasks.
   - Keep destructive commands blocked by rules.
5. Run agents in separate CI jobs or matrix entries.
   - Scope secrets and permissions per job.
   - Keep codegen jobs on branches/PRs only; never auto-merge.
6. Capture provenance on every run.
   - Store JSONL output, role, model, CLI version, prompt hash, AGENTS/rules hash, and git SHA.
7. Keep rollback and reproducibility ready.
   - Revert bad generated commits quickly.
   - Re-run with pinned model/version/config to reproduce.

Use with:

- `skills/codex-cli-integration/SKILL.md`
- `skills/security-and-secrets/SKILL.md`
- `skills/testing-strategy/SKILL.md`
- `skills/release-and-versioning/SKILL.md`

Load reusable assets from this skill when implementing:

- `templates/config.multi-instance.toml`
- `templates/github-actions-multi-agent.yml`
- `templates/rules.multi-instance.rules`
- `templates/provenance-record.json`
- `scripts/run-codex-agent.ps1`

## Decision Criteria

- Stay single-instance when tasks are small and serial.
- Add multi-instance when queues grow, domains are distinct, or review/security workload blocks delivery.
- Do not scale to multi-instance if rules, logging, and PR gates are missing.
- Limit concurrent heavy write-capable runs to avoid conflicts and instability.

## Examples

### Example 1: Local role orchestration

```text
Set up local multi-instance Codex with roles scaffold, fixer, reviewer.
Use isolated CODEX_HOME per role and least-privilege profiles.
Output exact commands and config files only.
```

### Example 2: CI parallel workflow

```text
Create a GitHub Actions workflow that runs scaffold and reviewer agents in parallel.
Require minimal permissions, JSONL artifact capture, and PR-only patch workflows.
```

### Example 3: Regression investigation

```text
A fixer agent introduced a failing patch.
Produce a rollback-and-reproduce runbook using run metadata and JSONL logs.
```

## Anti-Patterns

- Running multiple write agents over the same files concurrently.
- Using `danger-full-access` as default for convenience.
- Allowing generated patches to auto-merge.
- Running privileged agents without auditable logs and metadata.
- Passing untrusted text directly into privileged prompts.

## Checklist

- [ ] Single-instance baseline is stable.
- [ ] Roles, ownership, and write permissions are defined.
- [ ] `CODEX_HOME` is isolated per role.
- [ ] Sandbox/rules enforce least privilege.
- [ ] CI secrets and permissions are scoped per job.
- [ ] JSONL logs and provenance records are archived.
- [ ] PR/human gates are enforced for writes.
- [ ] Rollback and reproduction steps are documented.
