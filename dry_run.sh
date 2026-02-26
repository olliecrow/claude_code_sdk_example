#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<EOF
Usage:
  $(basename "$0")

Description:
  Print setup and notebook execution order without running anything.
EOF
}

if [[ $# -ne 0 ]]; then
  usage
  exit 1
fi

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "claude_code_sdk_example dry-run"
echo "repo: $repo_dir"
echo
echo "planned sequence:"
echo "1. Run ./doctor.sh to verify uv, python, claude, and SDK import."
echo "2. Run ./setup_env.sh to install or sync dependencies."
echo "3. Start Jupyter with uv run jupyter lab."
echo "4. Open claude_code_sdk.ipynb and run cells in order."
echo "5. Use diagnostics cells if any auth or environment check fails."
echo
echo "dry-run only: no setup or notebook commands were executed."
