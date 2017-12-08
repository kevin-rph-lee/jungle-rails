class OrderMailer < ApplicationMailer
  helper MailerHelper

  def receipt_email(email, order)
    @order = order
    @line_items = order.line_items
    mail(to: email, subject: 'Order receipt')
  end



end
