# Docker Volume And Compose Operations

## Persistence Rules

- Store PostgreSQL data on named volumes.
- Keep container image rebuilds independent from data lifecycle.
- Avoid ad-hoc bind-mount layouts in production recovery workflows.

## Compose Recovery Patterns

- Use explicit service health checks for DB readiness.
- Gate dependent services on healthy database state during restore.
- Separate migration jobs from database bootstrapping and backup jobs.

## Backup Job Execution

- Run backup jobs as explicit scheduled containers or external schedulers.
- Mount only required volumes and credentials for each backup job.
- Keep backup logs centralized and alert on failure.

## Restore Safety

- Restore into isolated environment first for validation.
- Prevent accidental overwrite by requiring explicit target selection.
- Keep rollback/abort decision criteria in the restore checklist.
