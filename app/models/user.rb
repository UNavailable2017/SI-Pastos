class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :person
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
