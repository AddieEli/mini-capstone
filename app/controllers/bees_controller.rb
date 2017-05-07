class BeesController < ApplicationController
 
  def all_bees
   @bee = Bee.all
  
   render 'bee.html.erb' 
  end 

  def index
    @bees = Bee.all
  end 
  
  def show
    bee_id = params[:id]
    @bee = Bee.find_by(id: bee_id)
  end 

  def new
  end
  
  def create
      bee = Bee.new(
                    name: params[:name],
                    price: params[:price],
                    description: params[:description]
                    )
      bee.save
  end 
end
