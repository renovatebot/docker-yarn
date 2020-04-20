FROM renovate/node:12@sha256:43867c7032cf40ee01ce59bac65c85f80164db58cc007b4279c013311e409e34

# renovate: datasource=npm depName=yarn versioning=npm
ARG YARN_VERSION=1.22.4

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"


#required by installer
# renovate: datasource=docker depName=renovate/node versioning=docker
ARG NODE_VERSION=12

RUN /usr/local/build/yarn.sh

USER 1000