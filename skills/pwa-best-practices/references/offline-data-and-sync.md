# Offline Data And Sync

## 1) Separate Response Cache From Business Data

- Use Cache Storage for HTTP response reuse.
- Use IndexedDB for mutable domain data and queued operations.
- Keep schema/version migration plan for local data stores.

## 2) Make Reconnect Behavior Deterministic

- Use idempotency keys for queued write replay.
- Define conflict resolution policy (client wins, server wins, merge, or manual resolution).
- Show sync status to users for pending and failed operations.

## 3) Use Background Sync As Enhancement

- Use one-off Background Sync where supported for deferred sends.
- Treat Periodic Background Sync as optional capability with fallback polling.
- Keep in-app manual retry for unsupported browsers.

## 4) Request Persistent Storage Carefully

- Use storage persistence APIs for data that must survive eviction.
- Handle rejected persistence requests gracefully.
- Monitor storage pressure behavior on constrained devices.
