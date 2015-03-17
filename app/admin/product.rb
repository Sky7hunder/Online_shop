ActiveAdmin.register Product do


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

  permit_params :name, :description, :price, :image, :category_ids => []

  index do
    column :name
    column :category do |product|
      product.categories.map { |category| category.name}.join(', ')
    end
    column :active
    column :created_at
    column :updated_at
    column :description
    column :price do |product|
      number_to_currency product.price, unit: 'грн.', format: "%n %u"
    end
    column :image do |product|
      cl_image_tag(product.image, :width => 100, :height => 150, :crop => :fill)
    end
    actions
  end

  show do
    attributes_table do
      row 'Name' do |product| product.name end
      row 'Categories' do |product|
        product.categories.map { |c| c.name}.join(', ')
      end
      row 'Description' do |product| product.description end
      row 'Price' do |product|
        number_to_currency product.price, unit: 'грн.', format: "%n %u"
      end
      row 'Image_url' do |product| product.image end
      row 'Image' do |product| cl_image_tag(product.image, :width => 100, :height => 150, :crop => :fill) end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs 'New product' do
      f.input :name, label: 'Name'
      f.input :categories, as: :check_boxes, label: 'Categories'
      f.input :description, label: 'Description', as: :text
      f.input :price, label: 'Price'
      f.file_field :image, label: 'Image'
      f.submit
    end
  end
end
