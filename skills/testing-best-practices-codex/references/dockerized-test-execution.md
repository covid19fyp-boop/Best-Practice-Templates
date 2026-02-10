# Dockerized Test Execution

## Environment Consistency

- Run tests in containers matching production-like runtimes.
- Keep language/runtime versions pinned in container images.
- Keep test dependencies installed in container build steps.

## Compose Test Patterns

- Use dedicated test services or profiles in Compose.
- Bring up only required dependencies for each test scope.
- Tear down stateful services cleanly between runs when needed.

## Data Isolation

- Use disposable test databases or transactional rollback fixtures.
- Avoid coupling tests to shared mutable long-lived DB state.
- Keep seed/fixture creation deterministic.
