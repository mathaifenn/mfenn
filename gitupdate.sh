#!/bin/bash

# Usage: ./git-update.sh "Your commit message"

# Check for commit message
if [ -z "$1" ]; then
  echo "❗ Please provide a commit message."
  echo "Usage: ./git-update.sh \"Updated blog post\""
  exit 1
fi

# Show current status
echo "🔍 Checking status..."
git status

# Add all changes
echo "📂 Adding all changes..."
git add .

# Commit with message
echo "📝 Committing..."
git commit -m "$1"

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push

echo "✅ Done! Netlify will now redeploy your site."

