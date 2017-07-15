class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true #userID must be there
  validates :content, presence: true, length: {maximum: 140} #tweets are capped at 140 chars
  default_scope -> {order(created_at: :desc)} #newest tweets first
end
