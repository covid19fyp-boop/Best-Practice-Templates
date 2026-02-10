# Next.js Integration

## Mutation Boundaries

- Execute delete/restore mutations in Server Actions or Route Handlers.
- Keep secrets and privileged mutation logic on server runtime.

## Cache Revalidation

- After delete/restore, call `revalidatePath` or `revalidateTag` for affected views.
- Revalidate list and detail routes that can surface restored/deleted state.

## UX Consistency

- Reflect soft-delete state explicitly in UI where needed (active, deleted, restorable).
- Keep optimistic UI updates aligned with backend idempotency and conflict responses.
