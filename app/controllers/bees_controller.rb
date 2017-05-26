class BeesController < ApplicationController

before_action :authenticate_admin!, except: [:index, :show, :random]

  def index
    @bees = Bee.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

      if search_term
        @bees = Bee.where("name iLIKE ? OR description iLIKE ?", "%#{search_term}%", "%#{search_term}%")
      end

      if category
        @bees = Category.find_by(name: category).bees
      end 

      if discount
        @bees = @bees.where("price < ?", discount)
      end

      if sort_attribute && sort_order
        @bees = @bees.order(sort_attribute => sort_order)
      elsif sort_attribute
         @bees = @bees.order(sort_attribute)
      end

  end 

  
  def show
      @bee = Bee.find(params[:id])
  end 

  def new
    @bee = Bee.new
  end
  
  def create
     
      @bee = Bee.new(
                    name: params[:name],
                    price: params[:price],
                    description: params[:description],
                    supplier_id: params[:supplier]
                    )
      if bee.save
      flash[:success] = "Bee Item Created"
      redirect_to "/bees/#{ bee.id}"
    else
      render 'new.html.erb'
    end
  end 

  def edit

    @bee = Bee.find(params[:id])
  end 

  def update
      
    bee = Bee.find(params[:id])
      bee.assign_attributes(
                      name: params[:name],
                      price: params[:price],
                      description: params[:description],
                      supplier_id: params[:supplier]
                     
        )
     if bee.save
      flash[:success] = "Bee item Successfully Updated"
      redirect_to "/bees/#{bee.id}"
    else
      render 'edit.html.erb'
  end 

  def destroy
    bee = Bee.find(params[:id])
    bee.destroy
    flash[:warning] = "Item Destroyed"
    redirect_to "/"
  end

  def random
    bee = Bee.all.sample
    redirect_to "/bees/#{bee.id}"
  end

end
