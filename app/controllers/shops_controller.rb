class ShopsController < ApplicationController

  def index
     @menus = Menu.all
     @order_item = current_order.order_items.new
       

  end

  def show
  	 @menu = Menu.find(params[:id])
  end
end



