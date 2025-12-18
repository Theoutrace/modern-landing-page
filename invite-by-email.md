# Invite Collaborator by Email

Since GitHub's API requires a username (not email), here are your options:

## Option 1: Use GitHub Web Interface (Recommended - Supports Email)

1. Go to: https://github.com/Theoutrace/modern-landing-page/settings/access
2. Click **"Add people"** button
3. In the search field, type: `ashish@narbagroup.com`
4. If the email is associated with a GitHub account, their profile will appear
5. Select the user and choose permission level (Read/Write/Admin)
6. Click **"Add [username] to this repository"**

## Option 2: Automated Script (Requires Username)

If you get their GitHub username, you can use the script I created:
```bash
./invite-collaborator.sh <github-username> push
```

## Note

GitHub's REST API endpoint `/repos/{owner}/{repo}/collaborators/{username}` requires a username, not an email. The web interface can search by email, but the API cannot for privacy reasons.

