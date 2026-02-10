---
name: codex-cli-hook-best-practices
description: Design and operate hook-style automation around Codex CLI. Use when wiring notification commands, consuming `codex exec --json` event streams, integrating Codex app-server notifications, applying rules and approval policy as guardrails, or hardening script-based release hooks with safe fallback and observability.
---

# Codex CLI Hook Best Practices

Follow this workflow when building or reviewing Codex CLI hook integrations.

## 1) Choose The Right Hook Primitive First

- Use `notify` command hooks for local user notifications.
- Use `codex exec --json` for machine-consumable event-stream automation.
- Use app-server notifications for long-running session integrations.

Read `references/hook-primitives-and-selection.md`.

## 2) Implement Notification Command Hooks Safely

- Configure notification command via Codex config.
- Keep notifier command lightweight and non-blocking.
- Restrict notification events to reduce noise and false urgency.

Read `references/notify-command-hooks.md`.

## 3) Use JSON Event Stream Hooks For Automation

- Consume `codex exec --json` output as structured events.
- Route events to deterministic scripts or CI logic.
- Keep parsing resilient to non-critical event evolution.

Read `references/json-event-stream-hooks.md`.

## 4) Use App-Server Notifications For External Integrations

- Subscribe to app-server notification events for bridge services.
- Use stable event handling and replay-safe consumers.
- Keep notification handlers idempotent.

Read `references/app-server-notification-hooks.md`.

## 5) Apply Rules And Approval Guardrails

- Use `commands` policies to control shell execution risk.
- Use prefix-based approvals for known safe command families.
- Keep deny rules explicit for destructive or sensitive operations.

Read `references/rules-approvals-and-safety.md`.

## 6) Build Reliable Hook Handlers

- Add timeout, retry, and error classification for hook scripts.
- Use idempotency keys for repeated events where needed.
- Keep fallback behavior explicit when hook targets fail.

Read `references/reliability-and-idempotency.md`.

## 7) Keep Secrets And Trust Boundaries Tight

- Do not embed secrets directly in hook command strings.
- Keep environment-specific credentials isolated per profile.
- Validate untrusted event data before external side effects.

Read `references/rules-approvals-and-safety.md`.

## 8) Test Hook Flows End To End

- Validate local and CI hook behavior separately.
- Test notify path, event parsing, and failure fallback.
- Add regression checks for hook command and config drift.

Read `references/testing-and-debugging.md`.

## 9) Add Observability For Hook Operations

- Log hook start, success, failure, and latency.
- Correlate hook logs with Codex session or thread context.
- Track hook error rates and alert on sustained failures.

Read `references/reliability-and-idempotency.md`.

## 10) Verify Before Release

- Confirm hook behavior under normal, degraded, and denied-command paths.
- Confirm approval and sandbox policies match intended risk boundaries.
- Confirm stale hook scripts and unused rules are removed.

For canonical standards and updates, read `references/official-sources.md`.
