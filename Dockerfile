FROM renovate/node@sha256:887c567b604505a2a97985f3f7ed4b435e42b0dac09f3220a413038c6878e632

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION
