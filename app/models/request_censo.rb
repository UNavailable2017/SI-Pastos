# == Schema Information
#
# Table name: request_censos
#
#  id           :integer          not null, primary key
#  name         :string
#  lastname     :string
#  num_document :integer
#  phone        :integer
#  address      :string
#  user_email   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class RequestCenso < ApplicationRecord
    validates :name, :lastname, :num_document, :phone, :address, presence: true

    def self.check_user_request
        RequestCenso.find_by user_email: ("#{User.current.email}")
    end

    def self.check_data
        get_document = RequestCenso.find_by user_email: ("#{User.current.email}")
        Person.joins(:censo).where(documentPerson: get_document.num_document)
    end

    def self.check_data_two
        get_document = RequestCenso.last
        Person.joins(:censo).where(documentPerson: get_document.num_document)
    end
end
