#!/bin/bash
# Deploy Skjol website updates to GitHub Pages
# Usage: cd ~/Documents/Claude/Projects/Skjol\ Website\ Development && bash deploy.sh

set -e

cd "$(dirname "$0")"

git add -A
git commit -m "${1:-Update website}"
git push origin main

echo ""
echo "✅ Site updated! Changes will be live at https://milesambroggio.github.io/Skjol/ in about a minute."
