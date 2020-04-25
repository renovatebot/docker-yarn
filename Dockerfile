FROM renovate/buildpack:1@sha256:1778d9326950d56e676e52770904b91ee966f39457604f3e822eac1be5597882

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=yarn versioning=npm
ARG YARN_VERSION=1.22.4
RUN install-tool yarn

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"

USER 1000
