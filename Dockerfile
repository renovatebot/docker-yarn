FROM renovate/node@sha256:887c567b604505a2a97985f3f7ed4b435e42b0dac09f3220a413038c6878e632

USER root

ARG YARN_VERSION

RUN npm i -g yarn@$YARN_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
