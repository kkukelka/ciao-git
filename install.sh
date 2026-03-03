#!/bin/bash
# install.sh

# Define paths
RC_FILE="$HOME/.zshrc"
TOOL_FILE="$HOME/.ciao-git.sh"

echo "Installing ciao-git..."

# 1. Copy the aliases file to the user's home directory
cp aliases.sh "$TOOL_FILE"

# 2. Check if the source line already exists in .zshrc
if grep -q "source $TOOL_FILE" "$RC_FILE"; then
    echo "Aliases are already installed in your .zshrc."
else
    # Append the source command to the end of .zshrc
    echo "" >> "$RC_FILE"
    echo "# -- ciao-git --" >> "$RC_FILE"
    echo "source $TOOL_FILE" >> "$RC_FILE"
    echo "Added to $RC_FILE"
fi

echo "Installation complete! To use them right now, run:"
echo "source ~/.zshrc"