# Hook Primitives And Selection

## 1) Pick Hook Mechanism By Use Case

- Local UX notifications: use configured `notify` command hooks.
- Non-interactive automation: consume `codex exec --json` event output.
- Long-lived integration service: use app-server notifications and event handling.

## 2) Keep Responsibility Boundaries Clear

- Notification hooks: user-facing signal only, no critical business mutation.
- Event-stream hooks: machine workflow orchestration and gate automation.
- Policy hooks: command/rule boundaries to constrain unsafe execution.

## 3) Selection Checklist

- Confirm required latency and reliability model for the hook path.
- Confirm fallback behavior when hook target is unavailable.
- Confirm owner and escalation path for hook failures.
