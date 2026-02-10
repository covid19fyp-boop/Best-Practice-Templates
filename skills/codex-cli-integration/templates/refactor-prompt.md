Use this template for safe, staged refactoring.

```text
Plan and execute a safe refactor for:
<describe refactor target>

Rules:
- Show plan first.
- Keep behavior unchanged unless explicitly requested.
- Use staged changes with verification at each stage.
- Avoid broad rewrites.
- Respect module boundaries and contracts.

Deliver:
1) Refactor stages and checkpoints
2) Risk/rollback plan
3) Tests to prove behavior parity
4) Docs/ADR updates required
```
