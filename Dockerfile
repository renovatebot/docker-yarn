FROM renovate/node@sha256:8030bbd3088b72e7a3388ada3815e37f4d29deb5b21a22dae18e252e30e1c2bf

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"