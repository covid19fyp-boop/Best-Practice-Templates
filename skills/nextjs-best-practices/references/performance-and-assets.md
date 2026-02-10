# Performance And Assets

## Images And Fonts

- Use `next/image` for optimized image delivery.
- Use `next/font` for predictable font loading and reduced layout shift.
- Avoid oversized assets in critical rendering paths.

## Bundle Strategy

- Keep client component trees small.
- Avoid unnecessary client libraries in server-rendered routes.
- Use dynamic imports where split points improve user-perceived performance.

## Runtime Optimization

- Profile slow routes and optimize data dependencies first.
- Use partial rendering/loading states to improve perceived responsiveness.
- Re-check performance after adding analytics, monitoring, or third-party scripts.
