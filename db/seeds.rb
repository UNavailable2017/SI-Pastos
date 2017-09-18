# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
puts 'started loading person data'

100.times do |row|
  person.create(document: Faker::Number.number(10),
  name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: Faker::Number.number(2),
  birthDate: Faker::Date.backward(23_725),
  civilStatus: Faker::Lorem.words.join(' '),
  gender: Faker::Demographic.sex,
  originLanguage: Faker::Lorem.words.join(' '),
  domainLanguage: Faker::Lorem.words.join(' '))
end
puts 'finished loading person data'

100.times do |row|
  work_group.create(participant: Faker::Name.first_name,
  proyect: Faker::Lorem.words.join(' '))
end

puts 'finished loading work_group data'

100.times do |row|
  user.create(email: Faker::Internet.email,
  encrypted_password: Faker::Internet.password(8))
end
puts 'finished loading user data'

100.times do |row|
  residence.create(address: Faker::Address.street_address,
  phone: Faker::PhoneNumber.phone_number,
  neighborhood: Faker::Address.community,
  locality: Faker::Address.city)
end
puts 'finished loading residence data'


100.times do |row|
  opinion.create(interest: Faker::Lorem.sentence,
  socialOrganization: Faker::Lorem.characters(10),
  groupsParticipation: Faker::Lorem.characters(8),
  workGroupDecision: Faker::Lorem.sentence,
  ideas: Faker::Lorem.paragraph,
  activitiesParticipatedBogota: Faker::Lorem.words.join(' '),
  whatIsParticipating: Faker::Lorem.paragraph,
  districtParticipation: Faker::Lorem.paragraph,
  reasonParticipation: Faker::Lorem.paragraph,
  reasonNoParticipation: Faker::Lorem.paragraph,
  adviceOnParticipation: Faker::Lorem.paragraph)
end
puts 'finished loading opinion data'


100.times do |row|
  health_service.create(name: Faker::Name.name_with_middle,
  admissionDate: Faker::Date.between(20.weeks.ago, Date.today),
  departureDate: Faker::Date.forward(2300),
  regime: Faker::Lorem.characters(10))
end
puts 'finished loading health_service data'

100.times do |row|
  governor.create(name: Faker::Name.name,
  startgovermentperiod: Faker::Date.between(200.weeks.ago, 15.weeks.ago),
  endgovermentperiod: Faker::Date.forward(23))
end
