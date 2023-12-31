#!/bin/bash

# Funny script to commit with a path already set, will add an input sooner so that the client might set a path
# Need to add authentifications too

REPO_DIR=""

NOW=$(date '+%F_%H:%M:%S')

cd "$REPO_DIR" || exit 1

git add .

if git diff-index --quiet HEAD; then
  echo "No changes to commit in $REPO_DIR."
else
  git commit -m "$NOW"

  if git push -u origin; then
    echo "Push successful."
  else
    echo "Push failed."
  fi
fi

