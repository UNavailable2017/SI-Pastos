class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(user)
    @user = user
    mail(to: 'jhont285@gmail.com', subject: 'Correo de Contáctanos SI-Pastos')
  end
end
