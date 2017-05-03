class BeesController < ApplicationController
 
  def all_bees
   @bee = Bee.all
  
   render 'bee.html.erb' 
  end 
  
end
