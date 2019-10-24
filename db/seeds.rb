# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
doctors = []
patients = []
speciality = []
10.times do
  City.create(name: )
end

10.times do
  patients << Patient.create(first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name)
end
puts "10 patients de créés !"
10.times do
  doctors << Doctor.create(first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code)
end
puts "10 docteurs de créés !"
10.times do
  Appointement.create(date: Time.now, doctor: doctors.sample, patient: patients.sample)
end
puts "10 RDV de créés !"
10.times do
  speciality << Speciality.create(name: Faker::Beer.brand)
end
puts "10 spécialités de créés !"

10.times do
  DoctorsHasSpecialty.create(doctor: Doctor.find(rand(1..10)), speciality: Speciality.find(rand(1..10)))
end
puts "10 spécialités ajoutées !"