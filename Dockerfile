FROM renovate/buildpack

# renovate: datasource=npm depName=yarn
ARG YARN_VERSION=1.22.4

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-yarn" \
      org.opencontainers.image.version="${YARN_VERSION}"


RUN /usr/local/build/yarn.sh

USER 1000