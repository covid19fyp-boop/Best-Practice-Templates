# Windows 11 Docker Desktop Checklist

Date verified: February 6, 2026

## 1) Confirm Current Docker Desktop Requirements

- Check the official Windows install page before installation because supported editions/builds can change over time.
- Confirm your Windows 11 edition and build number match current Docker Desktop requirements.
- Confirm required virtualization capabilities are enabled.

## 2) Confirm WSL 2 Readiness

- Run `wsl --version` and verify WSL is installed.
- Run `wsl --update` if WSL is out of date.
- Run `wsl --status` to confirm default version and kernel status.

## 3) Choose Runtime Backend Deliberately

- For Linux containers on Windows, prefer Docker Desktop with WSL 2 backend.
- Use Hyper-V backend only when WSL-based workflows are not suitable for your environment.

## 4) Use WSL-Optimized Development Layout

- Keep source files in the Linux filesystem when possible to improve file I/O performance.
- Avoid heavy bind-mount workflows from Windows filesystem for high-churn projects.
- Keep Docker CLI and Docker Desktop up to date to avoid backend mismatch issues.

## 5) First-Run Validation

- Run `docker version` and `docker info`.
- Run `docker run hello-world`.
- If using Compose, run `docker compose version` and a small sample stack.

## Sources

- https://docs.docker.com/desktop/setup/install/windows-install/
- https://docs.docker.com/desktop/features/wsl/
- https://learn.microsoft.com/en-us/windows/wsl/install
