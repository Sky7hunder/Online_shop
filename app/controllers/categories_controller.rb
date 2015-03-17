class CategoriesController < ApplicationController
  def change_category_position
    category = Category.find(params[:category_id])
    if params[:move] == 'up'
      category.move_higher
    elsif params[:move] == 'down'
      category.move_lower
    end
    redirect_to :back
  end
end
