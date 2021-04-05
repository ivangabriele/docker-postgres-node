FROM postgres:13-alpine

LABEL repository=ivangabriele/postgres-node

ARG NODE_VERSION=14

COPY ./scripts/docker/install.alpine.sh /install.sh

RUN /install.sh
RUN rm -f /install.sh
