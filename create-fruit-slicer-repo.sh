#!/usr/bin/env bash
#
# Create the standalone Fruit Slicer repo on GitHub and turn on GitHub Pages.
# A Claude Code session can't create public repos (GitHub blocks that for its
# session type), so this is handed to you to run on your own machine, where you
# have the gh CLI authenticated.
#
# 1. Extract the bundle:   tar xzf fruit-slicer.tar.gz
# 2. cd fruit-slicer
# 3. bash create-fruit-slicer-repo.sh
#
set -euo pipefail

# the bundle already contains a git repo with the first commit, so just create
# the GitHub repo from it and push
gh repo create tbirdpower3000/fruit-slicer \
  --public --source=. --remote=origin --push \
  --description "Webcam hand-control game: slice flying fruit with your bare hand (MediaPipe, browser)."

# turn on GitHub Pages, serving / from the main branch
gh api -X POST repos/tbirdpower3000/fruit-slicer/pages \
  -f 'source[branch]=main' -f 'source[path]=/' >/dev/null 2>&1 \
  || gh api -X PUT repos/tbirdpower3000/fruit-slicer/pages \
       -f 'source[branch]=main' -f 'source[path]=/' >/dev/null

echo "Done. The slicer will be live in a minute or two at:"
echo "  https://tbirdpower3000.github.io/fruit-slicer/"
