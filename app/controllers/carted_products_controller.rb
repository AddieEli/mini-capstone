class CartedProductsController < ApplicationController
def create
cart = CartedProduct.new(
                    user_id: current_user.id,
                    bee_id: params[:bee_id],
                    quantity: params[:quantity],
                    status: "carted"
                    )
        cart.save
        redirect_to '/checkout'
end 

def index
  @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
end 

end
