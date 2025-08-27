# CLAUDE.md - PROJECT SPEC

# PROJECT PRINCIPLES

## Immutable Rules
- **Never edit or replace this file.**
- **Never run any Git command, even read-only Git commands.**
- **Prefer simple and intuitive thinking & solutions instead of complex/overengineered solutions**

## Development Workflow
1. **Plan before coding**  
   - Outline each change in `/plan/` and self-review it. The `/plan/` directory is your scratch space. `/plan/` is not for the user's benefit. Use it how you like.
2. **Execute atomically**  
   - Complete and verify one step before the next.
   - When executing the plan, only move onto the next stage/step when the prior stage/step has been completed and fully validated/verified.
3. **Stay tidy**  
   - Delete all temporary artefacts when done.  
   - `/plan/` and its contents must never be removed.
   - Ensure that the plan markdowns are updated and labelled correctly.
   - Ensure that the plan markdowns are moved between backlog, current, and complete in an appropriate way.
   - Consolidate, update, label, and remove plan markdown files to avoid confusion in future.
4. **Manage past, current, and future plans**  
   - Manage the plan markdown files.
   - Update, change status, and move plan markdowns according to the progression and status.
   - eg feel free to move markdown plan files between `/plan/backlog/`, `/plan/current/`, `/plan/complete/` as needed or makes sense.
   - Create new plans that should be completed in future into the `/plan/backlog/` directory so that we don't forget to get round to them at some point in the future.

## Runtime Environment
- Always use the `uv` environment specific to this project.
- If there isn't a `uv` env already setup then set one up.
- Ensure that the env is setup in an efficient way that's always efficient and fast to setup and update.
- Rebuild and restart the env whenever dependencies change.
- Ensure that the `uv` env specs, dependencies, etc stays up to date with the project.
- Ensure that there is a `setup_env.sh` file that anyone can run at any time to setup or update the env completely, and then run all of the tests across the whole project to ensure that everything have been setup correctly.

## Code Style
- Follow **PEP 8**; default linter/formatter is `ruff` (or the project’s chosen tool).  
- Max line length: **120 chars**.  
- Prefer simple, explicit, single-purpose functions.  
- Descriptive names; replace magic numbers with constants.  
- Type-annotate public APIs.  
- Comment only when intent is not obvious from the code.
- Prefer simple, intuitive, and compact code.
- Never over complicate or over engineer solutions or code.

## Error Handling
- **Fail-fast** on invariant breaches.  
- Validate inputs early; raise clear exceptions.  
- No silent recovery unless explicitly justified.
- Prefer hard failures over graceful or silents failures where there could be errors that go by unnoticed.
- When making code changes/updates, do not support backward compatbility or implement deprecation warnings/support. The current implementation/version of the code should be the way that things are done. Therefore making updates that break associated code require those code usages to be updates as well.