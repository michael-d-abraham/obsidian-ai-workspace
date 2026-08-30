#!/bin/bash

cd "/Users/michael/Desktop/Personal/notes/Mikes head/AI Workspace" || exit 1

# Get latest changes from ChatGPT/GitHub
git pull --rebase

# Add anything changed through Obsidian
git add -A

# Commit only if something changed
if ! git diff --cached --quiet; then
    git commit -m "Auto-sync Obsidian"
fi

# Send local changes to GitHub
git push
