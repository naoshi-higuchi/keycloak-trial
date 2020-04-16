. ./get_admin_token.sh
. ./get_uid.sh
. ./get_cid.sh
. ./get_rid.sh

# 'name is required. (But it looks redundant for me.)

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data "[ { \"id\": \"${RID}\", \"name\": \"HELLO\" } ]" \
  ${BASE_URL}/admin/realms/${REALM}/users/${UID}/role-mappings/clients/${CID}