class AddDetailsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :confirmed, :boolean
    add_column :orders, :user_name, :string
    add_column :orders, :user_surname, :string
    add_column :orders, :user_phone, :integer
    add_column :orders, :user_email, :string
  end
end
