class ConfirmMailer < ApplicationMailer
  default from: 'sky7hunder@gmail.com'

  def confirm_email(order)
    @order = order
    subject = "Order №#{@order.id} in My Store"
    mail(to: @order.user_email, subject: subject)
  end
end
