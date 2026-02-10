# Next.js Auth Controls

## 1) Keep Auth Logic In Server Runtime

- Keep credential and token exchange in Route Handlers or server actions.
- Avoid exposing secrets through client bundles or public env vars.
- Keep authorization checks in server-side data access paths.

Next.js authentication guidance emphasizes server-side checks and careful session handling.

## 2) Session Cookie Controls

- Use `httpOnly`, `secure`, and `sameSite` cookie flags.
- Set explicit cookie lifetime and renewal policy.
- Rotate session identifiers after login and privilege changes.

## 3) Route Protection Strategy

- Guard privileged pages and handlers server-side.
- Treat middleware checks as convenience only; enforce again at data boundary.
- Restrict admin and tenant-sensitive operations with explicit role checks.

## 4) Cache And Data Exposure Controls

- Prevent caching of personalized or sensitive authenticated responses.
- Revalidate and invalidate server cache intentionally after auth changes.
- Expose only minimal identity fields to client components.

## 5) Next.js Checklist

- Confirm protected routes cannot be accessed without server-side auth checks.
- Confirm session cookies are never readable by browser JavaScript.
- Confirm logout and revoke flows clear session state and cache artifacts.
