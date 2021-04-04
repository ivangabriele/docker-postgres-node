FROM postgres:latest

LABEL repository=ivangabriele/postgres-node

ARG NODE_VERSION=14

COPY ./scripts/docker/install.debian.sh /install.sh

RUN /install.sh
RUN echo "🗑️ Deleting script file…"
RUN rm -f /install.sh
