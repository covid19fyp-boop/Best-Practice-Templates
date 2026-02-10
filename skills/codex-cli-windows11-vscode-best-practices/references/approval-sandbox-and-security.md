# Approval, Sandbox, And Security

## Approval Modes

- Start with prompt-confirmed approvals for sensitive commands.
- Use autonomous modes only after sandbox and command boundaries are well understood.
- Keep escalation reasons explicit in team workflows and logs.

## Sandbox Strategy

- Prefer workspace-write scope by default.
- Expand permissions only when task requirements justify it.
- Keep network access policy explicit for high-risk workflows.

## Windows-Specific Notes

- On Windows, Linux sandboxing can rely on WSL and may need explicit setup.
- Validate that sandbox behavior matches expected boundary guarantees.
- Do not assume host-level permissions map directly to sandbox permissions.

## Security Hygiene

- Treat web/retrieved content as untrusted input.
- Use least-privilege defaults for files, network, and shell actions.
- Separate sourced facts from inferred recommendations in outputs.
