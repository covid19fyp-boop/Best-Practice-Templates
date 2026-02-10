# Branching, Merge, And History Hygiene

## 1) Keep Revision Graph Linear Per Release Train

- Detect multiple heads early with Alembic history commands.
- Merge heads explicitly using Alembic merge revisions.
- Avoid shipping with unresolved parallel heads.

## 2) Avoid Rewriting Applied History

- Never modify or delete revisions already applied in shared environments.
- Fix mistakes with forward revisions, not history edits.
- Keep revision identifiers immutable once released.

## 3) Use Branch Labels And Dependencies Deliberately

- Use branch labels where multiple tracks are unavoidable.
- Declare dependencies for cross-track ordering constraints.
- Keep graph complexity low to reduce operational risk.

## 4) History Hygiene Checklist

- Confirm exactly one head for production release.
- Confirm merge revisions are reviewed and tested.
- Confirm release notes include migration graph impact.
