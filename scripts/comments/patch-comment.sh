API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://protected-scrubland-89743.herokuapp.com}"
URL_PATH="/comments/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comments": {
      "users_id": "'"${USERS_ID}"'",
       "playlists_id": "'"${PLAYLISTS_ID}"'",
        "comment_body": "'"${COMMENT_BODY}"'"
      }
    }'

echo
