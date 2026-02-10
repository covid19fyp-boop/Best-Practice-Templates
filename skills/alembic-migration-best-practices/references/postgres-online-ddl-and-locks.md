# PostgreSQL Online DDL And Locks

## 1) Understand Lock Impact Before Running DDL

- Check `ALTER TABLE` lock levels for each operation.
- Assume larger tables amplify lock duration and risk.
- Schedule lock-heavy operations in controlled windows.

## 2) Use Online-Safe Patterns Where Needed

- Use `CREATE INDEX CONCURRENTLY` on hot tables when possible.
- Avoid bundling high-risk DDL with unrelated changes.
- Separate schema and data steps when lock profile differs.

`CREATE INDEX CONCURRENTLY` cannot run inside a transaction block and requires migration handling accordingly.

## 3) Add Constraints Safely

- Use `NOT VALID` constraints first on large existing tables.
- Validate constraints later with `VALIDATE CONSTRAINT` to reduce blocking risk.
- Keep application behavior compatible between add and validate phases.

## 4) DDL Safety Checklist

- Confirm each statement lock level is documented.
- Confirm long-running commands have timeout and monitoring strategy.
- Confirm fallback plan exists if deployment window is exceeded.
