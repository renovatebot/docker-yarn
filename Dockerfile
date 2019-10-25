FROM renovate/node@sha256:5f9461153755d482ebf16a5ebf57bda3c8ec9a9ad090aacf6381170ce1340d67

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"