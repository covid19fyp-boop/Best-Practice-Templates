# Push Notifications And Permissions

## 1) Collect Permission With Intent

- Request notification permission from a clear user action, not on first paint.
- Explain value before requesting permission.
- Respect denied/default states and avoid repeated permission spam.

## 2) Manage Push Subscriptions As Sensitive Data

- Store subscription endpoint and keys per user/device with lifecycle metadata.
- Validate auth before subscribe/unsubscribe mutations.
- Remove invalid subscriptions on push provider failures (for example, expired endpoints).

## 3) Follow Web Push Security Model

- Send push messages using VAPID-authenticated requests.
- Keep private signing keys server-side only.
- Enforce TLS and strict secret management for push delivery infrastructure.

## 4) Keep User Controls Complete

- Provide in-app controls for notification category preferences.
- Support explicit unsubscribe and account-level notification disable flows.
- Track delivery and interaction events to tune noise vs value.
