#!/bin/bash

export DATASOURCE=github
export LOOKUP_TYPE=releases
export LOOKUP_NAME=yarnpkg/yarn
export VERSION_SCHEME=semver
export START_VERSION=1.5.0
export IMAGE=yarn
export IGNORED_VERSIONS=1.9.0,1.12.2

npx renovatebot/dockerbuilder