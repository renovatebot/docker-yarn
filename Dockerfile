FROM renovate/node@sha256:b675b096edd733b2045d3ef4ba0adbf3cce65f814d68b0eb42a06b4d5be7e050

USER root

ENV YARN_VERSION=1.10.1

RUN npm i -g yarn@$YARN_VERSION

USER ubuntu
