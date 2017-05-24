class OrdersController < ApplicationController

  def create
    @bee = Bee.find(params[:bee_id])
    order = Order.new(
                      quantity: params[:quantity],
                      bee_id: params[:bee_id],
                      user_id: current_user.id
                      )
                      
                      order.calculate_subtotal
                      order.calculate_tax
                      order.calculate_total
                    
        order.save
        redirect_to "/orders/#{order.id}"
  end

  def show
      @order = Order.find(params[:id])
      @bee = Bee.find(@order.bee_id)
  end
      
  
end
