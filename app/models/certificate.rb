# == Schema Information
#
# Table name: certificates
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  documentPerson :integer
#  email          :string
#

# certificate_model
class Certificate < ApplicationRecord
  def self.data_person
    certi_last = Certificate.last
    User.select("\"documentPerson\"", "firstname", "lastname", "\"documentType\"").joins(:person).where("\"isCensus\"=? and \"documentPerson\" =?", "t", certi_last.documentPerson)

  end

  def self.check_censo
      get_document_cert = Certificate.where(["email = ?", ("#{User.current.email}")]).last
      document= get_document_cert.documentPerson
      User.select("\"documentPerson\"", "firstname", "lastname", "\"documentType\"").joins(:person).where("email= ? and \"isCensus\"=? and \"documentPerson\" =?",("#{User.current.email}"), "t", document)
  end




end
