FROM renovate/node@sha256:3aadc68f833c040c743495776bf4e36cb7b93dbdf7451ae4c4d2af8273ed5d4d

ENV YARN_VERSION=1.10.1

RUN npm i -g yarn@$NPM_VERSION

USER ubuntu
