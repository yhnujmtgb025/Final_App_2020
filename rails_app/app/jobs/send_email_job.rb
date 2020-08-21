class SendEmailJob < ApplicationJob
  queue_as :default

  # def perform user
  #   @user = user
  #   UserMailer.signup_confirmation(@user).deliver
  # end
end
