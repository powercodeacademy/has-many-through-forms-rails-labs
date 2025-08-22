class Post < ApplicationRecord
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |category_attribute|
      name = category_attribute[:name].to_s.strip
      next if name.blank?

      category = Category.find_or_create_by(name: name)
      categories << category unless categories.include?(category)
    end
  end
end
