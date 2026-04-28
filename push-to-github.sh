#!/bin/bash
# Push Skjol website to GitHub
# Run this from Terminal: cd ~/Documents/Claude/Projects/Skjol\ Website\ Development && bash push-to-github.sh

set -e

echo "🏔️  Setting up Skjol repository..."

# Clean up any leftover .git from sandbox attempt
rm -rf .git

# Initialize fresh repo
git init
git branch -m main

# Create .gitignore
echo ".DS_Store" > .gitignore

# Configure git (local to this repo)
git config user.email "milesambroggio@gmail.com"
git config user.name "Miles Ambroggio"

# Stage all files
git add -A
echo "✅ Files staged:"
git status --short

# Commit
git commit -m "Initial commit: Skjol Avon website

- Homepage (index.html)
- Residences page with floor plans
- Amenities page
- Location page
- Vision page
- Contact page
- All images and logos"

echo ""
echo "✅ Commit created successfully"

# Add remote and push
git remote add origin git@github.com:milesambroggio/Skjol.git

echo ""
echo "Pushing to GitHub..."
git push -u origin main --force

echo ""
echo "🎉 Done! Your site is live at: https://github.com/milesambroggio/Skjol"

# Clean up this script
rm -- "$0"
