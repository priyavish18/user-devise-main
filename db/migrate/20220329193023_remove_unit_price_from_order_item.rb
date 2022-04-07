class RemoveUnitPriceFromOrderItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :order_items, :unit_price, :decimal
  end
end
