class CartedProduct < ApplicationRecord
  belongs_to :bee
  belongs_to :order, optional: true 
  belongs_to :user
end
