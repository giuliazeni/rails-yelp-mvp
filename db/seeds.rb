# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: Faker::Address.city, category: 'chinese', phone_number: '0152 58674360' }
pizza_east =  {name: "Pizza East", address: Faker::Address.city, category: 'chinese', phone_number: '0152 58674360'}
essenza = { name: 'Essenza', address: Faker::Address.city, category: 'chinese', phone_number: '0152 58674360' }
chez_julie = { name: 'Chez Julie', address: Faker::Address.city, category: 'chinese', phone_number: '0152 58674360' }
ming = { name: 'Ming Mong', address: Faker::Address.city, category: 'chinese', phone_number: '0152 58674360' }

restaurants = [dishoom, pizza_east, essenza, chez_julie, ming]

restaurants.each do |restaurant|
  single_restaurant = Restaurant.create!(restaurant)
  puts "Created #{single_restaurant.name}"
end
puts "Finished!"

# THE FOLLOWING LINES WOULD HELP US CREATE 100 RESTAURANTS WITH GEM FAKER, RESPECTING
# THE VALIDATION ABOUT CATEGORIES

# categeories = ["chinese", "italian", "japanese", "french", "belgian"]

# 100.times do
#   restaurant = Restaurant.create(
#     name: Faker::Movies::HarryPotter.character,
#     address: Faker::Address.city,
#     category: categeories.sample,
#     phone_number: Faker::PhoneNumber.phone_number
#   )
#   puts "#{restaurant.name} created."
# end

# puts "Finished with 100 restaurants"
