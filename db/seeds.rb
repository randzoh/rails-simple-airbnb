# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

4.times do
  Flat.create!(
    name: Faker::Marketing.buzzwords.capitalize,
    address: Faker::Address.street_address,
    description: Faker::Construction.material,
    price_per_night: rand(30..300),
    number_of_guests: rand(3..6)
  )
end
