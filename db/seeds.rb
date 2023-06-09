puts "Cleaning database..."

Connection.destroy_all
Group.destroy_all
User.destroy_all

puts "Creating users..."

# TODO: Add Timezone and working_hours
User.create!(
  first_name: "Bruno",
  last_name: "Fazz",
  email: "bruno@lewagon.com",
  password: "123456",
  phone: "21-99856-1330",
  address: "R. Visc. de Pirajá, 130 - Ipanema, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Anne",
  last_name: "Bortoli",
  email: "anne@lewagon.com",
  password: "123456",
  phone: "21-96547-1330",
  address: "16 Vla Gaudelet, 75011 Paris, France",
  working_hour_start: 14,
  working_hour_end: 22
)

User.create!(
  first_name: "Ara",
  last_name: "Gallardo",
  email: "ara@lewagon.com",
  password: "123456",
  phone: "21-96347-1435",
  address: "4 York St, Sydney NSW 2000, Australia",
  working_hour_start: 2,
  working_hour_end: 15
)

bruno = User.find(1)
anne = User.find(2)
ara = User.find(3)

puts "Creating connections..."

Connection.create!(
  user: bruno,
  contact: anne
)

Connection.create!(
  user: bruno,
  contact: ara
)

Connection.create!(
  user: anne,
  contact: bruno
)

Connection.create!(
  user: ara,
  contact: anne
)

puts "Creating groups..."

Group.create!(
  user: bruno,
  title: "Grupo do Bruno",
  contact_ids: [anne.id, ara.id]
)

Group.create!(
  user: anne,
  title: "Grupo da Anne",
  contact_ids: [bruno.id]
)

Group.create!(
  user: ara,
  title: "Grupo da Araceli",
  contact_ids: [anne.id]
)

puts 'Finished!'
