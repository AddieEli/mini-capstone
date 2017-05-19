class OrdersController < ApplicationController

  def create
    order = Order.new(
                      bee_id: params[:bee_id],
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      subtotal: params[:subtotal],
                      tax: params[:tax],
                      total: params[:total]
                      )
      if order.save
       
        redirect_to "/orders/#{order.id}"
      end 

    def show
      order_id = params[:id]
      @order = Order.find_by(id: order_id)
      order_quantity = params[:quantity]
      
    end
      
  end
end
