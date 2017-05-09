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
      redirect_to "/bees/#{bee.id}"
  end 

  def edit
    @bee = Bee.find(params[:id])
  end 

  def update
    bee = Bee.find(params[:id])
      bee.assign_attributes(
                      name: params[:name],
                      price: params[:price],
                      image: params[:image],
                      description: params[:description]
        )
      bee.save
      flash[:success] = "Bee item Successfully Created"
      redirect_to "/bees/#{bee.id}"
    end 

    def destroy
      bee = Bee.find(params[:id])
      bee.destroy
      flash[:warning] = "Recipe Destroyed"
      redirect_to "/"
    end

end
