# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'rubygems'
100.times do
  a = User.new
  a.email =  Faker::Internet.email
  a.password = '12345678'
  a.password_confirmation = '12345678'
  a.save
end
puts 'finished loading user data'

100.times do
  Person.create(documentPerson: Faker::Number.number(5),
                documentType: Faker::Lorem.characters(2),
                name: Faker::Name.first_name,
                lastname: Faker::Name.last_name,
                birthDate: Faker::Date.backward(23_725),
                civilStatus: Faker::Lorem.words.join(' '),
                gender: Faker::Demographic.sex,
                isCensus: Faker::Boolean.boolean(0.5),
                originLanguage: Faker::Lorem.characters(8),
                languageDomination: Faker::Lorem.characters(8),
                user_id: Faker::Number.unique.between(1, 100))
end
Faker::UniqueGenerator.clear
puts 'finished loading person data'

100.times do
  Announcement.create(publicationDate: Faker::Date.forward(2300),
                      deadline: Faker::Date.forward(900),
                      announcementType: Faker::Lorem.characters(8),
                      announcementInformation:Faker::Lorem.characters(15),
                      person_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading Announcement data'
Faker::UniqueGenerator.clear

100.times do
  HealthService.create(name: Faker::Company.suffix,
                       censo_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading health_service data'
Faker::UniqueGenerator.clear

100.times do
  a = Censo.new
  a.numberOfChildren = Faker::Number.number(1)
  a.date = Faker::Date.forward(2000)
  a.originResguardo = Faker::Lorem.characters(7)
  a.levelStudies = Faker::Lorem.characters(7)
  a.profession = Faker::Company.profession
  a.entry = Faker::Lorem.characters(8)
  a.person_id = Faker::Number.unique.between(1, 100)
  Faker::UniqueGenerator.clear
  a.health_service_id = Faker::Number.unique.between(1, 100)
  a.save
end
Faker::UniqueGenerator.clear
puts 'finished loading censo data'

100.times do
  Child.create(name: Faker::Name.first_name,
               age: Faker::Number.number(1),
               censo_id: Faker::Number.unique.between(1, 100))
end
Faker::UniqueGenerator.clear
puts 'finished loading child data'

100.times do
  Contact.create(name: Faker::Name.first_name,
                 email: Faker::Internet.email,
                 message: Faker::Lorem.paragraph)
end
puts 'finished loading contact data'


100.times do
  Election.create(date: Faker::Date.forward(900),
                  winner: Faker::Lorem.characters(8),
                  candidate_id:Faker::Number.unique.between(1, 100))
end
Faker::UniqueGenerator.clear
puts 'finished loading election data'

100.times do
  a = Candidate.new
  a.votes = Faker::Number.number(2)
  a.person_id = Faker::Number.unique.between(1, 100)
  Faker::UniqueGenerator.clear
  a.election_id = Faker::Number.unique.between(1, 100)
  a.save
end
Faker::UniqueGenerator.clear
puts 'finished loading candidates data'

100.times do
  Event.create(name: Faker::Lorem.characters(8),
               date: Faker::Date.forward(900),
               eventType: Faker::Lorem.characters(8),
               eventInfo: Faker::Lorem.characters(8),
               person_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading event data'
Faker::UniqueGenerator.clear

100.times do
  Opinion.create(interest: Faker::Lorem.sentence,
                 socialOrganization: Faker::Lorem.characters(10),
                 groupsParticipation: Faker::Lorem.characters(8),
                 workGroupDecision: Faker::Lorem.sentence,
                 ideas: Faker::Lorem.paragraph,
                 activitiesParticipatedBogota: Faker::Lorem.words.join(' '),
                 whatIsParticipating: Faker::Lorem.paragraph,
                 rightsMechanisms: Faker::Lorem.paragraph,
                 districtParticipation: Faker::Lorem.paragraph,
                 reasonParticipation: Faker::Lorem.paragraph,
                 reasonNoParticipation: Faker::Lorem.paragraph,
                 adviceOnParticipation: Faker::Lorem.paragraph,
                 training: Faker::Lorem.paragraph,
                 trainingTheme: Faker::Lorem.paragraph,
                 cabildoTrust: Faker::Lorem.paragraph,
                 trustLocalGovernment: Faker::Lorem.paragraph,
                 trustNationalGovernment: Faker::Lorem.paragraph,
                 trustONGfoundation: Faker::Lorem.paragraph,
                 censo_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading opinion data'
Faker::UniqueGenerator.clear

100.times do
  Residence.create(address: Faker::Address.street_address,
                   phone: Faker::PhoneNumber.cell_phone,
                   neighborhood: Faker::Address.community,
                   locality: Faker::Address.city,
                   latitude: Faker::Address.latitude(),
                   longitude: Faker::Address.longitude(),
                   person_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading residence data'
Faker::UniqueGenerator.clear
