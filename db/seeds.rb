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
  address: "494 Ratchadamri Rd, Lumphini, Pathum Wan, Bangkok, Thailand",
  working_hour_start: 9,
  working_hour_end: 15,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750584/T02NE0241-U052L5PAFLJ-023414d20070-512_c6zw9j.jpg"
)

User.create!(
  first_name: "Anne",
  last_name: "Bortoli",
  email: "anne@lewagon.com",
  password: "123456",
  phone: "21-96547-1330",
  address: "675 Lincoln Ave, Winnetka, United States",
  working_hour_start: 8,
  working_hour_end: 15,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750471/T02NE0241-U052YLW4TSM-ad36684f5b5f-512_juwiqz.jpg"
)

User.create!(
  first_name: "Araceli",
  last_name: "Gallardo",
  email: "ara@lewagon.com",
  password: "123456",
  phone: "21-96347-1435",
  address: "4 York St, Sydney NSW 2000, Australia",
  working_hour_start: 14,
  working_hour_end: 20,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750488/T02NE0241-U05376AR3T8-298b08634e57-512_j3a0hb.jpg"
)

User.create!(
  first_name: "Augusto",
  last_name: "Silva",
  email: "augusto@lewagon.com",
  password: "123456",
  phone: "21-96987-0014",
  address: "R. Uruguai, 476 - Tijuca, Rio de Janeiro - RJ",
  working_hour_start: 6,
  working_hour_end: 13,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750566/T02NE0241-U052N41NB28-74bc3756b3a2-512_bcatgy.png"
)

User.create!(
  first_name: "Pedro",
  last_name: "Souza",
  email: "pedrinho@lewagon.com",
  password: "123456",
  phone: "21-96097-1498",
  address: "Av. Atlântica, 1936 - Copacabana, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750720/T02NE0241-U053DAFSZSL-c2ffe71d509e-512_wvbwgg.jpg"
)

User.create!(
  first_name: "Pedro",
  last_name: "Zoffoli",
  email: "pedrao@lewagon.com",
  password: "123456",
  phone: "21-96097-2368",
  address: "R. Bom Pastor, 481 - Tijuca, Rio de Janeiro - RJ",
  working_hour_start: 8,
  working_hour_end: 12,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750735/T02NE0241-U053DNHBUDQ-4e6311a803bf-512_dkhwsw.jpg"
)

User.create!(
  first_name: "Ariel",
  last_name: "Lima",
  email: "ariel@lewagon.com",
  password: "123456",
  phone: "21-96589-2368",
  address: "138 Kingsland Rd, London, United Kingdom",
  working_hour_start: 9,
  working_hour_end: 18,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750548/T02NE0241-U045KLBU09Y-21d34b8426c9-512_h7swzu.jpg"

)

User.create!(
  first_name: "Leonardo",
  last_name: "Gomes",
  email: "leonardo@lewagon.com",
  password: "123456",
  phone: "21-96589-2368",
  address: "Av. Bartolomeu Mitre, 705 - Leblon, Rio de Janeiro - RJ",
  working_hour_start: 15,
  working_hour_end: 12,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750670/T02NE0241-U05426RHZDW-e6cf35666906-512_mdjdcf.jpg"
)

User.create!(
  first_name: "Marcos",
  last_name: "Costa",
  email: "marcos@lewagon.com",
  password: "123456",
  phone: "21-96583-2390",
  address: "4 York St, Sydney NSW 2000, Australia",
  working_hour_start: 8,
  working_hour_end: 16,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750690/T02NE0241-U053V1TGS1X-4b8b3ad2aeb9-512_vgafj8.jpg"
)

User.create!(
  first_name: "Carla",
  last_name: "Valdivia",
  email: "carla@lewagon.com",
  password: "123456",
  phone: "21-96534-2334",
  address: "1 Pl. de l'Estrapade, 75005 Paris, France",
  working_hour_start: 14,
  working_hour_end: 22,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750605/T02NE0241-U01UQ4AHKQ9-b2d69c4c7f9b-512_ls6eyp.jpg"
)

User.create!(
  first_name: "Antonio",
  last_name: "Florencio",
  email: "antonio@lewagon.com",
  password: "123456",
  phone: "21-96097-1467",
  address: "Av. Atlântica, 1936 - Copacabana, Rio de Janeiro - RJ",
  working_hour_start: 9,
  working_hour_end: 18,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750517/T02NE0241-U02TTL17LCF-2090955a3299-512_rpj4qv.jpg"
)

User.create!(
  first_name: "Chloe",
  last_name: "Gerdeens",
  email: "chloe@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "Rue du Marché aux Poulets 55, 1000 Bruxelles, Belgium",
  working_hour_start: 10,
  working_hour_end: 15,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750621/T02NE0241-U03PWB0D79B-6937e37d4aeb-512_q7adbg.jpg"
)
#  ADD MORE USERS

User.create!(
  first_name: "Andre",
  last_name: "Menezes",
  email: "andre@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "Nieuwe Spiegelstraat 3A, Amsterdam, Netherlands",
  working_hour_start: 9,
  working_hour_end: 18,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750410/T02NE0241-U01U4S92NJ1-346b46af5faf-512_wuebsz.jpg"
)

User.create!(
  first_name: "Yuri",
  last_name: "Tagomori",
  email: "yuri@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "Chome Hatchobori, Tokyo, Japan",
  working_hour_start: 4,
  working_hour_end: 10,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750764/T02NE0241-U052K6YAR8S-99d65fe3873e-512_zl2s9f.jpg"
)

User.create!(
  first_name: "Nemanja",
  last_name: "Trajkovic",
  email: "nema@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "Av. de Suècia, València, Valencia, Spain",
  working_hour_start: 7,
  working_hour_end: 12,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750706/T02NE0241-U052Z7UJY6T-57621bac2b7f-512_thnqlz.jpg"
)

User.create!(
  first_name: "Viktor",
  last_name: "Brandão",
  email: "viktor@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "Leipziger Pl. 12, Berlin, Germany",
  working_hour_start: 23,
  working_hour_end: 5,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750750/T02NE0241-U026DNNJQ2F-8803fb3e665c-512_bx08to.jpg"
)

User.create!(
  first_name: "Dani",
  last_name: "Abbe",
  email: "dani@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "999 Canada Pl, Vancouver, BC, Canada",
  working_hour_start: 10,
  working_hour_end: 16,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686752758/T02NE0241-U053DL9AM5H-a1ee0cf4fd6c-512_lwww3e.jpg"
)

User.create!(
  first_name: "Douglas",
  last_name: "Passos",
  email: "dug@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "999 Canada Pl, Vancouver, BC, Canada",
  working_hour_start: 5,
  working_hour_end: 12,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750639/T02NE0241-U053TTHUZDF-91b1ffa5ea9e-512_cwysmh.jpg"
)

User.create!(
  first_name: "Julia",
  last_name: "Guerreiro",
  email: "julia@lewagon.com",
  password: "123456",
  phone: "21-96098-1074",
  address: "Rua Marechal Mascarenhas de Morais, 121, Copacabana, Rio de Janeiro",
  working_hour_start: 11,
  working_hour_end: 20,
  image: "https://res.cloudinary.com/dbpzcbo3n/image/upload/v1686750654/T02NE0241-U02TTUNU2MD-d88254156244-512_fn1idu.jpg"
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
andre = User.find(13)
yuri = User.find(14)
nema = User.find(15)
viktor = User.find(16)
dani = User.find(17)
douglas = User.find(18)
julia = User.find(19)

puts "Creating connections..."

# Bruno Contacts
Connection.create!(
  user: bruno,
  contact: anne
)

Connection.create!(
  user: bruno,
  contact: ara
)

Connection.create!(
  user: bruno,
  contact: augusto
)

Connection.create!(
  user: bruno,
  contact: pedrinho
)

Connection.create!(
  user: bruno,
  contact: pedrao
)

Connection.create!(
  user: bruno,
  contact: ariel
)

Connection.create!(
  user: bruno,
  contact: leonardo
)

Connection.create!(
  user: bruno,
  contact: marcos
)

Connection.create!(
  user: bruno,
  contact: carla
)

Connection.create!(
  user: bruno,
  contact: antonio
)

Connection.create!(
  user: bruno,
  contact: chloe
)

Connection.create!(
  user: bruno,
  contact: andre
)

Connection.create!(
  user: bruno,
  contact: yuri
)

Connection.create!(
  user: bruno,
  contact: nema
)

Connection.create!(
  user: bruno,
  contact: viktor
)

Connection.create!(
  user: bruno,
  contact: dani
)

Connection.create!(
  user: bruno,
  contact: douglas
)

Connection.create!(
  user: bruno,
  contact: julia
)

# Anne Contacts
Connection.create!(
  user: anne,
  contact: bruno
)

Connection.create!(
  user: anne,
  contact: ara
)

Connection.create!(
  user: anne,
  contact: augusto
)

Connection.create!(
  user: anne,
  contact: pedrinho
)

Connection.create!(
  user: anne,
  contact: pedrao
)

Connection.create!(
  user: anne,
  contact: ariel
)

Connection.create!(
  user: anne,
  contact: leonardo
)

Connection.create!(
  user: anne,
  contact: marcos
)

Connection.create!(
  user: anne,
  contact: carla
)

Connection.create!(
  user: anne,
  contact: antonio
)

Connection.create!(
  user: anne,
  contact: chloe
)

Connection.create!(
  user: anne,
  contact: andre
)

Connection.create!(
  user: anne,
  contact: yuri
)

Connection.create!(
  user: anne,
  contact: nema
)

Connection.create!(
  user: anne,
  contact: viktor
)

Connection.create!(
  user: anne,
  contact: dani
)

Connection.create!(
  user: anne,
  contact: douglas
)

Connection.create!(
  user: anne,
  contact: julia
)

# Ara Contacts
Connection.create!(
  user: ara,
  contact: bruno
)

Connection.create!(
  user: ara,
  contact: anne
)

Connection.create!(
  user: ara,
  contact: augusto
)

Connection.create!(
  user: ara,
  contact: pedrinho
)

Connection.create!(
  user: ara,
  contact: pedrao
)

Connection.create!(
  user: ara,
  contact: ariel
)

Connection.create!(
  user: ara,
  contact: leonardo
)

Connection.create!(
  user: ara,
  contact: marcos
)

Connection.create!(
  user: ara,
  contact: carla
)

Connection.create!(
  user: ara,
  contact: antonio
)

Connection.create!(
  user: ara,
  contact: chloe
)

Connection.create!(
  user: ara,
  contact: andre
)

Connection.create!(
  user: ara,
  contact: yuri
)

Connection.create!(
  user: ara,
  contact: nema
)

Connection.create!(
  user: ara,
  contact: viktor
)

Connection.create!(
  user: ara,
  contact: dani
)

Connection.create!(
  user: ara,
  contact: douglas
)

Connection.create!(
  user: ara,
  contact: julia
)

puts "Creating groups..."

Group.create!(
  user: bruno,
  title: "Timezone App",
  contact_ids: [anne.id, ara.id, nema.id]
)

Group.create!(
  user: anne,
  title: "Le Wagon TA's",
  contact_ids: [carla.id, andre.id, antonio.id, julia.id, ariel.id]
)

Group.create!(
  user: ara,
  title: "Frontend Mentorship",
  contact_ids: [anne.id, ariel.id, pedrinho.id]
)

puts 'Finished!'
