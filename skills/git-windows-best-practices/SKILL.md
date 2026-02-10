---
name: git-windows-best-practices
description: Configure and operate Git safely on Windows 11 for local development and team collaboration. Use when installing Git for Windows, setting global Git identity and defaults, handling line endings across Windows/Linux/macOS, setting credential management, improving repository performance, or reviewing Git workflow and branch protection practices.
---

# Git Best Practices For Windows 11

Follow this workflow for setup, audits, and remediation.

## 1) Validate Host Baseline

- Confirm current Git for Windows installation and version.
- Prefer current stable Git for Windows releases.
- Confirm Windows 11 path-length policy when working with deep repositories.

Read `references/windows-setup-and-security.md` before changing global config.

## 2) Configure Safe Global Defaults

- Set global identity (`user.name`, `user.email`) before first commit.
- Set a default branch name (`init.defaultBranch`) for new repositories.
- Set credential helper to Git Credential Manager on Windows.
- Avoid committing from mismatched identities across personal/work repos.

## 3) Standardize Line Endings And Ignore Rules

- Prefer repository-level `.gitattributes` for deterministic line endings.
- Use `core.autocrlf` carefully and align it with project policy.
- Validate `.gitignore` placement and precedence to avoid accidental commits.

Read `references/line-endings-and-ignore.md` before changing normalization behavior.

## 4) Choose Windows Or WSL Workflow Deliberately

- If developing in WSL, keep source files in the Linux filesystem for performance.
- Avoid high-churn cross-filesystem access patterns between Windows and Linux mounts.
- Keep one clear execution context per repo workflow when possible.

Read `references/wsl-and-performance.md` for host/WSL guidance.

## 5) Enforce Team Workflow Controls

- Protect shared branches and require pull requests for mainline changes.
- Require status checks before merge on protected branches.
- Prefer signed commits/tags where compliance or auditability is required.

Read `references/workflow-and-governance.md` for policy-level controls.

## 6) Verify And Maintain

- Run routine checks for identity, remotes, branch protections, and ignored files.
- Enable Git maintenance for large repositories where appropriate.
- Revisit global config after major toolchain updates.

For standards updates and source links, consult `references/official-sources.md`.
