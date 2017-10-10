class Certificate < ApplicationRecord
  def self.data_person
    d = Certificate.last
    dataaa =   Person.joins(:censo).where(documentPerson: d.documentPerson)
    return dataaa
  end
end
