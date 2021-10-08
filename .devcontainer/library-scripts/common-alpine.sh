#!/bin/ash
#
# Syntax: ./common-alpine.bash

set -e

if [ "${SWITCHED_TO_BASH}" != "true" ]; then
    apk add --no-cache bash
    export SWITCHED_TO_BASH=true
    exec /bin/bash "$0" "$@"
    exit $?
fi
