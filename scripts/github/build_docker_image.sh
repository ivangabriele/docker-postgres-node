#!/bin/bash
set -e

echo "🚢 Building Docker image…"
if [[ -z "${NODE_VERSION}" ]]; then
  node_version="${NODE_VERSION_LTS}"
else
  node_version="${NODE_VERSION}"
fi
docker build \
  --build-arg NODE_VERSION="${node_version}" \
  -f "./dockerfiles/${DOCKER_DOCKERFILE_NAME}.Dockerfile" \
  -t "${DOCKER_IMAGE_TAG}" \
  .

echo "🚢 Generating Docker artifact…"
docker save -o "${DOCKER_IMAGE_ARTIFACT_PATH}" "${DOCKER_IMAGE_TAG}"
ls -sh "${DOCKER_IMAGE_ARTIFACT_PATH}"
