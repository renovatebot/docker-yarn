FROM renovate/node@sha256:5372b658df853a87a75efe33689cb88646d8e329ae481b2b258432f4c41e6959

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"