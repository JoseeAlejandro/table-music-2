API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/playlists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "playlist": {
      "user_id": "'"${User}"'",
       "playlist_name": "'"${Name}"'",
        "playlist_song": "'"${Song}"'",
        "playlist_singer": "'"${Singer}"'",
        "playlist_album": "'"${Album}"'"
      }
    }'

echo
