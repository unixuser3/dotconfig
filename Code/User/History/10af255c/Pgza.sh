#!/bin/bash

# Repository URL
REPO_URL="https://github.com/unixuser3/Wallpapers/"

# Target directory
TARGET_DIR="$HOME/Pictures/wallpapers" # Note the lowercase 'w'

# Check if the target directory exists; if not, create it
if [ ! -d "$TARGET_DIR" ]; then
    mkdir -p "$TARGET_DIR"
fi

# Clone the repository
git clone "$REPO_URL" "$TARGET_DIR"

# If successful, notify the user
if [ $? -eq 0 ]; then
    echo "Wallpapers cloned successfully to $TARGET_DIR"
else
    echo "An error occurred while cloning the repository."
fi