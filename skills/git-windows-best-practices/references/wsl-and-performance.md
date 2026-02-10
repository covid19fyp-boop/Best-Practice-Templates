# WSL And Performance

## Execution Model

- Use one primary execution context per repository workflow:
- Windows-native tools, or
- WSL-native tools.
- Avoid mixing both contexts in ways that create inconsistent file metadata or performance penalties.

## File Placement

- For Linux tooling in WSL, store source under the Linux filesystem for better I/O performance.
- Avoid high-frequency operations on Windows-mounted paths from inside WSL when performance matters.

## Large Repository Operations

- Consider built-in Git maintenance for repositories with heavy history or many files.
- Re-run maintenance after substantial repository growth.

## Practical Checks

- Compare `git status` and checkout performance in Windows-native and WSL-native paths.
- Standardize the faster, more stable path for team onboarding docs.
