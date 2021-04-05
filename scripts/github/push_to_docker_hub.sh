#!/bin/bash
set -e

echo "🗄️ Moving all downloaded artifacts to ./build directory…"
find ./build -iname '*.tar' -exec mv '{}' ./build/ \;

for artifact_path in "./build"/*.tar; do
  echo "🚢 Loading Docker image from artifact: ${artifact_path}…"
  docker load -i "${artifact_path}"

  docker_image_version=$(echo "${artifact_path}" | sed "s/^\.\/build\///" | sed "s/\.tar$//")
  docker_image_tag="${DOCKER_HUB_REPOSITORY}:${docker_image_version}"

  echo "🚀 Pushing image to Docker Hub: ${docker_image_tag}…"
  docker push "${docker_image_tag}"
done

# Building latest-nodeXX (XX being the latest Node.js version)
docker_image_tag="${DOCKER_HUB_REPOSITORY}:${POSTGRES_VERSION_LATEST}-node${NODE_VERSION_LATEST}"
docker_image_tag_generic="${DOCKER_HUB_REPOSITORY}:latest-node${NODE_VERSION_LATEST}"
echo "🚢 Create Docker image: ${docker_image_tag_generic}…"
docker tag ${docker_image_tag} ${docker_image_tag_generic}

echo "🚀 Pushing image to Docker Hub: ${docker_image_tag_generic}…"
docker push "${docker_image_tag_generic}"
