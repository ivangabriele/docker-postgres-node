#!/bin/bash

image_repo="postgres-node"

echo "🗑️ Pruning containers…"
# docker container prune -f --filter "name=^postgres-node"
docker stop "$(docker container ls -aq --filter name=^postgres)"
docker rm "$(docker container ls -aq --filter name=^postgres)"
echo "🗑️ Pruning images…"
docker image prune -af --filter "label=repository=${image_repo}"

build_and_get_version() {
  local postgres_version=$1
  local variant=$2
  local node_version=$3

  local image_version="${postgres_version}${variant:+-$variant}${node_version:+-node$node_version}"
  local image_tag="${image_repo}:${image_version}"
  local container_name="postgres-node_${image_version}"

  docker build -f "./dockerfiles/${image_version}.Dockerfile" --no-cache -t "${image_tag}" .
  docker run -de POSTGRES_PASSWORD=p455w0rd --name "${container_name}" "${image_tag}"
  sleep 10
  docker exec "${container_name}" command -v ls
  docker exec "${container_name}" command -v psql
  docker exec "${container_name}" command -v postgres
  # docker exec "${container_name}" echo "$(psql -V)"
  # docker run --name  "${docker_container}" echo "$(psql -V)"
  # docker run "postgres-node:${tag}" echo "$(node --version)"
  docker stop "${container_name}"
}

build_and_get_version 13
