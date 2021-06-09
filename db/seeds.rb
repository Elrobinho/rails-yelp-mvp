# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
kebabco = { name: "Kebabco", address: "7 Rue Nationale, Lille", category: 'belgian' }
canardstreet =  { name: "Canard Street", address: "8 Rue béthune, Lille", category: 'french' }
bombora = { name: "Bombora", address: "2 Place Euratechnologie, Lille", category: 'chinese' }
paparafaele =  { name: "Papa Rafaele", address: "8 Rue du Trésor, Lille", category: 'italian' }
ippudo =  { name: "Ippudo", address: "8 Rue Jacob, Paris", category: 'japanese' }

[kebabco, canardstreet, bombora, paparafaele, ippudo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
restaurants = Restaurant.create([])
