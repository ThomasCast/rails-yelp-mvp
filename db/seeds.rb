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

bristol = { name: "Le Bristol", address: "Paris", category: "french" }
pizze =  { name: "Pizze", address: "Aix-en-Provence", category: "italian" }
frite = { name: "La Friterie", address: "Bruxelles", category: "belgian" }
sushi_bar = { name: "O sushi", address: "Bordeaux", category: "japanese" }
ravioli = { name: "La cabane des Raviolis", address: "Marseille", category: "chinese" }

[ bristol, pizze, frite, sushi_bar, ravioli ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"