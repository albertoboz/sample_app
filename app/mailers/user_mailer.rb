class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'your-email@example.com',
        :subject => "A new contact form message from #{name}")
  end


  def send_enabled_message(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to Best Bikes Berlin!")
  end
end
