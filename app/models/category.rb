class Category < ApplicationRecord
  has_many :category_bees
  has_many :bees, through: :category_bees

  validates :name, uniqueness: true

end
