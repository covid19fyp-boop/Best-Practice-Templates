# Line Endings And Ignore Rules

## Line Ending Strategy

- Use `.gitattributes` to define repository line ending behavior explicitly.
- Avoid relying only on per-machine defaults for cross-platform projects.
- Treat normalization changes as deliberate migrations, not incidental edits.

## `core.autocrlf` Guidance

- `core.autocrlf=true` converts LF to CRLF on checkout and CRLF to LF on commit.
- `core.autocrlf=input` leaves checkout as-is and converts CRLF to LF on commit.
- Align the setting with project policy and `.gitattributes` rules.

## Safety Checks

- Use `core.safecrlf` when teams need protection against irreversible conversions.
- Review changed files after normalization changes before merge.

## `.gitignore` Hygiene

- Keep project-specific patterns in repository `.gitignore`.
- Keep machine/user-specific patterns in global excludes file when appropriate.
- Validate ignore precedence when patterns appear in multiple places.
