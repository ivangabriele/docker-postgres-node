#!/bin/bash
set -e

IMAGE="ivangabriele/postgres-node:${VERSION}${VARIANT:+-${VARIANT}}"

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USER}" --password-stdin
docker push "${IMAGE}"
