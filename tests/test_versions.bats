#!/usr/bin/env bats
# https://bats-core.readthedocs.io/en/latest/index.html
# https://github.com/tkuchiki/bats-travis-ci/blob/master/test.bats

@test "${DOCKER_IMAGE_TAG} image PostgreSQL version" {
  run docker exec "${DOCKER_CONTAINER_NAME}" postgres --version

  [[ "${output}" == "postgres (PostgreSQL) ${POSTGRES_VERSION}."* ]]
}

@test "${DOCKER_IMAGE_TAG} image Node.js version" {
  node_version="${NODE_VERSION}"
  if [[ -z "${NODE_VERSION}" ]]; then
    local node_version="${NODE_VERSION_LTS}"
  fi

  run docker exec "${DOCKER_CONTAINER_NAME}" node --version

  [[ "${output}" == "v${node_version}."* ]]
}
