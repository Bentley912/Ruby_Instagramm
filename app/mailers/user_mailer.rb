class UserMailer < ApplicationMailer
  default from: 'notifications@rails_instagramm.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to Ruby Instagramm')
  end

end
