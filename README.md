# Claude Code SDK Tutorial

A comprehensive tutorial for learning the Claude Code SDK with hands-on Jupyter notebook examples.

## Quick Start

1. **Setup the environment:**
   ```bash
   ./setup.sh
   ```

2. **Start Jupyter Lab:**
   ```bash
   uv run jupyter lab
   ```

3. **Open the tutorial notebook:**
   `claude_code_sdk_complete_tutorial.ipynb`

## What's Included

### 📓 Tutorial Notebook
- **11 comprehensive examples** covering all SDK features
- **Self-contained cells** that can be run independently  
- **Production-ready patterns** with proper error handling
- **Real-world use cases** like code generation and review

### 🛠️ Environment Setup
- **UV-based dependency management** for fast, reliable installs
- **Minimal dependencies** focused on the tutorial needs
- **Jupyter Lab/Notebook** for interactive development
- **Cross-platform compatibility** (Windows, macOS, Linux)

## Tutorial Topics

1. **Basic Setup & Authentication** - Get started with the SDK
2. **Simple Queries** - Make your first Claude Code requests
3. **Custom System Prompts** - Tailor Claude's behavior
4. **Multi-turn Conversations** - Build interactive dialogues
5. **Tools Integration** - Use file operations and bash commands
6. **JSON Output** - Get structured responses
7. **Error Handling** - Robust production patterns
8. **Code Generation** - Automated code creation
9. **Message Exploration** - Understanding SDK responses
10. **Advanced Configuration** - Fine-tuning SDK behavior
11. **Diagnostics** - Environment validation and debugging

## Requirements

- Python 3.10+
- UV package manager (auto-installed by setup script)
- Optional: `ANTHROPIC_API_KEY` environment variable

## Manual Setup

If you prefer manual setup:

```bash
# Install UV if not already installed
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install dependencies
uv sync

# Start Jupyter
uv run jupyter lab
```

## API Key Setup

For full functionality, set your Anthropic API key:

```bash
export ANTHROPIC_API_KEY='your-api-key-here'
```

Or create a `.env` file:
```
ANTHROPIC_API_KEY=your-api-key-here
```

> **Note:** The tutorial works in Claude Code environments without explicit API key setup.

## Project Structure

```
.
├── claude_code_sdk_complete_tutorial.ipynb  # Main tutorial notebook
├── pyproject.toml                            # UV project configuration
├── uv.lock                                   # Dependency lock file
├── setup.sh                                  # One-command environment setup
└── README.md                                 # This file
```

## Features

✅ **Complete Tutorial** - Covers all SDK capabilities  
✅ **Jupyter Ready** - Optimized for notebook environments  
✅ **Production Patterns** - Real-world error handling  
✅ **Self-Contained** - Each example runs independently  
✅ **Well-Tested** - All patterns verified to work  
✅ **UV-Based** - Fast, modern Python dependency management  

## Getting Help

- Tutorial notebook has detailed explanations for each example
- Each cell includes error handling and troubleshooting tips
- Check the [Claude Code documentation](https://docs.anthropic.com/en/docs/claude-code) for advanced topics

Happy coding with Claude! 🚀