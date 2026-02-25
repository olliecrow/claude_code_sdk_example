# Project Preferences (Going Forward)

These preferences define how `claude_code_sdk_example` should be maintained as an open-source-ready tutorial repository.

## Quality and Scope

- Keep tutorial examples runnable, incremental, and easy to verify.
- Prefer clarity for learners over clever abstractions.
- Keep setup/bootstrap paths deterministic and documented.

## Security and Confidentiality

- Never commit secrets, credentials, tokens, API keys, or private key material.
- Never commit private/sensitive machine paths; use placeholders such as `/path/to/project`, `/Users/YOU`, `/home/user`, or `C:\\Users\\USERNAME`.
- Keep local runtime state untracked (`.env*`, `.claude/`, `.codex/`, notebook transient artifacts).
- If sensitive data is found in history, rotate credentials and scrub history before publication.

## Documentation Expectations

- Keep notebook instructions and `README.md` in sync.
- Keep auth/setup guidance explicit and safe for public readers.

## Verification Expectations

- Re-run setup and key tutorial sections after meaningful changes.
- Keep notebook outputs sanitized when preparing public releases.

## Collaboration Preferences

- Preserve accurate author/committer attribution for each contributor.
- Prefer commit author identities tied to genuine human GitHub accounts, not fabricated bot names/emails.
- Avoid destructive history rewrites unless required for secret/confidentiality remediation.
