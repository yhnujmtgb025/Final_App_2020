class UserMailer < ApplicationMailer
  default from: "from@gmail.com"

  def signup_confirmation(user)
    @user = user
    mail(to: @user.email,subject: "congratulations")
  include Devise::Controllers::UrlHelpers
  default template_path: 'users/mailer'
  end
  def welcome_reset_password_instructions(user)
    mail(to: user.email, subject: 'Welcome to the New Site')
  end
end
