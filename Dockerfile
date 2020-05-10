FROM renovate/buildpack:2-node@sha256:5972cd297dca735bbb52a34c1115834efd2cd2e8da7e03fd1e560dad5b994624

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=yarn versioning=npm
ARG YARN_VERSION=1.22.4
RUN install-tool yarn

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"

USER 1000
