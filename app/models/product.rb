class Product < ApplicationRecord
  has_many :orders

  # search for a word similar to user input
  # check if production or development env.
  def self.search(search_term)
    if Rails.env == 'production'
      Product.where("name ilike ?", "%#{search_term}%")
    else
      Product.where("name LIKE ?", "%#{search_term}%")
    end
  end
end
