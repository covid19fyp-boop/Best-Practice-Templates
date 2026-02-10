# FastAPI And Next.js Implementation Patterns

## 1) Keep Security And Authorization Out Of Flag-Only Control

- Use flags to gate rollout, not to replace authorization checks.
- Keep authz and data-access policy enforced independently.
- Avoid exposing privileged rollout logic to browser-only evaluation.

## 2) FastAPI Pattern

- Evaluate critical flags in API service layer for consistency.
- Keep response contracts stable across flag states when possible.
- Add explicit fallback behavior for flag provider failures.

## 3) Next.js Pattern

- Prefer server-side flag evaluation for SSR and server actions.
- Keep client-only flag usage limited to presentation toggles.
- Isolate flagged branches in dedicated modules for easier cleanup.

## 4) Implementation Checklist

- Confirm both code paths pass integration tests.
- Confirm fallback mode does not leak unstable features.
- Confirm flag removal plan is tied to tracked cleanup tasks.
