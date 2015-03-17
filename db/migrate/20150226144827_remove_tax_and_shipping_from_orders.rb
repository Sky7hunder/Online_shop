class RemoveTaxAndShippingFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :tax
    remove_column :orders, :shipping
  end
end
