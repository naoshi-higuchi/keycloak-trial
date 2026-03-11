#!/usr/bin/bash

cd $(dirname $0)

. ./get_admin_token.sh

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data "$(jq -n --arg realm "${REALM}" '{realm:$realm, enabled:true}')" \
  ${BASE_URL}/admin/realms
