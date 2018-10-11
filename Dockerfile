FROM renovate/node

ENV YARN_VERSION=1.10.1

RUN apt-get update && apt-get install -y git openssh-client && apt-get clean -y

RUN npm i -g yarn@$NPM_VERSION

USER ubuntu
