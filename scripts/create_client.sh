. ./get_admin_token.sh

# directAccessGrantsEnabled: true =~ Resource Owner Password Credentials enabled.

curl -v --noproxy "*" \
  -H "Authorization: Bearer ${ADMIN_TOKEN}" \
  -H "Content-Type: application/json" \
  --data "{ \"clientId\": \"${CLIENT_ID}\", \"enabled\": true, \"directAccessGrantsEnabled\": true, \"publicClient\": true }" \
  ${BASE_URL}/admin/realms/${REALM}/clients