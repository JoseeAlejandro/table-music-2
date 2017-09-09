class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :playlists
end
