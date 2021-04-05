FROM postgres:12

LABEL repository=ivangabriele/postgres-node

ARG NODE_VERSION

COPY ./scripts/docker/install.sh /install.sh

RUN /install.sh
RUN rm -f /install.sh
