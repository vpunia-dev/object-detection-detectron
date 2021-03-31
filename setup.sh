#!/bin/bash

export DOCKER_USER="detection"
export PYTHON_VENV_NAME="detection"
export HOST_PORT="8888"
export DOCKER_PORT="8888"
export PJ_HOST_DIR="/project/path/on/local/system"
export PJ_DOCKER_DIR="/projects/path/on/docker"
for filename in ./tmpl/*; do
    out="$(basename $filename)"
    envsubst '$DOCKER_USER,$PYTHON_VENV_NAME,$HOST_PORT,$DOCKER_PORT,$PJ_HOST_DIR,$PJ_DOCKER_DIR'< $filename > $out
done