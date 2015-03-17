ActiveAdmin.register Order do
  config.per_page = 20

  index do
    column :id
    column 'Total price', :total
    column 'Order satatus', :order_status_id
    column 'Created at', :created_at
    column 'Confirmed', :confirmed
    column 'User name', :user_name
    column 'User surname', :user_surname
    column 'User phone', :user_phone
    column 'User email', :user_email
  end

end