#!/bin/bash
set -euo pipefail

# Only run in Claude Code on the web (ephemeral remote container).
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Idempotent: skip if markitdown is already on PATH.
if command -v markitdown >/dev/null 2>&1; then
  exit 0
fi

# Install MarkItDown so large files can be converted to Markdown before reading.
pip install markitdown --break-system-packages --quiet
