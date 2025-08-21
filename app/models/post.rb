class Post < ApplicationRecord
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: proc { |attributes|
    attributes['name'].blank? || Category.exists?(name: attributes['name'])
  }

  def display_categories
    categories.pluck(:name).join(' ')
  end

  def unique_commenting_users
    users.uniq
  end
end
