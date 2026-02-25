# claude_code_sdk_example

Hands-on tutorial project for learning the Claude Code SDK in Jupyter notebooks.

## Project Aim

Provide a runnable, end-to-end learning path for the Claude Code SDK with practical examples that can be executed locally.

## What This Repository Does

- provides a tutorial notebook (`claude_code_sdk.ipynb`) with progressive SDK examples
- includes one-command environment setup (`setup_env.sh`)
- uses `uv` for reproducible Python dependency management

## Requirements

- Python `3.10+`
- `uv` package manager
- Claude Code CLI/SDK access in your local environment

## Authentication

The examples are designed to use your existing local Claude Code authentication/session. If your environment requires API-key auth, configure it before running notebook examples.

## Quick Start

1. Set up the environment:

```bash
./setup_env.sh
```

2. Launch Jupyter Lab:

```bash
uv run jupyter lab
```

3. Open and run:

- `claude_code_sdk.ipynb`

## Getting Started

Recommended first run order in the notebook:

1. setup and environment validation
2. simple query examples
3. multi-turn and tool integration examples
4. structured output and error handling examples
5. diagnostics cells

## Local State and Directory Layout

- `claude_code_sdk.ipynb`: tutorial notebook
- `setup_env.sh`: environment bootstrap and verification script
- `pyproject.toml` + `uv.lock`: dependency and lock metadata
- `.venv/`: local environment directory created by `uv` (local-only)
- `CLAUDE.md`: project-specific local agent instructions

## Logging and Debugging

- rerun `./setup_env.sh` if dependencies or SDK bindings drift
- use notebook diagnostics cells to verify SDK import and runtime configuration
- run `uv sync` manually if dependency resolution changes are needed

## Documentation Map

- `README.md`: human-facing project guide
- `claude_code_sdk.ipynb`: tutorial content and executable examples
- `CLAUDE.md`: project operating rules for local agent workflows
- `docs/project-preferences.md`: durable project maintenance preferences
