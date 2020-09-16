#!/usr/bin/env bash

binary=$(echo $npm_execpath)

if [[ $binary == *"npm"* ]]; then
  echo "npm It's there!"
  rm bin/helm && echo 'creating a hard link for helm' && ln node_modules/helm-binary-linux/bin/helm bin/helm || ln node_modules/helm-binary-darwin/bin/helm bin/helm
fi

if [[ $binary == *"yarn"* ]]; then
  echo "yarn It's there!"
  rm bin/helm && echo 'creating a hard link for helm' && ln ../helm-binary-linux/bin/helm bin/helm || ln ../helm-binary-darwin/bin/helm bin/helm
fi