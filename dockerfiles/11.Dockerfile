FROM postgres:11

LABEL repository=ivangabriele/postgres-node

ARG NODE_VERSION=14

COPY ./scripts/docker/install.debian.sh /install.sh

RUN /install.sh
RUN rm -f /install.sh
