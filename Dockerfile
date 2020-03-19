FROM renovate/node@sha256:665f3ca0226c707eab7c5f2ab074bb61e767547e7bb859733dde4f72251a87b3

# renovate: datasource=npm depName=yarn
ARG YARN_VERSION=1.22.4

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"