class User < ApplicationRecord
  has_many :comments
  has_many :posts, through: :comments

  validates :username, uniqueness: true
end
