class UserMailer < ApplicationMailer
	default from: 'no-reply@edify.com'
  layout "user_mailer"

  def welcome_user(user)
    @user = user
    mail to: @user.email, subject: "Welcome to Edify"
  end
end
