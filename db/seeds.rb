# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# puts "Cleaning database..."
Restaurant.destroy_all if Rails.env.development?


puts "Creating restaurants..."
restaurants_attributes = [
  { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+44 20 1234 5678", category: "chinese" },
  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+44 20 9876 5432", category: "italian" },
  { name: "Sushi Place", address: "123 Main St, Cityville", phone_number: "+1 555 1234", category: "japanese" },
  { name: "French Bistro", address: "789 French Blvd, Paris", phone_number: "+33 1 2345 6789", category: "french" },
  { name: "Waffle House", address: "456 Maple Ave, Breakfast Town", phone_number: "+1 555 5678", category: "belgian" },
  { name: "Taco Spot", address: "867 Taco St, Mexicoville", phone_number: "+1 555 8765", category: "chinese" },
  { name: "Burger Joint", address: "234 Burger Blvd, Fastfood City", phone_number: "+1 555 4321",  category: "italian" },
  { name: "Curry Palace", address: "654 Curry St, Spicytown", phone_number: "+91 98765 43210",  category: "japanese" },
  { name: "Pasta Paradise", address: "876 Noodle Ave, Pastatown", phone_number: "+44 20 3456 7890", category: "french" },
  { name: "Vegetarian Delight", address: "321 Green St, Veggieville", phone_number: "+1 555 7890", category: "belgian" }
]

restaurants_attributes.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
