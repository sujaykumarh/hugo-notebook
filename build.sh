#!/bin/sh

# Build Hugo Project

echo "🔨 Building Hugo Site"

## Hugo Options used for building the site
# -d                        dist directory
# -gc                       run some cleanup tasks (remove unused cache files) after the build
# --minify                  minify the output
# --cleanDestinationDir     remove files from destination not found in static directories
# -v                        verbose mode

CURRENT_UID="$(id -u):$(id -g)" docker compose run --rm hugoExample build --themesDir ../.. --gc -v --cleanDestinationDir -d ../dist $@
echo "✅ build complete"
