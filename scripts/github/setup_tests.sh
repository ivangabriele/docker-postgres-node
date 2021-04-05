#!/bin/bash
set -e

npm i bats

DOCKER_CONTAINERS="$(docker container ls -aq --filter name=^postgres)"

if [[ ! -z "${DOCKER_CONTAINERS}" ]]; then
  echo "🗑️ Cleaning Docker containers…"
  docker stop "${DOCKER_CONTAINERS}"
  docker rm "${DOCKER_CONTAINERS}"
fi

echo "🗑️ Cleaning Docker images…"
docker image prune -af --filter "label=repository=${DOKER_HUB_REPOSITORY}"

echo "🚢 Loading Docker image from artifact…"
docker load -i "${DOCKER_IMAGE_ARTIFACT_PATH}"

echo "🚢 Starting Docker image…"
docker run -de POSTGRES_PASSWORD=p455w0rd --name "${DOCKER_CONTAINER_NAME}" "${DOCKER_IMAGE_TAG}"
sleep 10
