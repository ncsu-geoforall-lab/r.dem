#!/bin/sh
# Refresh the snapshot from the canonical grass-addons worktree.
# Run from this repo's root, review `git diff`, then commit and tag.
set -e

SRC="${1:-$HOME/Documents/GitHub/cwhite911/r-dem}"

rsync -a --delete --exclude '__pycache__' "$SRC/src/raster/r.dem/" src/
cp "$SRC/LICENSE" LICENSE
git status --short
