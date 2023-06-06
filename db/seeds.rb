# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "Creating users..."

User.create!(
  first_name: "Bruno",
  last_name: "Fazz",
  email: "bruno@lewagon.com",
  password: "123456",
  city: "Rio de Janeiro",
  country: "Brazil",
  phone: "21-99856-1330"
)

User.create!(
  first_name: "Anne",
  last_name: "Bortolli",
  email: "anne@lewagon.com",
  password: "123456",
  city: "Rio de Janeiro",
  country: "Brazil",
  phone: "21-96547-1330"
)

User.create!(
  first_name: "Ara",
  last_name: "Gallardo",
  email: "ara@lewagon.com",
  password: "123456",
  city: "Rio de Janeiro",
  country: "Brazil",
  phone: "21-96347-1435"
)

Connection.create!(
  user: User.first,
  contact: User.last
)

puts 'Finished!'
