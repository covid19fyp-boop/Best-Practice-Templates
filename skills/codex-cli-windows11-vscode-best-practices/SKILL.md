---
name: codex-cli-windows11-vscode-best-practices
description: Set up and operate OpenAI Codex CLI safely and efficiently on Windows 11 with VS Code. Use when installing or configuring Codex CLI for Windows, deciding WSL vs native execution, integrating Codex with VS Code, tuning approval/sandbox settings, creating repeatable command workflows, or troubleshooting Windows-specific Codex CLI issues.
---

# Codex CLI Windows 11 + VS Code Best Practices

Follow this workflow when configuring or using Codex CLI on Windows 11 with VS Code.

## 1) Start With A WSL-First Baseline

- Prefer running Codex in WSL for stronger sandbox compatibility and Unix-like tooling.
- Keep project files in Linux filesystem when using WSL-heavy workflows.
- Verify Node and Codex CLI installation path is consistent with chosen execution context.

Read `references/setup-and-prerequisites.md`.

## 2) Configure VS Code Integration Deliberately

- Use terminal profiles/tasks so Codex launches in the intended shell every time.
- In VS Code integration settings, prefer running Codex in WSL for Windows hosts.
- Keep workspace launch behavior explicit to avoid mixed host/WSL confusion.

Read `references/vscode-integration.md`.

## 3) Set Safe Approval And Sandbox Defaults

- Start with conservative approvals and workspace-limited file access.
- Escalate only when needed and document why.
- Keep shell policy and network policy explicit in config for reproducibility.

Read `references/approval-sandbox-and-security.md`.

## 4) Standardize Config And Automation

- Use `config.toml` and named profiles for repeatable team workflows.
- Use non-interactive execution for deterministic checks and CI-like runs.
- Keep model, reasoning effort, and output style explicit for recurring tasks.

Read `references/automation-and-config.md`.

## 5) Troubleshoot By Layer

- Separate auth/config issues from shell/runtime issues.
- Validate whether failures come from Windows host, WSL runtime, or VS Code terminal wiring.
- Confirm daemon/tool prerequisites before changing Codex settings.

Read `references/troubleshooting.md`.

## 6) Verify Before Handoff

- Confirm profile/config behavior from a clean terminal session.
- Confirm approval/sandbox behavior matches team policy.
- Confirm reproducible commands work on both fresh shell and VS Code terminal.

For canonical links and updates, read `references/official-sources.md`.
