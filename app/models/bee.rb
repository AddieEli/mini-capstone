class Bee < ApplicationRecord
  belongs_to :supplier
  has_many :images
  
  
  has_many :category_bees
  has_many :categories, through: :category_bees

  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, presence: true
  validates :description, length: {maximum: 500 }


  
  def sale_message
    if discounted?
       "Sale!"
    else 
      "Everyday Value"
    end
  end

  def tax
    tax = 0.09 * price
    tax.round(2)
  end 

  def total
     total = price + tax
  end

  def discount_value
    15.00
  end 

  def discounted?
      price < 20
    end 

  def first_image_url
    image_collection = images
    if image_collection.length == 0
      "http://cliparts.co/cliparts/8Tz/Kxr/8TzKxrjac.png"
    else
      image_collection.first.url
    end 
  end



end
