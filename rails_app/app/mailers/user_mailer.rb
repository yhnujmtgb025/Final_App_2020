class UserMailer < ApplicationMailer
  default from: "from@gmail.com"

  def signup_confirmation(user)
    @user = user

    mail(to: @user.email,subject: "congratulations")
  end


end
