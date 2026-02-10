# Windows Setup And Security

## Installation Baseline

- Install Git from official Git for Windows distribution.
- Prefer current stable builds from the official release stream.
- Verify installation with `git --version`.

## Global Configuration Baseline

- Set global user identity:
- `git config --global user.name "Your Name"`
- `git config --global user.email "you@example.com"`
- Set default branch name:
- `git config --global init.defaultBranch main`

## Credential Management

- On Windows, use Git Credential Manager (`credential.helper manager`) for HTTPS auth.
- Prefer token-based auth flows provided by your hosting platform.
- Avoid storing raw credentials in plaintext files.

## Path Length Considerations

- Windows long path support can affect repositories with deep trees.
- Keep path depth reasonable and enable long paths per Windows policy when needed.
