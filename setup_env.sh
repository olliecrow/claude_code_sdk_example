#!/bin/bash

# Claude Code SDK Tutorial Environment Setup Script
# This script sets up a Python environment with UV for the Claude Code SDK tutorial

set -e

echo "🤖 Setting up Claude Code SDK Tutorial Environment..."
echo "=================================================="

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "❌ uv is not installed. Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    
    # Source the shell profile to make uv available
    if [ -f "$HOME/.cargo/env" ]; then
        source "$HOME/.cargo/env"
    fi
    
    # Check again
    if ! command -v uv &> /dev/null; then
        echo "❌ uv installation failed. Please install manually:"
        echo "   curl -LsSf https://astral.sh/uv/install.sh | sh"
        echo "   Then restart your shell or run: source ~/.cargo/env"
        exit 1
    fi
fi

echo "✅ Found uv $(uv --version)"

# Initialize uv project if needed
if [ ! -f ".python-version" ]; then
    echo "🐍 Initializing Python environment..."
    uv python install
fi

# Sync dependencies using uv
echo "📦 Installing dependencies..."
uv sync

# Check if claude-code-sdk is working
echo "🧪 Testing Claude Code SDK installation..."
uv run python -c "
from claude_code_sdk import query, ClaudeCodeOptions
print('✅ Claude Code SDK imported successfully')
options = ClaudeCodeOptions(max_turns=1)
print('✅ ClaudeCodeOptions created successfully')
print('✅ Setup test passed!')
"

echo ""
echo "🎉 Setup complete!"
echo ""
echo "📚 Available commands:"
echo "  uv run jupyter lab                    # Start Jupyter Lab"
echo "  uv run jupyter notebook              # Start Jupyter Notebook"
echo "  uv run python                        # Start Python REPL"
echo "  uv run python your_script.py         # Run a Python script"
echo ""
echo "📖 Tutorial notebook:"
echo "  claude_code_sdk.ipynb"
echo ""
echo "💡 How it works:"
echo "  Uses your existing Claude Code subscription - no API key needed!"
echo ""
echo "🚀 Ready to learn Claude Code SDK!"