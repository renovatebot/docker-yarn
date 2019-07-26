FROM renovate/node@sha256:9ccfc811bf373ed87d40eefa9d7bcaa919966eea87b77ee5d18e7b2bb30c765d

ARG YARN_VERSION

RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version $YARN_VERSION

ENV PATH="/home/ubuntu/.yarn/bin:/home/ubuntu/.config/yarn/global/node_modules/.bin:$PATH"