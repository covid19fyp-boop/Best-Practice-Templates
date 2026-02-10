# JSON Event Stream Hooks

## 1) Use `codex exec --json` For Machine Consumption

- Use structured JSON output mode for automation and policy checks.
- Parse event types defensively and ignore unknown non-critical fields.
- Keep parsing logic version-tolerant.

## 2) Build Deterministic Event Pipelines

- Route event stream into one owning processor script or service.
- Keep event-to-action mappings explicit and audited.
- Use strict schema validation for safety-critical downstream actions.

## 3) Failure And Replay Handling

- Treat interrupted streams as partial runs and mark outcome explicitly.
- Add idempotency for side effects triggered by repeated events.
- Persist minimal run metadata for replay and debugging.

## 4) Event Stream Checklist

- Confirm event parser fails safe on malformed payloads.
- Confirm CI gate behavior is deterministic across reruns.
- Confirm non-zero exit handling is explicit in automation scripts.
