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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "123456789" }
pizza_west =  { name: "Pizza West", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", phone_number: "123456789" }
la_brata = { name: "La Brata", address: "7 Boundary St, Washington E2 7JE", category: "french", phone_number: "123456789" }
pizza_north =  { name: "Pizza North", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", phone_number: "123456789" }
gallo_nero = { name: "Gallo Nero", address: "7 Boundary St, Paris B2 7JE", category: "french", phone_number: "123456789" }
pizza_south =  { name: "Pizza South", address: "56A Los Angeles High St, London E1 6PQ", category: "japanese", phone_number: "123456789" }

[ dishoom, pizza_west, la_brata, pizza_north, gallo_nero, pizza_south ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
