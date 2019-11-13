require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
5.times do
  flats = Flat.new(name: Faker::Company.catch_phrase, address: Faker::Address.street_address, description: Faker::Restaurant.description, price_per_night: Faker::Number.number(digits: 3), number_of_guests: Faker::Number.number(digits: 2))
  flats.save!
end

puts "Finished!"
