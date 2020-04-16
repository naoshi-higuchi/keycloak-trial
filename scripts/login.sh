. ./config.sh

export JWT=$(curl -v --noproxy "*" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "client_id=${CLIENT_ID}" \
  --data-urlencode 'grant_type=password' \
  --data-urlencode 'scope=openid' \
  --data-urlencode "username=${USERNAME}" \
  --data-urlencode "password=${PASSWORD}" \
  ${BASE_URL}/realms/${REALM}/protocol/openid-connect/token | jq -r '.access_token')

echo ${JWT}