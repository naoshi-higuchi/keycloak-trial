#!/usr/bin/bash

cd $(dirname $0)

. ./get_admin_token.sh

# protocol: "openid-connect" if you need id_token.
# directAccessGrantsEnabled: true =~ Resource Owner Password Credentials enabled.

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data "{ \"name\": \"hello\", \"protocol\": \"openid-connect\" }" \
  ${BASE_URL}/admin/realms/${REALM}/client-scopes
