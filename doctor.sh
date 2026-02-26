#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<EOF
Usage:
  $(basename "$0")

Description:
  Run non-mutating environment checks for this notebook project.
EOF
}

if [[ $# -ne 0 ]]; then
  usage
  exit 1
fi

exit_code=0

report_ok() {
  local name="$1"
  local detail="$2"
  echo "[ok] $name: $detail"
}

report_fail() {
  local name="$1"
  local detail="$2"
  echo "[fail] $name: $detail"
  exit_code=1
}

check_tool() {
  local tool="$1"
  if path="$(command -v "$tool" 2>/dev/null)"; then
    report_ok "tool $tool" "$path"
  else
    report_fail "tool $tool" "not found in PATH"
  fi
}

echo "claude_code_sdk_example doctor"
echo

check_tool uv
check_tool python3
check_tool claude

if [[ -f "pyproject.toml" ]]; then
  report_ok "project file" "pyproject.toml present"
else
  report_fail "project file" "pyproject.toml missing"
fi

if [[ -f "claude_code_sdk.ipynb" ]]; then
  report_ok "notebook" "claude_code_sdk.ipynb present"
else
  report_fail "notebook" "claude_code_sdk.ipynb missing"
fi

if uv run python -c "from claude_code_sdk import ClaudeCodeOptions; ClaudeCodeOptions(max_turns=1)" >/dev/null 2>&1; then
  report_ok "sdk import" "claude_code_sdk import works"
else
  report_fail "sdk import" "failed, run ./setup_env.sh or uv sync"
fi

if [[ "$exit_code" -eq 0 ]]; then
  echo
  echo "doctor result: PASS"
  exit 0
fi

echo
echo "doctor result: FAIL"
exit 1
