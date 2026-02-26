# claude_code_sdk_example

Hands-on tutorial project for learning the Claude Code SDK in Jupyter notebooks.

## What this project is trying to achieve

Give you a clean and runnable path from zero setup to practical SDK usage.

## What you experience as a user

1. You run one setup script.
2. You open the notebook.
3. You move through examples from basic calls to structured workflows.
4. You use diagnostics cells if your environment needs debugging.

## Quick start

1. Set up the environment.

```bash
./setup_env.sh
```

2. Launch Jupyter Lab.

```bash
uv run jupyter lab
```

3. Open and run `claude_code_sdk.ipynb`.

Run a quick environment check.

```bash
./doctor.sh
```

Preview setup and execution order.

```bash
./dry_run.sh
```

## Recommended notebook order

1. Setup and environment checks.
2. Simple query examples.
3. Multi-turn and tool integration examples.
4. Structured output and error handling examples.
5. Diagnostics cells.

## Requirements

- Python `3.10+`
- `uv`
- Claude Code CLI and SDK access in your local environment

## Authentication

The examples use your existing local Claude Code session.
If your environment needs API keys, configure that before running notebook cells.

## Helpful tips

- Re-run `./setup_env.sh` if dependencies or SDK bindings drift.
- Run `uv sync` manually when you need to refresh dependencies.

## Example output

Doctor summary.

```text
claude_code_sdk_example doctor
[ok] tool uv: /usr/local/bin/uv
[ok] sdk import: claude_code_sdk import works
doctor result: PASS
```

Dry-run summary.

```text
claude_code_sdk_example dry-run
planned sequence:
1. Run ./doctor.sh.
2. Run ./setup_env.sh.
3. Start Jupyter.
4. Open claude_code_sdk.ipynb.
dry-run only: no setup or notebook commands were executed.
```

## Directory layout

- `claude_code_sdk.ipynb`: tutorial notebook
- `setup_env.sh`: setup and environment verification script
- `pyproject.toml` and `uv.lock`: dependency metadata
- `.venv/`: local environment created by `uv`
- `CLAUDE.md`: project specific local agent instructions

## Documentation map

- `README.md`: human-facing project guide
- `claude_code_sdk.ipynb`: tutorial content and executable examples
- `CLAUDE.md`: local operating rules for agent workflows
- `docs/README.md`: docs index and routing
- `docs/project-preferences.md`: durable project maintenance preferences
