FROM renovate/node

ENV YARN_VERSION=1.10.1

RUN npm i -g yarn@$NPM_VERSION

USER ubuntu
