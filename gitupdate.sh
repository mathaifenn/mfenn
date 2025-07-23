#!/bin/bash

# Usage: ./gitupdate.sh "Your commit message"

# Check for commit message
if [ -z "$1" ]; then
  echo "❗ Please provide a commit message."
  echo "Usage: ./gitupdate.sh \"Updated index.md\""
  exit 1
fi

# Step 1: Clean and rebuild
echo "🧹 Removing old _site..."
rm -rf _site

echo "🔧 Rebuilding Eleventy site..."
npx @11ty/eleventy

# Step 2: Git commit and push
echo "📂 Adding all changes..."
git add .

echo "📝 Committing..."
git commit -m "$1"

echo "🚀 Pushing to GitHub..."
git push

echo "✅ Done! Netlify will redeploy with the latest content."

