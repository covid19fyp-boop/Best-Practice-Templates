---
name: pwa-best-practices
description: Design, implement, and operate Progressive Web Apps (PWAs) with reliable installability, offline behavior, caching, updates, and re-engagement. Use when planning or reviewing web app manifest strategy, service worker lifecycle/caching, offline data and sync behavior, push notification flows, or Next.js + backend integration for production PWA releases.
---

# PWA Best Practices

Follow this workflow when building or reviewing a Progressive Web App.

## 1) Define Product Scope And Support Matrix First

- Define the core journeys that must work with unstable or no network.
- Define browser and platform support targets before selecting APIs.
- Treat unsupported capabilities as progressive enhancement, not hard requirements.

Read `references/pwa-scope-and-support-matrix.md`.

## 2) Implement Manifest And Install UX Deliberately

- Define stable app identity (`id`, `start_url`, `scope`) and icon set (including maskable icon).
- Keep install flows user-driven; do not force prompt timing.
- Handle install APIs as browser-dependent capabilities.

Read `references/manifest-installability-and-ux.md`.

## 3) Design Service Worker Scope, Caching, And Update Rules

- Keep one clear service worker scope per app surface.
- Choose caching strategies by resource type instead of a single global strategy.
- Define update behavior so users can move safely from waiting worker to active worker.

Read `references/service-worker-and-caching-strategies.md`.

## 4) Define Offline Data And Reconnection Semantics

- Separate cached HTTP responses from mutable application data.
- Define how queued writes reconcile after reconnect (idempotency and conflict handling).
- Use background sync APIs only where supported; keep fallback behavior explicit.

Read `references/offline-data-and-sync.md`.

## 5) Implement Push Notifications With Consent And Lifecycle Controls

- Request notification permission in context and from user intent.
- Protect subscription endpoints and rotate/expire stale subscriptions.
- Keep unsubscribe and preference controls first-class.

Read `references/push-notifications-and-permissions.md`.

## 6) Integrate PWA Delivery In Next.js + FastAPI Boundaries

- Use Next.js App Router conventions for manifest and client-side worker registration.
- Keep push and subscription contracts explicit at backend API boundaries.
- Follow repository policy: run install/build/test tasks in Docker, not host.

Read `references/nextjs-fastapi-pwa-integration.md`.

## 7) Enforce PWA Release Gates And Operational Safety

- Validate installability, offline flows, update flow, and push delivery before release.
- Monitor service worker version rollout and failure signals.
- Prepare rollback playbooks for broken worker or cache policies.

Read `references/testing-monitoring-and-release-ops.md`.

For canonical updates and source verification, consult `references/official-sources.md`.
