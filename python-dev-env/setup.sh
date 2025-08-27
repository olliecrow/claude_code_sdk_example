#!/bin/bash

# Python Development Environment Setup Script
# This script sets up a complete Python development environment with:
# - Claude Code SDK (Anthropic)
# - Jupyter Lab/Notebook
# - Data science libraries (pandas, numpy, matplotlib, etc.)
# - Development tools (black, pytest, mypy, etc.)
# - Utility libraries (requests, pydantic, rich, etc.)

set -e

echo "🐍 Setting up Python Development Environment..."
echo "================================================"

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "❌ uv is not installed. Please install uv first:"
    echo "   curl -LsSf https://astral.sh/uv/install.sh | sh"
    exit 1
fi

echo "✅ Found uv $(uv --version)"

# Sync dependencies using uv
echo "📦 Installing dependencies..."
uv sync

echo ""
echo "🎉 Setup complete!"
echo ""
echo "To activate the environment, run:"
echo "  source .venv/bin/activate"
echo ""
echo "Or use uv to run commands directly:"
echo "  uv run jupyter lab"
echo "  uv run python your_script.py"
echo ""
echo "📚 Installed packages include:"
echo "  - anthropic (Claude Code SDK)"
echo "  - jupyter, jupyterlab"
echo "  - pandas, numpy, matplotlib, seaborn"
echo "  - scikit-learn, transformers, torch"
echo "  - black, pytest, mypy (dev tools)"
echo "  - requests, pydantic, rich (utilities)"
echo ""
echo "🚀 Happy coding!"