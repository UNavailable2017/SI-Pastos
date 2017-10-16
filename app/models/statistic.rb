# == Schema Information
#
# Table name: statistics
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
    return days
  end

  def self.importante_statistics
    statistics = {}
    statistics['¿Cantidad de personas censadas?'] = Censo.all.size
    statistics['¿Cantidad de personas registradas en la plataforma?'] = User.all.size
    statistics['¿Cantidad de certificados emitidos?'] = Certificate.all.size
    statistics['¿Cantidad de correos enviados?'] = Contact.all.size
    statistics['¿Cantidad de eventos realizados?'] = Event.all.size
    statistics['¿Cantidad de empleos publicados?'] = Announcement.all.size
    statistics['¿Cantidad de elecciones hechas?'] = Election.all.size
    statistics['¿Cantidad de de Centros de salud?'] = HealthService.all.size
    statistics['¿Edad promedio de los usuarios censados?'] = Statistic.average_age
    return statistics
  end

end
