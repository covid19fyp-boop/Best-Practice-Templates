# Service Worker And Caching Strategies

## 1) Keep Service Worker Scope Intentional

- Register worker at the smallest practical scope that covers intended routes.
- Avoid overlapping workers for the same path space unless explicitly required.
- Run only on HTTPS or secure localhost environments.

## 2) Choose Caching Per Resource Type

- App shell/static assets: precache with revisioning.
- Navigation/documents: network-first with offline fallback.
- API reads: stale-while-revalidate or network-first based on freshness needs.
- API writes: queue/retry strategy, never cache as final truth.

## 3) Plan Update Lifecycle

- Understand install -> waiting -> activate transitions.
- Decide whether to auto-activate (`skipWaiting`) or prompt users for refresh.
- Keep cache versioning explicit and delete obsolete caches during activate.

## 4) Reduce Operational Risk

- Prefer Workbox when strategy complexity grows (routing, precache, expiration plugins).
- Log worker version and activation events for rollout diagnosis.
- Keep rollback plan ready for bad caching rules.
