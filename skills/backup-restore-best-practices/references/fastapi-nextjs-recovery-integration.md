# FastAPI Next.js Recovery Integration

## FastAPI Recovery Considerations

- Keep startup behavior resilient to delayed DB readiness.
- Keep migration failures as deployment blockers.
- Keep API error semantics predictable during partial recovery windows.

## Next.js Recovery Considerations

- Revalidate critical paths or tags after restore when cached data may be stale.
- Reconfirm route-handler and server-action behavior against restored backend state.
- Keep user-facing incident messaging consistent during recovery windows.

## Cross-Stack Contract Checks

- Validate API schema expectations against restored database state.
- Validate auth/session dependencies when restoring historical data.
- Validate background job behavior after restoration.
