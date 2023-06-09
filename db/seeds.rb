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
  working_hour_start: 14,
  working_hour_end: 15
)

User.create!(
  first_name: "Augusto",
  last_name: "Silva",
  email: "augusto@lewagon.com",
  password: "123456",
  phone: "21-96987-0014",
  address: "R. Uruguai, 476 - Tijuca, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Pedro",
  last_name: "Souza",
  email: "pedrinho@lewagon.com",
  password: "123456",
  phone: "21-96097-1498",
  address: "Av. Atlântica, 1936 - Copacabana, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Pedro",
  last_name: "Zoffoli",
  email: "pedrao@lewagon.com",
  password: "123456",
  phone: "21-96097-2368",
  address: "R. Bom Pastor, 481 - Tijuca, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Ariel",
  last_name: "lima",
  email: "ariel@lewagon.com",
  password: "123456",
  phone: "21-96589-2368",
  address: "Av. Ataulfo de Paiva, 1022 - Leblon, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Leonardo",
  last_name: "Gomes",
  email: "leonardo@lewagon.com",
  password: "123456",
  phone: "21-96589-2368",
  address: "Av. Bartolomeu Mitre, 705 - Leblon, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Marcos",
  last_name: "Costa",
  email: "marcos@lewagon.com",
  password: "123456",
  phone: "21-96583-2390",
  address: "Barra da Tijuca, Rio de Janeiro - State of Rio de Janeiro",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Carla",
  last_name: "Valdivia",
  email: "carla@lewagon.com",
  password: "123456",
  phone: "21-96534-2334",
  address: "1 Pl. de l'Estrapade, 75005 Paris, France",
  working_hour_start: 14,
  working_hour_end: 22
)

User.create!(
  first_name: "Antonio",
  last_name: "Florencio",
  email: "antonio@lewagon.com",
  password: "123456",
  phone: "21-96097-1467",
  address: "Av. Atlântica, 1936 - Copacabana, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12
)

User.create!(
  first_name: "Chloe",
  last_name: "Gerdeens",
  email: "chloe@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "Rue du Marché aux Poulets 55, 1000 Bruxelles, Belgium",
  working_hour_start: 9,
  working_hour_end: 18
)

bruno = User.find(1)
anne = User.find(2)
ara = User.find(3)
augusto = User.find(4)
pedrinho = User.find(5)
pedrao = User.find(6)
ariel = User.find(7)
leonardo = User.find(8)
marcos = User.find(9)
carla = User.find(10)
antonio = User.find(11)
chloe = User.find(12)

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

Connection.create!(
  user: antonio,
  contact: carla
)

Connection.create!(
  user: antonio,
  contact: chloe
)

Connection.create!(
  user: antonio,
  contact: ariel
)

Connection.create!(
  user: leonardo,
  contact: pedrinho
)

Connection.create!(
  user: leonardo,
  contact: pedrao
)

Connection.create!(
  user: leonardo,
  contact: marcos
)

Connection.create!(
  user: chloe,
  contact: pedrinho
)

Connection.create!(
  user: chloe,
  contact: pedrao
)

Connection.create!(
  user: chloe,
  contact: marcos
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

Group.create!(
  user: leonardo,
  title: "Grupo do Leonardo",
  contact_ids: [pedrinho.id, pedrao.id]
)

Group.create!(
  user: ariel,
  title: "Grupo da Ariel",
  contact_ids: [carla.id, chloe.id]
)

Group.create!(
  user: chloe,
  title: "Grupo da Chloe",
  contact_ids: [carla.id, antonio.id, ariel.id]
)

puts 'Finished!'
