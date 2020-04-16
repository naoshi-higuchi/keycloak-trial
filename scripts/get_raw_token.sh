. ./config.sh

curl -v --noproxy "*" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "client_id=${CLIENT_ID}" \
  --data-urlencode 'grant_type=password' \
  --data-urlencode 'scope=openid' \
  --data-urlencode 'response_type=code id_token' \
  --data-urlencode "username=${USERNAME}" \
  --data-urlencode "password=${PASSWORD}" \
  -o ./raw_token \
  ${BASE_URL}/realms/${REALM}/protocol/openid-connect/token