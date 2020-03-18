FROM renovate/node@sha256:c4a626ba2ce0a764ed5479950cf65b98201a03958304132cf34455578e8662b1

# renovate: datasource=npm depName=yarn
ARG YARN_VERSION=1.22.4

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"