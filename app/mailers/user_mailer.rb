class UserMailer < ApplicationMailer
  default from: "BestBikes@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'alberto.chiorboli@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome_message(user)
    @user = user
    mail(:to => user.email,
         :subject => "Welcome to Best Bikes Berlin!")
  end

  def successful_payment(user, product)
    @user = user
    @product = product
    mail(:to => user.email,
        :subject => "Confirmation of payment #{product.name}")
  end

end
