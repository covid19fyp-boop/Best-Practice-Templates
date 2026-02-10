# Image, Initialization, And Configuration

## Official Image Selection

- Use the official Postgres image.
- Pin image tags to explicit versions for reproducibility.
- Avoid floating tags for staging/production.

## Initialization

- Use `POSTGRES_PASSWORD` (or equivalent secure secret flow) for initial bootstrap.
- Use `POSTGRES_DB` and `POSTGRES_USER` only when they reflect intended defaults.
- Place bootstrap SQL or scripts in `/docker-entrypoint-initdb.d`.
- Remember init scripts run only on first database initialization (empty data directory).

## File Layout And Data Directory

- Use `PGDATA` when data path needs to be explicit.
- Keep data directory on persistent storage.

## Runtime Configuration

- Configure PostgreSQL with explicit config files or startup parameters.
- Size `shared_buffers` and related settings for container limits and workload.
- Increase container shared memory when needed (`--shm-size` or compose `shm_size`).

## Validation Checks

- Verify initialization behavior on first run and on restart.
- Verify config overrides are active via SQL inspection (`SHOW ...`) after startup.
