#!/bin/bash
#
# Elyonizer Automated Release Script
# Creates a GitHub release + uploads the zip asset
#
# Usage:
#   ./scripts/create-release.sh v0.3 /path/to/elyonizer-prime-v0.3.zip ghp_your_token_here
#

set -e

VERSION="$1"
ZIP_PATH="$2"
GITHUB_TOKEN="$3"

OWNER="webaugur"
REPO="elyonizer-prime"

if [[ -z "$VERSION" || -z "$ZIP_PATH" || -z "$GITHUB_TOKEN" ]]; then
    echo "Usage: $0 <version> <zip_path> <github_token>"
    echo "Example: $0 v0.3 ./artifacts/elyonizer-prime-v0.3.zip ghp_xxxxxxxx"
    exit 1
fi

if [[ ! -f "$ZIP_PATH" ]]; then
    echo "Error: Zip file not found: $ZIP_PATH"
    exit 1
fi

echo "🚀 Creating GitHub release $VERSION for $OWNER/$REPO ..."

# Create the release
RELEASE_JSON=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github+json" \
  "https://api.github.com/repos/$OWNER/$REPO/releases" \
  -d @- <<EOF
{
  "tag_name": "$VERSION",
  "name": "Elyonizer $VERSION",
  "body": "See RELEASE_NOTES_$VERSION.md for full details.",
  "draft": false,
  "prerelease": false
}
EOF
)

RELEASE_ID=$(echo "$RELEASE_JSON" | grep -o '"id": [0-9]*' | head -1 | awk '{print $2}')

if [[ -z "$RELEASE_ID" ]]; then
    echo "❌ Failed to create release. Response:"
    echo "$RELEASE_JSON"
    exit 1
fi

echo "✅ Release created (ID: $RELEASE_ID)"

# Upload the asset
FILENAME=$(basename "$ZIP_PATH")
echo "📦 Uploading asset: $FILENAME ..."

UPLOAD_URL="https://uploads.github.com/repos/$OWNER/$REPO/releases/$RELEASE_ID/assets?name=$FILENAME"

UPLOAD_RESPONSE=$(curl -s -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Content-Type: application/zip" \
  --data-binary @"$ZIP_PATH" \
  "$UPLOAD_URL")

if echo "$UPLOAD_RESPONSE" | grep -q '"state":"uploaded"'; then
    echo "✅ Asset uploaded successfully!"
else
    echo "⚠️  Upload may have failed. Response:"
    echo "$UPLOAD_RESPONSE"
fi

echo ""
echo "🎉 Release $VERSION is live:"
echo "https://github.com/$OWNER/$REPO/releases/tag/$VERSION"