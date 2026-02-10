# Next.js Testing

## Route And UI Behavior

- Test loading, error, and not-found states for critical routes.
- Test server/client component interaction at boundary points.
- Keep assertions focused on behavior, not implementation internals.

## Unit And Integration

- Use React Testing Library for component behavior.
- Use route-level integration tests for mutation and data-loading paths.
- Keep mock boundaries explicit for network and server action calls.

## End-To-End

- Use Playwright for critical cross-page user journeys.
- Keep E2E suites small and stable to avoid pipeline drag.
