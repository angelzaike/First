class Product < ApplicationRecord
	has_many :comments
	has_many :orders
    has_many :users, through: :orders

		 def self.search(search_term)
  Product.where("name LIKE ?", "%#{search_term}%")
end

def highest_rating_comment
  comments.rating_desc.first
end

def average_rating
  comments.average(:rating).to_f
end

 validates :name, presence: true
end



