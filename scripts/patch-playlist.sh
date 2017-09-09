API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://protected-scrubland-89743.herokuapp.com}"
URL_PATH="/playlists/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "playlist": {
      "user_id": "'"${USER_ID}"'",
       "playlist_name": "'"${PLAYLIST_NAME}"'",
        "playlist_song": "'"${PLAYLIST_SONG}"'",
        "playlist_singer": "'"${PLAYLIST_SINGER}"'",
        "playlist_album": "'"${PLAYLIST_ALBUM}"'"
      }
    }'

echo
