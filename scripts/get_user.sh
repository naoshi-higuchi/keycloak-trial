. ./get_admin_token.sh

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  ${BASE_URL}/admin/realms/${REALM}/users?username=${USERNAME}