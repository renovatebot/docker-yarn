FROM renovate/buildpack:1@sha256:0fa21d11578682fb27ab2abdf885854ae4ce4fe05a411622c371adccef0cd755

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=yarn versioning=npm
ARG YARN_VERSION=1.22.4
RUN install-tool yarn

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"

USER 1000
