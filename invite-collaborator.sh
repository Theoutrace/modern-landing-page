#!/bin/bash

# Script to invite a collaborator to the modern-landing-page repository
# Usage: ./invite-collaborator.sh <github-username> [permission]
# Permissions: pull (read), push (write), admin (admin)
# Default permission: push

REPO_OWNER="Theoutrace"
REPO_NAME="modern-landing-page"
USERNAME=$1
PERMISSION=${2:-push}

if [ -z "$USERNAME" ]; then
    echo "Usage: $0 <github-username> [permission]"
    echo "Example: $0 ashish push"
    echo "Permissions: pull, push, admin (default: push)"
    exit 1
fi

echo "Inviting $USERNAME to $REPO_OWNER/$REPO_NAME with $PERMISSION permission..."

# Using GitHub CLI
gh api \
  --method PUT \
  -H "Accept: application/vnd.github+json" \
  "/repos/$REPO_OWNER/$REPO_NAME/collaborators/$USERNAME" \
  -f permission="$PERMISSION"

if [ $? -eq 0 ]; then
    echo "✅ Successfully invited $USERNAME to the repository!"
    echo "They will receive an email notification to accept the invitation."
else
    echo "❌ Failed to invite collaborator. Make sure:"
    echo "   1. You're authenticated: run 'gh auth login'"
    echo "   2. The username is correct"
    echo "   3. You have admin access to the repository"
fi

