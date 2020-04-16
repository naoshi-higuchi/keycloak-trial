#!/usr/bin/bash

cd $(dirname $0)

. ./get_admin_token.sh

# protocol: "openid-connect" if you need id_token.
# directAccessGrantsEnabled: true =~ Resource Owner Password Credentials enabled.

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data "{ \"clientId\": \"${CLIENT_ID}\", \"enabled\": true, \"publicClient\": true, \"implicitFlowEnabled\": true, \"redirectUris\": [ \"http://localhost:4200/index.html\" ], \"optionalClientScopes\": [ \"hello\" ] }" \
  ${BASE_URL}/admin/realms/${REALM}/clients
