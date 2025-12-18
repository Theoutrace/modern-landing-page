#!/bin/bash

# Invite ashishNarba as collaborator to modern-landing-page repository

echo "Inviting ashishNarba (ashish@narbagroup.com) as collaborator..."

gh api \
  --method PUT \
  -H "Accept: application/vnd.github+json" \
  "/repos/Theoutrace/modern-landing-page/collaborators/ashishNarba" \
  -f permission="push"

if [ $? -eq 0 ]; then
    echo "✅ Successfully invited ashishNarba to the repository!"
    echo "They will receive an email notification to accept the invitation."
else
    echo "❌ Failed to invite collaborator."
    echo ""
    echo "To fix this, run:"
    echo "  gh auth login"
    echo ""
    echo "Then run this script again, or run the command directly:"
    echo "  gh api --method PUT /repos/Theoutrace/modern-landing-page/collaborators/ashishNarba -f permission=push"
fi

