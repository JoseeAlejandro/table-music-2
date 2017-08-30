class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :playlist_name, :playlist_song, :playlist_singer, :playlist_album
  has_one :user
end
