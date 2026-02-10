# Troubleshooting

## 1) Confirm Runtime Context

- Check whether command is running in Windows shell or WSL shell.
- Confirm working directory and path style match runtime context.
- Re-run from a clean terminal session before deeper changes.

## 2) Confirm Codex Baseline

- `codex --version`
- `codex login`
- `codex doctor` (or equivalent diagnostics command if available)

## 3) Confirm VS Code Terminal Wiring

- Verify selected terminal profile.
- Verify task shell and startup command match intended runtime.
- Verify WSL integration settings when using WSL mode.

## 4) Confirm Safety Controls

- Check current approval mode and sandbox mode.
- Reproduce with stricter settings first, then loosen gradually.
- Capture exact command and error output before changing multiple variables.

## 5) Confirm External Dependencies

- Validate Docker Desktop or other runtime prerequisites when workflow depends on them.
- Confirm daemon/services are running before attributing failure to Codex.
- Distinguish environment failures from model/tool behavior failures.
