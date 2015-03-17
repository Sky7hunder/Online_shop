class ProductsController < ApplicationController
  def index
    if params[:category].present?
      category = Category.find(params[:category])
      @products = category.products.page(params[:page]).per(2)
      if @products.any?
        @message = "Товары из категории \"#{category.name}\""
      else
        @message = "Пока нет товаров из категории \"#{category.name}\""
      end
    else
      @products = Product.all.page(params[:page]).per(2)
      @message = 'Все товары'
    end
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end
end
