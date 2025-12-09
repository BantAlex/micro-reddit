class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 16 }, uniqueness: true
  validates :email, presence: true

  has_many :posts
  has_many :comments
end
