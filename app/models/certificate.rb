# == Schema Information
#
# Table name: certificates
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  documentPerson :integer
#

# certificate_model
class Certificate < ApplicationRecord
  def self.data_person
    certi_last = Certificate.last
    Person.joins(:censo).where(documentPerson: certi_last.documentPerson)
  end
end
