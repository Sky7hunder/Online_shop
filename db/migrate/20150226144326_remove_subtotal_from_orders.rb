class RemoveSubtotalFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :subtotal
  end
end
