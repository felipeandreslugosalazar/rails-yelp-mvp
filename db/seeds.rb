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
restaurants_seeds = [
  pizza_north = { name: "Pizza north", phone_number: "1234-4567", address: "somewhere in the N ", category: "chinese" },
  pizza_south = { name: "Pizza south", phone_number: "1234-4567", address: "somewhere in the S", category: "italian" },
  pizza_west = { name: "Pizza West", phone_number: "1234-4567", address: "somewhere in the W", category: "japanese" },
  pizza_east = { name: "Pizza East", phone_number: "1234-4567", address: "somewhere in the E", category: "french" },
  pizza_center = { name: "Pizza Center", phone_number: "1234-4567", address: "somewhere in the C", category: "belgian" },
]

restaurants_seeds.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
