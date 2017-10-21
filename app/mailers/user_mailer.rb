# user_mailer
class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(user)
    @user = user
    mail(to: ENV['email_platform'], subject: 'Correo de Contáctanos SI-Pastos')
  end

  def newsletter(newsletter)
    @newsletter = newsletter
    @users=User.limit(5)
    #@users = User.limit(5)
    # @users.each do |usuario|
    #   mail(to: usuario.email, subject: 'Nuevas Noticias')
    # end
    emails = @users.collect(&:email).join(", ")
    mail(to: emails, subject: @newsletter.subject)


    # @users.each do |m|
    #   correo=m.email
    #   mail(to: correo, subject: 'Nuevas Noticias').deliver_later
    # end

  end

end
