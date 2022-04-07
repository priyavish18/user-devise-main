class AddUnitPriceToOrderItem < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :unit_price, :decimal
  end
end
