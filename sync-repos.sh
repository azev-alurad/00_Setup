#!/bin/bash

ORG="azev-alurad"
BASE_DIR="${1:-/home/reyemb/dev/azev-alurad}"

echo "Syncing repositories from $ORG to $BASE_DIR"
echo "============================================="

repos=$(gh repo list "$ORG" --limit 100 --json name --jq '.[].name')

for repo in $repos; do
    # Skip if it's the setup repo itself
    if [ "$repo" = "00_Setup" ]; then
        echo "[00_Setup] Skipping (current repo)"
        continue
    fi

    repo_path="$BASE_DIR/$repo"

    if [ -d "$repo_path" ]; then
        echo "[$repo] Pulling latest changes..."
        git -C "$repo_path" pull --quiet
    else
        echo "[$repo] Cloning..."
        gh repo clone "$ORG/$repo" "$repo_path" -- --quiet
    fi
done

echo ""
echo "Done. All repositories synced."
