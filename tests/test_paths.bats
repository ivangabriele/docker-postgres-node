#!/usr/bin/env bats
# https://bats-core.readthedocs.io/en/latest/index.html
# https://github.com/tkuchiki/bats-travis-ci/blob/master/test.bats

@test "${DOCKER_IMAGE_TAG} image postgresql path" {
  run docker exec "${DOCKER_CONTAINER_NAME}" which postgres

  [[ "${output}" == "/usr/lib/postgresql/${POSTGRES_VERSION}/bin/postgres" ]]
}

@test "${DOCKER_IMAGE_TAG} image psql path" {
  run docker exec "${DOCKER_CONTAINER_NAME}" which psql

  [[ "${output}" == "/usr/bin/psql" ]]
}

@test "${DOCKER_IMAGE_TAG} image node path" {
  run docker exec "${DOCKER_CONTAINER_NAME}" which node

  [[ "${output}" == "/usr/bin/node" ]]
}

@test "${DOCKER_IMAGE_TAG} image yarn path" {
  run docker exec "${DOCKER_CONTAINER_NAME}" which yarn

  [[ "${output}" == "/usr/bin/yarn" ]]
}
