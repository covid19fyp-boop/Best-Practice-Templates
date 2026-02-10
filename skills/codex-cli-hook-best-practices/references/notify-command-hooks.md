# Notify Command Hooks

## 1) Configure Notification Command Explicitly

- Configure `notify` in Codex config to run an external command.
- Keep command short-lived and deterministic.
- Treat notification path as best-effort and non-critical.

Codex config supports a `notify` command and can emit a JSON payload to that command.

## 2) Reduce Alert Noise

- Restrict event types to high-value notifications where possible.
- Separate info-level completion from approval-required urgency.
- Avoid high-frequency event fanout that conditions users to ignore alerts.

## 3) Platform Safety Notes

- Do not pass secrets in notification command arguments.
- Validate payload fields before rendering to external tools.
- Keep notify command failures isolated from core Codex flows.

## 4) Notify Checklist

- Confirm notification command exists on every target runtime.
- Confirm notification handler timeout is bounded.
- Confirm event filtering is configured to intended signal level.
