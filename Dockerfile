FROM renovate/node@sha256:d02a9af1d6dbe9ac8685d169feecf5d22bffac7a720ed3e935ea0bc3e5a92266

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"