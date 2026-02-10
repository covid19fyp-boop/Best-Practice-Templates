# Rules, Approvals, And Safety

## 1) Use Rules As Policy Hooks

- Define `commands` policies to restrict unsafe shell operations.
- Use explicit deny and allow patterns for sensitive paths.
- Keep policy reviewed and version-controlled.

## 2) Use Prefix Approvals For Trusted Commands

- Grant command-prefix approvals only for narrowly scoped safe families.
- Avoid broad wildcard patterns that bypass risk controls.
- Revalidate approved prefixes periodically.

## 3) Keep Sandbox Boundaries Explicit

- Start with restrictive sandbox and approval settings.
- Escalate only when needed for task completion.
- Record reason for elevated execution paths.

## 4) Safety Checklist

- Confirm destructive command classes are blocked by default.
- Confirm human-approval path is enforced for high-risk actions.
- Confirm rules do not silently permit unsafe command chaining.
