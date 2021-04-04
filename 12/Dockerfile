FROM postgres:12

ARG NODE_VERSION

COPY ./scripts/docker/debian/install.sh /install.sh

RUN /install.sh
RUN rm -f /install.sh
