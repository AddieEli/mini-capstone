class CartedProductsController < ApplicationController
  before_action :authenticate_user!

def index

  if current_user && current_user.cart.any?
    @carted_products = current_user.cart
  else
    flash[warning] = "cart empty"
    redirect_to '/'
  end 
end 

def create
carted_product = CartedProduct.new(
                    user_id: current_user.id,
                    bee_id: params[:bee_id],
                    quantity: params[:quantity],
                    status: "carted"
                    )
        carted_product.save
        flash[:success] = "Item added to Cart"
        redirect_to "/carted_products"
end 

def destroy
  carted_product = CartedProduct.find(params[:id])
  carted_product.update(status: "removed")
  flash[:success] = "Item removed from cart"
  redirect_to "/carted_products"
end


end
