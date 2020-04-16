. ./get_admin_token.sh

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data "{ \"realm\": \"${REALM}\", \"enabled\": true }" \
  ${BASE_URL}/admin/realms