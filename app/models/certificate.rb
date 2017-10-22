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

  def self.check_censo
      User.select("documentPerson", "firstname", "lastname", "documentPerson", "documentType").joins(:person).where("email= ? and isCensus=?",("#{User.current.email}"), "t")   
  end


end
