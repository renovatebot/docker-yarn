FROM renovate/node@sha256:6c659dfa8d63e02e7f806845d47269cba912ba983562db6e2fcb53b22abb3756

USER root

ARG YARN_VERSION

RUN npm i -g yarn@$YARN_VERSION

USER ubuntu
