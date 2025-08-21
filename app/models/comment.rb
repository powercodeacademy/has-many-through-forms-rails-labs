class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

  def user_attributes=(attributes)
    return unless attributes['username'].present?

    self.user = User.find_or_initialize_by(username: attributes['username'])
    user.assign_attributes(attributes)
  end
end
