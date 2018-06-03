# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE)
#  provider               :string
#  uid                    :string
#  name                   :string
#  image                  :text
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable

  has_one :person
  has_many :newsletters
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable,  :lockable, :confirmable

  validate :password_complexity

  def password_complexity
  # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
  return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/

  errors.add :password, 'Requisito de complejidad no cumplido. La longitud debe ser de 8-70 caracteres e incluir: 1 mayúscula, 1 minúscula, 1 dígito y 1 caracter especial'
 end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.password = Devise.friendly_token[0, 20]
      user.email = auth.info.email
      user.image = auth.info.image
      user.name = auth.info.name
    end
  end

  def self.current
    Thread.current[:user]
  end

  def self.current=(user)
    Thread.current[:user] = user
  end
end
