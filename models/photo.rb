
class Photo < ActiveRecord::Base
  has_and_belongs_to_many :albums
  belongs_to :photographers
end

# # Basically useless–WRONG!
# @product = Product.new({title: "Cheeese", cost: 5})
# @product.save # Saves it to the database.