FROM renovate/node@sha256:3d8f93d676a7492bfa33d72d8eb44fe0743d2c31c2edb96b06297fc64cff6d07

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"