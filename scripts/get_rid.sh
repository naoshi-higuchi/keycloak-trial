. ./get_admin_token.sh
. ./get_cid.sh

export RID=$(curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  ${BASE_URL}/admin/realms/${REALM}/clients/${CID}/roles/HELLO | jq -r '.id')

echo ${RID}