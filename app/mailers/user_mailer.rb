# user_mailer
class UserMailer < ApplicationMailer
  default from: ENV['email_platform']

  def contact_email(user)
    @user = user
    mail(to: ENV['email_platform'], subject: 'Correo de Contáctanos SI-Pastos')
  end

  def newsletter(newsletter)
    @newsletter = newsletter
    emails = User.pluck(:email).join(' ,')
    mail(to: emails, subject: @newsletter.subject)
  end

end
