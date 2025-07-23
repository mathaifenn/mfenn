#!/bin/bash

# Usage: ./gitupdate.sh "Your commit message"

# This script stages, commits, and pushes all changes to GitHub using cached credentials.

# -------------------------------
# Step 0: Ensure credential helper is enabled
git config --global credential.helper store

# Step 1: Check if commit message is provided
if [ -z "$1" ]; then
  echo "❗ Please provide a commit message."
  echo "Usage: ./gitupdate.sh \"Updated site content\""
  exit 1
fi

# Step

