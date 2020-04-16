. ./get_admin_token.sh

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data "{ \"username\": \"${USERNAME}\", \"enabled\": true, \"credentials\": [ { \"type\": \"password\", \"value\": \"myappUser\", \"temporary\": false } ] }" \
  ${BASE_URL}/admin/realms/${REALM}/users