Use this template to implement scoped changes safely.

```text
Implement this task with minimal, focused edits.

Task:
<describe exact change>

Boundaries:
- Allowed paths: <list paths>
- Do not modify: <list paths>
- Keep module ownership rules intact.
- Prevent giant files; split new logic into focused modules/files.

Execution rules:
- Keep diffs small and reviewable.
- Avoid destructive operations unless explicitly authorized.
- Add or update tests for changed behavior.
- Run lint/type/tests before finishing.

Output:
1) Files changed
2) Why each change was needed
3) Test commands run
4) Remaining risks
```
