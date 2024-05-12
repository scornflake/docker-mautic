#!/bin/bash

# Note: This is intended for production builds.
# For dev builds; do not specify SETTINGS_NAME
set -e
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "${CWD}"

echo "Tagging and pushing to registry..."

docker tag registry.shinywhitebox.com/swbwebsite2:latest  registry.shinywhitebox.com/swbwebsite2:stable
docker tag registry.shinywhitebox.com/swbwebsite2store:latest  registry.shinywhitebox.com/swbwebsite2store:stable
docker push registry.shinywhitebox.com/swbwebsite2:stable
docker push registry.shinywhitebox.com/swbwebsite2store:stable
