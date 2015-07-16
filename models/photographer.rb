class Photographer < ActiveRecord::Base
  has_many :photos
  has_many :albums
  
end

# # Basically useless–WRONG!
# @product = Product.new({title: "Cheeese", cost: 5})
# @product.save # Saves it to the database.