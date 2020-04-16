. ./get_admin_token.sh
. ./get_uid.sh

curl -X DELETE -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  ${BASE_URL}/admin/realms/${REALM}/users/${UID}