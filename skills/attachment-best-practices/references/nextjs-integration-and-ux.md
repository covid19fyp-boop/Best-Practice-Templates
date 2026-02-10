# Next.js Integration And UX

## Server-Side Mutation Boundaries

- Keep upload initialization, delete, and restore logic server-side.
- Use Route Handlers or Server Actions for privileged operations.
- Keep storage credentials out of client bundles.

## Upload UX

- Use resumable/chunked strategy where file size and network conditions require it.
- Surface progress, retry, and failure reasons clearly.
- Keep finalize/commit step explicit so metadata and object state remain consistent.

## Cache And Revalidation

- Revalidate list/detail paths or tags after upload/delete/restore.
- Ensure restored items reappear consistently across UI surfaces.
- Keep optimistic UI consistent with backend idempotency rules.
