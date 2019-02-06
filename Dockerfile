FROM renovate/node@sha256:6ee2d03fe30c15095a6b1c7841c7c1df48495207d8adc9d63d16462320130b2b

ENV YARN_VERSION=1.10.1

RUN npm i -g yarn@$YARN_VERSION

USER ubuntu
