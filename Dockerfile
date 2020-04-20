FROM renovate/buildpack:1@sha256:7e28ef186596dc293af15d6c63febf1e424c3e832702864944b498b3050cac52

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=yarn versioning=npm
ARG YARN_VERSION=1.22.4

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"

RUN install-tool yarn

USER 1000