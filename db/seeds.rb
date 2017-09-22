# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'populator'
puts 'started loading person data'


100.times do
  User.create(email: Faker::Internet.email,
  encrypted_password: Faker::Internet.password(8))
end
puts 'finished loading user data'

100.times do |row|
  Person.create(documentPerson: Faker::Number.number(10),
  documentType: Faker::Lorem.characters(8),
  name: Faker::Name.first_name,
  lastname: Faker::Name.last_name,
  birthDate: Faker::Date.backward(23_725),
  civilStatus: Faker::Lorem.words.join(' '),
  gender: Faker::Demographic.sex,
  isCensus:Faker::Boolean.boolean(0.5),
  originLanguage: Faker::Lorem.words.join(' '),
  languageDomination: Faker::Lorem.words.join(' '),
  user_id: Faker::Number.unique.between(1, 100))
end
Faker::UniqueGenerator.clear
puts 'finished loading person data'

100.times do |row|
  Announcement.create(
  publicationDate: Faker::Date.forward(2300),
  deadline: Faker::Date.forward(900),
  announcementType: Faker::Lorem.characters(8),
  announcementInformation:Faker::Lorem.characters(8),
  person_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading Announcement data'
Faker::UniqueGenerator.clear


100.times do |row|
  Candidate.create(
  votes: Faker::Number.number(2),
  person_id: Faker::Number.unique.between(1, 100))
end
Faker::UniqueGenerator.clear
puts 'finished loading candidates data'

100.times do |row|
  Censo.create(
  date: Faker::Date.between(10.weeks.ago, 15.weeks.ago),
  numberOfChildren: Faker::Number.number(1),
  originResguardo: Faker::Lorem.characters(8),
  levelStudies: Faker::Lorem.characters(8),
  profession: Faker::Lorem.characters(8),
  entry: Faker::Lorem.characters(8),
  person_id: Faker::Number.unique.between(1, 100)
  )
end
Faker::UniqueGenerator.clear
puts 'finished loading censo data'

100.times do |row|
  Child.create(
  name: Faker::Name.first_name,
  age: Faker::Number.number(1),
  censo_id: Faker::Number.unique.between(1, 100))
end
Faker::UniqueGenerator.clear
puts 'finished loading child data'

100.times do |row|
  Contact.create(name: Faker::Name.first_name,
  email: Faker::Internet.email,
  message: Faker::Lorem.paragraph)
end
puts 'finished loading contact data'


100.times do |row|
  Election.create(
  date: Faker::Date.forward(900),
  winner: Faker::Lorem.characters(8),
  candidate_id:Faker::Number.unique.between(1, 100))
end
Faker::UniqueGenerator.clear
puts 'finished loading election data'

100.times do |row|
  Event.create(name: Faker::Lorem.characters(8),
  date: Faker::Date.forward(900),
  eventType: Faker::Lorem.characters(8),
  eventInfo: Faker::Lorem.characters(8),
  person_id:Faker::Number.unique.between(1, 100))
end
puts 'finished loading event data'
Faker::UniqueGenerator.clear

100.times do |row|
  Opinion.create(
  interest: Faker::Lorem.sentence,
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


100.times do |row|
  Residence.create(address: Faker::Address.street_address,
  phone: Faker::PhoneNumber.phone_number,
  neighborhood: Faker::Address.community,
  locality: Faker::Address.city,
  lat: Faker::Number.decimal(2),
  long: Faker::Number.decimal(2),
  person_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading residence data'
Faker::UniqueGenerator.clear

100.times do |row|
  HealthService.create(
  name: Faker::Lorem.characters(8),
  censo_id: Faker::Number.unique.between(1, 100))
end
puts 'finished loading health_service data'
