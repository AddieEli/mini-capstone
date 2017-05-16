class Bee < ApplicationRecord
  belongs_to :supplier
  
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


end
