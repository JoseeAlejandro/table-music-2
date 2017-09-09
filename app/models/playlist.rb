class Playlist < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :text, :user, presence: true
end
