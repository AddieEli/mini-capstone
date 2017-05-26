class CartedProduct < ApplicationRecord
  belongs_to :bee
  belongs_to :order, optional: true 
  belongs_to :user

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

def subtotal
  bee.price * quantity
end 



end
