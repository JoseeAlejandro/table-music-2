API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments/${PlAYLISTS_ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comments": {
      "users_id": "'"${USERS_ID}"'",
        "comment_body": "'"${COMMENT_BODY}"'"
      }
    }'

echo
