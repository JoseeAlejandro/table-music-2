API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/playlists/${ID}"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN"

echo
