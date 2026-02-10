# PWA Scope And Support Matrix

## 1) Define The Offline Contract Per User Journey

- Classify flows into:
- Read-only offline (cacheable content).
- Deferred-write offline (queue then sync).
- Online-only operations (explicitly blocked offline).
- Document user-visible fallback behavior for each class.

## 2) Define Capability Matrix Up Front

- Track capability by target browser/platform (install prompt support, push, background sync).
- Base feature decisions on capability detection, not user agent sniffing.
- Keep the minimal baseline small: manifest, safe navigation fallback, resilient caching.

## 3) Treat Installability As UX, Not Only Technical Criteria

- Design install touchpoints around moments of user value.
- Keep browser-specific prompt behavior optional and non-blocking.
- Provide a manual install path and instructions where native prompt APIs are unavailable.

## 4) Keep Progressive Enhancement Explicit

- Keep core app functionality available even when advanced APIs are missing.
- Gate advanced features behind capability checks and graceful fallbacks.
- Re-test matrix on each major browser/runtime update.
