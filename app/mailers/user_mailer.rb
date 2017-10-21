# user_mailer
class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(user)
    @user = user
    mail(to: ENV['email_platform'], subject: 'Correo de Contáctanos SI-Pastos')
  end

  def newsletter(newsletter)
    @newsletter = newsletter
    @users = User.all
    emails = @users.collect(&:email).join(", ")
    mail(to: emails, subject: 'My Newsletter')
  end

end
