#!/bin/bash
#
# Elyonizer GitHub Release Automation Script
# Usage:
#   ./scripts/create-release.sh v0.2
#
# Requirements:
#   - GITHUB_TOKEN environment variable with 'repo' scope
#   - zip file at releases/elyonizer-prime-<version>.zip

set -e

VERSION=$1
REPO="webaugur/elyonizer-prime"
OWNER="webaugur"
REPO_NAME="elyonizer-prime"

if [ -z "$VERSION" ]; then
    echo "Usage: $0 <version> (e.g. v0.2)"
    exit 1
fi

if [ -z "$GITHUB_TOKEN" ]; then
    echo "Error: GITHUB_TOKEN environment variable is not set."
    echo "Create a token at https://github.com/settings/tokens with 'repo' scope."
    exit 1
fi

ZIP_FILE="releases/elyonizer-prime-${VERSION}.zip"

if [ ! -f "$ZIP_FILE" ]; then
    echo "Error: Zip file not found at $ZIP_FILE"
    exit 1
fi

echo "Creating release $VERSION for $REPO..."

# Create the release
RELEASE_RESPONSE=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github+json" \
  https://api.github.com/repos/$REPO/releases \
  -d @- <<EOF
{
  "tag_name": "$VERSION",
  "name": "Elyonizer $VERSION",
  "body": "Automated release for Elyonizer $VERSION",
  "draft": false,
  "prerelease": false
}
EOF
)

RELEASE_ID=$(echo "$RELEASE_RESPONSE" | grep -o '"id": [0-9]*' | head -1 | cut -d' ' -f2)

if [ -z "$RELEASE_ID" ]; then
    echo "Failed to create release. Response:"
    echo "$RELEASE_RESPONSE"
    exit 1
fi

echo "Release created with ID: $RELEASE_ID"

# Upload the asset
echo "Uploading $ZIP_FILE..."

curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Content-Type: application/zip" \
  -H "Accept: application/vnd.github+json" \
  --data-binary @"$ZIP_FILE" \
  "https://uploads.github.com/repos/$REPO/releases/$RELEASE_ID/assets?name=$(basename $ZIP_FILE)"

echo ""
echo "✅ Release $VERSION created and zip uploaded successfully!"
echo "https://github.com/$REPO/releases/tag/$VERSION"