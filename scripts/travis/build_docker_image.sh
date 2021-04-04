#!/bin/bash
set -e

IMAGE_VERSION="${DOCKERFILE_NAME}${NODE_VERSION:+-node${NODE_VERSION}}"
IMAGE_TAG="ivangabriele/postgres-node:${IMAGE_VERSION}"
ARTIFACT_PATH="./build/${IMAGE_VERSION}.tar"

echo "🚢 Building Docker image…"
if [[ -z "${NODE_VERSION}" ]]; then
  docker build -f "./dockerfiles/${DOCKER_DOCKERFILE_NAME}.Dockerfile" -t "${DOCKER_IMAGE_TAG}" .
else
  docker build --build-arg NODE_VERSION="${NODE_VERSION}" -f "./dockerfiles/${DOCKER_DOCKERFILE_NAME}.Dockerfile" -t "${DOCKER_IMAGE_TAG}" .
fi

echo "🚢 Generating Docker artifact…"
docker save -o "${DOCKER_IMAGE_ARTIFACT_PATH}" "${DOCKER_IMAGE_TAG}"
ls -sh "${DOCKER_IMAGE_ARTIFACT_PATH}"
