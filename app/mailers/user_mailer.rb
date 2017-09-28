# user_mailer
class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(user)
    @user = user
    mail(to: 'sipastos@gmail.com', subject: 'Correo de Contáctanos SI-Pastos')
  end
end
