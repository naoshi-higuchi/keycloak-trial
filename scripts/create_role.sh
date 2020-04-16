. ./get_admin_token.sh
. ./get_cid.sh

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data '{ "name": "HELLO" }' \
  ${BASE_URL}/admin/realms/${REALM}/clients/${CID}/roles