#!/bin/bash

set -euo pipefail

# Get current branch
current_branch=$(git symbolic-ref --short HEAD)

# Skip protected branches
protected_branches=("master" "main" "dev" "$current_branch")

# Get all local branches
branches=$(git for-each-ref --format='%(refname:short)' refs/heads/)

for branch in $branches; do
  # Skip protected branches
  if [[ " ${protected_branches[*]} " == *" $branch "* ]]; then
    continue
  fi

  # Try safe delete
  if git branch -d "$branch" 2>/dev/null; then
    echo "Deleted $branch (safely)"
    continue
  fi

  # Safe delete failed; check if it's squash-merged
  merge_base=$(git merge-base "$current_branch" "$branch")
  branch_tree=$(git rev-parse "$branch^{tree}")
  commit=$(git commit-tree "$branch_tree" -p "$merge_base" -m "_")
  cherry_output=$(git cherry "$current_branch" "$commit")

  if [[ $cherry_output == "-"* ]]; then
    echo "Squash-merged detected. Forcing delete of $branch"
    # git branch -D "$branch"
  else
    echo "Not merged: $branch"
  fi
done
