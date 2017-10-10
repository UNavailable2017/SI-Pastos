class Certificate < ApplicationRecord
  def self.data_person
    certi_last = Certificate.last
    Person.joins(:censo).where(documentPerson: certi_last.documentPerson)    
  end
end
