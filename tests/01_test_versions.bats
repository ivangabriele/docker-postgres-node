#!/usr/bin/env bats
# https://bats-core.readthedocs.io/en/latest/index.html
# https://github.com/tkuchiki/bats-travis-ci/blob/master/test.bats

DOCKER_CONTAINER_NAME="postgres-node_${DOCKER_IMAGE_VERSION}"

build_and_get_version() {
  docker load -i "${DOCKER_IMAGE_ARTIFACT_PATH}"
  docker run -de POSTGRES_PASSWORD=p455w0rd --name "${DOCKER_CONTAINER_NAME}" "${DOCKER_IMAGE_TAG}"
  sleep 10
  docker exec "${DOCKER_CONTAINER_NAME}" command -v ls
  docker exec "${DOCKER_CONTAINER_NAME}" command -v psql
  docker exec "${DOCKER_CONTAINER_NAME}" command -v postgres
  # docker exec "${DOCKER_CONTAINER_NAME}" echo "$(psql -V)"
  # docker run --name  "${docker_container}" echo "$(psql -V)"
  # docker run "postgres-node:${tag}" echo "$(node --version)"
  # docker stop "${DOCKER_CONTAINER_NAME}"
}

@test "${DOCKER_IMAGE_TAG} image PostgreSQL and Node.js versions" {
  run build_and_get_version

  [ "${output}" -eq "abc" ]
}
