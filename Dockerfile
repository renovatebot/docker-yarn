FROM renovate/node@sha256:d9626e860e8370c9d376e9dfe7d0005226dc3a4ab73170a47e30804c33de8b6e

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"