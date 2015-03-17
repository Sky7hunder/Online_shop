class PagesController < ApplicationController

  def search
    if params[:search].present?
      @products = Product.search(params[:search]).page(params[:page]).per(2)
    else
      @products = Product.all.page(params[:page]).per(2)
      @message = 'Все товары'
    end
    @order_item = current_order.order_items.new
  end

end
