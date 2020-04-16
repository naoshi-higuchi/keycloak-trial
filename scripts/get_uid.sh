. ./get_admin_token.sh

export UID=$(curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  ${BASE_URL}/admin/realms/${REALM}/users?username=${USERNAME} | jq -r '.[0].id')

echo ${UID}