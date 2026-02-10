# Automation And Config

## Config Layering

- Configure shared defaults in `~/.codex/config.toml`.
- Use profiles for project/task-specific overrides.
- Keep CLI flag overrides intentional because they take precedence.

## Non-Interactive Execution

- Use non-interactive command mode for repeatable runs.
- Prefer machine-readable output formats for downstream parsing.
- Keep prompts and constraints versioned for reproducible pipelines.

## Team Standardization

- Define one recommended profile per workflow type (safe, balanced, autonomous).
- Document expected model, reasoning effort, and approval mode per profile.
- Re-verify config behavior after CLI upgrades.
