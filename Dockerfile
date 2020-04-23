FROM renovate/buildpack:1@sha256:c14158942b964b13280672b69d55b7c59283b37bdc8804d3dfa3ff6211f9d17f

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=yarn versioning=npm
ARG YARN_VERSION=1.22.4
RUN install-tool yarn

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"

USER 1000
