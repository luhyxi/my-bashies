#!/bin/bash

REPO_DIR="/home/luhyxi/Documents/luhyxi_life/xX_luhyxi-leben_Xx"

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

