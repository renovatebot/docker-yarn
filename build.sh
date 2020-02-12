#!/bin/bash

export DATASOURCE=npm
export LOOKUP_NAME=yarn
export VERSION_SCHEME=npm
export START_VERSION=1.5.0
export IMAGE=yarn
export IGNORED_VERSIONS=1.9.0,1.12.2,2.0.0-rc.24,2.0.0-rc.27

npx renovatebot/dockerbuilder
