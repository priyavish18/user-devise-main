class OrderItemsController < ApplicationController
         before_action :authenticate_user!

   def index
    @orders = Order.all
   end
   def new
    binding.pry
       order = Order.new
   end
    def create
        # menu = current_user.new(params[:menu_id])
        user = current_user
        @order = current_order
        binding.pry
        @order_item = current_user.order.order_items.new(order_params)
        @order.save
        # session[:order_id] = @order.id

    end
    
private
    def order_params
        params.require(:order_item).permit(:menu_id, :quantity)
    end
end
