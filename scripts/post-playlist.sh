API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/playlists"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN"

  --data '{
    "playlist": {
      '"user_id": "'"${STRING}"'",
       "playlist_name": "'"${STRING}"'",
        "playlist_song": "'"${STRING}"'",
        "playlist_singer": "'"${STRING}"'",
        "playlist_album": "'"${STRING}"'"
      }
    }'

echo
