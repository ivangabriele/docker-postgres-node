#!/bin/bash
set -e

for artifact_path in "./build"/*; do
  echo "🚢 Loading Docker image from artifact: ${artifact_path}…"
  docker load -i "${artifact_path}"

  docker_image_version=$(echo "${artifact_path}" | sed "s/^\.\/build\///" | sed "s/\.tar$//")
  docker_image_tag="${DOCKER_HUB_REPOSITORY}:${docker_image_version}"

  echo "🚢 Pushing image to Docker Hub: ${docker_image_tag}…"
  docker push "${docker_image_tag}"
done
