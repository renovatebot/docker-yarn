FROM renovate/node:12@sha256:15f9ea4d553c535d050599f6ca7366dda938c742fe20c8f529fd94b6fa02af86

# renovate: datasource=npm depName=yarn versioning=npm
ARG YARN_VERSION=1.22.4

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"


#required by installer
ARG NODE_VERSION=12

RUN /usr/local/build/yarn.sh

USER 1000