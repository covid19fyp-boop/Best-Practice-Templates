# Setup And Prerequisites

## Install Baseline

- Install Codex CLI using npm:
- `npm i -g @openai/codex`
- Verify installation:
- `codex --version`

## Windows 11 Execution Strategy

- Prefer WSL-based execution for Linux-like sandbox behavior.
- Keep one primary execution context per project workflow (Windows shell or WSL shell).
- Avoid mixed-path workflows that bounce between Windows and WSL for the same commands.

## Auth Baseline

- Authenticate with `codex login`.
- Confirm login succeeds before tuning runtime settings.
- Rotate credentials according to team policy.
