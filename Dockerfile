FROM renovate/node@sha256:4d07f7b5ba49a1905dc5f822fad5c77b4eef675f4328110aa9f1cf8f91d32f1e

# renovate: datasource=npm depName=yarn
ARG YARN_VERSION=1.22.4

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"