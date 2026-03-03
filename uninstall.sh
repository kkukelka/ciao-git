#!/bin/bash
# uninstall.sh

# Define paths
RC_FILE="$HOME/.zshrc"
TOOL_FILE="$HOME/.ciao-git.sh"

echo "Uninstalling ciao-git..."

# 1. Remove the hidden aliases file
if [ -f "$TOOL_FILE" ]; then
    rm "$TOOL_FILE"
    echo "Removed $TOOL_FILE"
fi

# 2. Remove the lines from .zshrc
if [ -f "$RC_FILE" ]; then
    # This deletes the specific header and the source line
    sed -i '' '/# -- ciao-git --/d' "$RC_FILE"
    sed -i '' "\:source $TOOL_FILE:d" "$RC_FILE"
    echo "Cleaned up $RC_FILE"
fi

echo "Uninstallation complete! Restart your terminal to see changes."