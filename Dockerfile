FROM renovate/node@sha256:57f31fefc1a2018d39e5bb0e3dd778d8d8598a12aa02eb87d6d968e0eda3aeb1

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"