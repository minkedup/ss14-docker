#!/usr/bin/env bash
#=====================================
# Fetch SS14 Server Build Artifact.
#
# - Outputs download status to stderr.
# - Outputs download item to $2.
#=====================================

if [ -z "$1" ] || [ -z "$2" ]; then
    exit 1
fi

BUILD_VERSION="$1"
BUILD_ARTIFACT="$2"

DOWNLOAD_URL="https://wizards.cdn.spacestation14.com/fork/wizards/version/${BUILD_VERSION}/file/${BUILD_ARTIFACT}"

curl \
    "$DOWNLOAD_URL" \
    -o "$BUILD_ARTIFACT" \
    1>&2

printf '%s\n' "$BUILD_ARTIFACT"
