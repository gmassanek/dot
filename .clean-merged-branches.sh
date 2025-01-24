#!/bin/bash

# Get the list of local branches excluding the current branch, master, and dev
branches=$(git branch --format="%(refname:short)" | grep -v "^*" | grep -vE "^(master|dev|main)$")

# Iterate through all local branches
for branch in $branches; do
    # Find the merge base between master and the branch
    mergeBase=$(git merge-base master "$branch")

    # Create a commit tree for the branch and check if the changes are already in master
    if [[ $(git cherry master $(git commit-tree $(git rev-parse "$branch^{tree}") -p $mergeBase -m _)) == "-"* ]]; then
        git branch -D "$branch"
    fi
done
