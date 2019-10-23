FROM renovate/node@sha256:ad3ff2932f0b06f7f76da01613acbfd2bfa18330d4d45383caaf2763d6ada9eb

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"