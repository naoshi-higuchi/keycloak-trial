#!/usr/bin/bash

. ./config.sh

docker run -p ${PORT}:8080 \
    -e KEYCLOAK_ADMIN=${ADMIN_USER} \
    -e KEYCLOAK_ADMIN_PASSWORD=${ADMIN_PASSWORD} \
    --name keycloak \
    ${KEYCLOAK_IMAGE} start-dev
