. ./get_admin_token.sh

export CID=$(curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  ${BASE_URL}/admin/realms/${REALM}/clients?clientId=${CLIENT_ID} | jq -r '.[0].id')

echo ${CID}