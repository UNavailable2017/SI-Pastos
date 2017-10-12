# user_mailer
class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(user)
    @user = user
    mail(to: ENV['email_platform'], subject: 'Correo de Contáctanos SI-Pastos')
  end
end
