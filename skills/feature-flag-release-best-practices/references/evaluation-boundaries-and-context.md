# Evaluation Boundaries And Context

## 1) Choose Server Versus Client Evaluation Intentionally

- Use server-side evaluation for sensitive or privileged decisions.
- Use client-side evaluation only for non-sensitive presentation control.
- Keep decision fallback deterministic if flag provider is unavailable.

## 2) Standardize Evaluation Context

- Define minimal required context fields per flag domain.
- Use stable, non-PII keys for rollout consistency.
- Keep context schema versioned and documented.

## 3) Enforce Stickiness Rules

- Use stable entity identifiers for percentage rollouts.
- Keep stickiness scope aligned to risk (user, org, session).
- Avoid switching stickiness key mid-rollout.

## 4) Context Checklist

- Confirm context contains only required attributes.
- Confirm missing-context behavior is explicit and safe.
- Confirm context validation failures are observable.
