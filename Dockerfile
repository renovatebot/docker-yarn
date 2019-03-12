FROM renovate/node@sha256:05c3dbc4d6dfd066e5d16716e96f69361946804968899fcee41321bac57760f0

USER root

ARG YARN_VERSION

RUN npm i -g yarn@$YARN_VERSION

USER ubuntu
