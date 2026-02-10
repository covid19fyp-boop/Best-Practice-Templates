# Dockerized Execution And CI Gates

## 1) Run Migrations In Containers

- Execute Alembic commands in Dockerized runtime matching production dependencies.
- Keep migration environment variables explicit and version-controlled.
- Avoid host-only tooling differences.

## 2) CI Validation Flow

- Validate migration chain with `upgrade` on a clean database.
- Validate rollback boundary with targeted `downgrade` where supported.
- Run `alembic check` to detect unapplied metadata diffs.

## 3) Release Gates

- Block release if migration scripts fail on clean DB bootstrap.
- Block release if app version is incompatible with transitional schema.
- Block release if irreversible operations lack approved rollback or restore plan.

## 4) CI Checklist

- Confirm CI image pins Alembic and SQLAlchemy versions.
- Confirm migration logs are captured as build artifacts.
- Confirm pipeline includes timeout and failure notification paths.
