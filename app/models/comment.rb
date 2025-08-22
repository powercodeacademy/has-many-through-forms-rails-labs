class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def user_attributes=(attributes)
    username = attributes[:username]
    self.user = User.find_or_create_by(username: username) if username.present?
  end

end
