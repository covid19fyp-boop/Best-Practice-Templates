---
name: modern-ui-ux-best-practices
description: Design and review modern UI/UX quality for web applications with strong accessibility, interaction clarity, responsive behavior, and perceived performance. Use when improving design systems, assessing product usability debt, or preparing interface redesigns. Do not use for framework-specific implementation details in Next.js routing/data/rendering (use `nextjs-best-practices`).
---

# Modern Ui Ux Best Practices

Follow this workflow when planning, implementing, or reviewing UI/UX quality.

## 1) Define User Goals And Critical Journeys

- Identify primary personas and top user tasks.
- Map friction points in current journeys before proposing visuals.
- Set measurable UX targets (completion rate, time-to-task, error rate).

Read `references/user-journeys-and-success-metrics.md`.

## 2) Enforce Accessibility Baseline Early

- Treat WCAG 2.2 AA as baseline quality, not optional polish.
- Validate semantic structure, keyboard use, focus visibility, and contrast.
- Ensure forms and errors are understandable and assistive-tech friendly.

Read `references/accessibility-and-inclusive-design.md`.

## 3) Build Consistent Interface Language

- Apply design tokens for spacing, typography, color, and component states.
- Keep interaction behavior consistent across screens and devices.
- Remove one-off patterns unless they solve a clear user problem.

Read `references/design-system-and-interactions.md`.

## 4) Optimize Responsive And Performance UX

- Design mobile-first and progressively enhance for larger screens.
- Protect Core Web Vitals and prevent layout/interaction jank.
- Use loading, empty, and error states intentionally.

Read `references/responsive-and-performance-ux.md`.

## 5) Validate With Real Feedback And Iteration

- Test key flows with users or realistic stakeholder walkthroughs.
- Track drop-offs, rage clicks, and repeated confusion points.
- Convert UX defects into prioritized backlog with owners.

Read `references/usability-validation-and-iteration.md`.

For canonical updates and source verification, consult `references/official-sources.md`.
