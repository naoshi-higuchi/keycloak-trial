#!/usr/bin/bash

cd $(dirname $0)

. ./config.sh

docker run -p ${PORT}:8080 \
    -e KEYCLOAK_USER=${ADMIN_USER} \
    -e KEYCLOAK_PASSWORD=${ADMIN_PASSWORD} \
    --name keycloak \
    jboss/keycloak
