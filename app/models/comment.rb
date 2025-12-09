class Comment < ApplicationRecord
  validates :content, presence: true # Prevent blanks
  validates :user_id, presence: true # Prevent user-orpahn
  validates :post_id, presence: true # Prevent post-orpahn

  belongs_to :user
  belongs_to :post
end
