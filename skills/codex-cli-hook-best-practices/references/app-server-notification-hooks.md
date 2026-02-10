# App-Server Notification Hooks

## 1) Use App-Server Notifications For Integration Services

- Use app-server notification stream for external service orchestration.
- Keep handlers decoupled from terminal UI assumptions.
- Prefer asynchronous handoff for slow downstream actions.

## 2) Make Consumers Resilient

- Implement retry with bounded backoff for transient delivery failures.
- Keep consumers idempotent for reconnect and replay scenarios.
- Log notification type and correlation metadata for traceability.

## 3) Guard Integration Boundaries

- Validate inbound payload structure before execution.
- Restrict downstream command execution to approved command families.
- Require explicit allowlist for webhook or external API targets.

## 4) App-Server Checklist

- Confirm reconnect behavior does not duplicate critical side effects.
- Confirm notification lag and failure are observable.
- Confirm maintenance mode path is documented for incident response.
