# Manifest Installability And UX

## 1) Define Stable App Identity

- Set `id`, `name`, `short_name`, `start_url`, `scope`, and `display` intentionally.
- Keep identity values stable across releases to avoid install duplication.
- Provide complete icon set, including maskable icons.

## 2) Scope Navigation Deliberately

- Keep app navigation paths inside manifest scope.
- Validate deep links and entry points for standalone launch behavior.
- Avoid accidental escapes to browser tabs for in-app routes.

## 3) Handle Install Prompt APIs Defensively

- Treat `beforeinstallprompt` as optional capability, not guaranteed behavior.
- Trigger prompt only from explicit user intent.
- Capture acceptance/dismissal outcomes for UX tuning.

## 4) Keep Install UX Cross-Browser

- Provide in-app install guidance for browsers without prompt APIs.
- Test platform-specific install flows (desktop and mobile) before release.
- Ensure app still works correctly when not installed.

## 5) Next.js Note

- Use App Router manifest convention (`app/manifest.ts` or `app/manifest.webmanifest`) for consistent manifest generation.
