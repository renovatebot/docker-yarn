FROM renovate/node@sha256:391a6a96e1bb71c89c176465694e38ec2e8f9b5a9601c02560f5c63be94378c8

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"