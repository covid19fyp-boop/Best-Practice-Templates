# VS Code Integration

## Editor Wiring

- Use VS Code terminal profiles/tasks so Codex starts in the intended shell.
- Keep workspace-level instructions explicit about shell and working directory.
- Avoid hidden shell switching between integrated terminal tabs.

## WSL Integration

- In VS Code settings for Codex, enable running Codex in WSL on Windows.
- If WSL mode is used, open folders in WSL context for consistent path behavior.
- Keep extension and terminal behavior aligned with chosen runtime context.

## Day-To-Day Workflow

- Start Codex from the same terminal context used for build/test commands.
- Keep command history reproducible by standardizing aliases and startup scripts.
- Validate key commands in both fresh terminal sessions and reopened editor windows.
