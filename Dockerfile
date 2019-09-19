FROM renovate/node@sha256:b857db5bc30f3f622580c0df0824cc7d7eb170373e37b983c2096d21a7a59935

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"