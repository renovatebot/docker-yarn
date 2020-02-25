FROM renovate/node@sha256:46537523171880d4d5c673f301ef6b433f5029f314ba99e16335fe451eee923d

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"