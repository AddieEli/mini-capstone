class Order < ApplicationRecord
  belongs_to :bee, optional: true
  belongs_to :user
  has_many :carted_products
  has_many :bees, through: :carted_products


    #   self.subtotal = bee.price * quantity
    # end 

    # def calculate_tax
    #   self.tax = subtotal * 0.09
    # end 

    # def calculate_total
    #  self.total = subtotal + tax
    # end 
 
end
