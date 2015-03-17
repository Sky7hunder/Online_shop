ActiveAdmin.register Category do

  permit_params :name, :position

  config.per_page = 20

  index do
    column :id
    column 'Name', :name
    column 'Position', :position
    column 'Moving category position' do |category|
      link_to( 'Up',  change_category_position_path( category_id: category.id, move: 'up' ), method: :post ) +
      ' ' + link_to( 'Down', change_category_position_path( category_id: category.id, move: 'down' ), method: :post )
    end
    actions
  end

  show do
    attributes_table do
      row 'Name' do |category| category.name end
      row 'Position' do |category| category.position end
    end
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
