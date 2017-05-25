class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_products
  has_many :items, through: :category_bees

  def cart
    carted_products.where(status: "carted")
  end 
end
