#!/bin/bash

ORG="azev-alurad"
BASE_DIR="${1:-/home/reyemb/dev/azev-alurad}"

# Repos to skip (created by accident, will be removed later)
IGNORE_REPOS=(
)

is_ignored() {
    local name="$1"
    for ignore in "${IGNORE_REPOS[@]}"; do
        [ "$name" = "$ignore" ] && return 0
    done
    return 1
}

echo "Syncing repositories from $ORG to $BASE_DIR"
echo "============================================="

repos=$(gh repo list "$ORG" --limit 100 --json name --jq '.[].name')

for repo in $repos; do
    if is_ignored "$repo"; then
        echo "[skip/$repo] Ignored (accidental repo)"
        continue
    fi

    # Determine domain folder based on prefix
    case "$repo" in
        00_Setup)        domain="" ;;
        azev-*)          domain="azev" ;;
        *)               domain="other" ;;
    esac

    if [ -z "$domain" ]; then
        repo_path="$BASE_DIR/$repo"
    else
        domain_path="$BASE_DIR/$domain"
        mkdir -p "$domain_path"
        repo_path="$domain_path/$repo"
    fi

    if [ -d "$repo_path" ]; then
        echo "[${domain:-root}/$repo] Pulling latest changes..."
        git -C "$repo_path" pull --quiet
    else
        echo "[${domain:-root}/$repo] Cloning..."
        gh repo clone "$ORG/$repo" "$repo_path" -- --quiet
    fi
done

echo ""
echo "Done. All repositories synced."
