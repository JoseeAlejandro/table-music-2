class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :playlist_id, :comment_body
  has_one :user
end
