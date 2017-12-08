class OrderMailer < ApplicationMailer

  def receipt_email(email)
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end



end
