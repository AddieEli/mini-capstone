class Bee < ApplicationRecord
  
  def sale_message
    sale_message = ""
    if price < 20 
        sale_message ="Sale!"
    else sale_message = "Everyday Value"
    end
  end

  def tax
    tax = 0.09 * price
    tax.round(2)
  end 

  def total
     total = price + tax
  end


end
