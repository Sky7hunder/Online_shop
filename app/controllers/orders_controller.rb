class OrdersController < ApplicationController

  def empty_cart
    @order = current_order
    @order.destroy
    session[:order_id] = nil
    redirect_to :back
  end

  def confirm_order
  end

  def confirm
    @order = current_order
    @order.update_attributes(confirm_params)
    if Rails.env.production?
      ConfirmMailer.delay.confirm_email(@order)
    else
      ConfirmMailer.confirm_email(@order).deliver_now
    end
    session[:order_id] = nil
    redirect_to root_path
  end

  private

  def confirm_params
    confirm_params = params.permit(:user_name, :user_surname, :user_email, :user_phone)
    confirm_params[:confirmed] = true
    confirm_params
  end

end
