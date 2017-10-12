# statistic
class Statistic < ApplicationRecord
  def self.average_age
    birth_date = Person.birth_date
    time = Time.new
    sum = 0
    birth_date.each do |date|
      sum += (time.to_date - date.to_date).to_i
    end
    days = sum / birth_date.size
    days /= 365
    days # return
  end
end
