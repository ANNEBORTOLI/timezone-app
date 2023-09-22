puts "Cleaning database..."

Connection.destroy_all
Group.destroy_all
User.destroy_all

puts "Creating users..."

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
  last_name: "Alves",
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

# julia Contacts
Connection.create!(
  user: julia,
  contact: anne
)

Connection.create!(
  user: julia,
  contact: ara
)

Connection.create!(
  user: julia,
  contact: augusto
)

Connection.create!(
  user: julia,
  contact: bruno
)

Connection.create!(
  user: julia,
  contact: pedrinho
)

Connection.create!(
  user: julia,
  contact: pedrao
)

Connection.create!(
  user: julia,
  contact: ariel
)

Connection.create!(
  user: julia,
  contact: leonardo
)

Connection.create!(
  user: julia,
  contact: marcos
)

Connection.create!(
  user: julia,
  contact: carla
)

Connection.create!(
  user: julia,
  contact: antonio
)

Connection.create!(
  user: julia,
  contact: chloe
)

Connection.create!(
  user: julia,
  contact: andre
)

Connection.create!(
  user: julia,
  contact: yuri
)

Connection.create!(
  user: julia,
  contact: nema
)

Connection.create!(
  user: julia,
  contact: viktor
)

Connection.create!(
  user: julia,
  contact: dani
)

Connection.create!(
  user: julia,
  contact: douglas
)


# douglas Contacts
Connection.create!(
  user: douglas,
  contact: anne
)

Connection.create!(
  user: douglas,
  contact: ara
)

Connection.create!(
  user: douglas,
  contact: augusto
)

Connection.create!(
  user: douglas,
  contact: bruno
)

Connection.create!(
  user: douglas,
  contact: pedrinho
)

Connection.create!(
  user: douglas,
  contact: pedrao
)

Connection.create!(
  user: douglas,
  contact: ariel
)

Connection.create!(
  user: douglas,
  contact: leonardo
)

Connection.create!(
  user: douglas,
  contact: marcos
)

Connection.create!(
  user: douglas,
  contact: carla
)

Connection.create!(
  user: douglas,
  contact: antonio
)

Connection.create!(
  user: douglas,
  contact: chloe
)

Connection.create!(
  user: douglas,
  contact: andre
)

Connection.create!(
  user: douglas,
  contact: yuri
)

Connection.create!(
  user: douglas,
  contact: nema
)

Connection.create!(
  user: douglas,
  contact: viktor
)

Connection.create!(
  user: douglas,
  contact: dani
)

Connection.create!(
  user: douglas,
  contact: julia
)


# dani Contacts
Connection.create!(
  user: dani,
  contact: anne
)

Connection.create!(
  user: dani,
  contact: ara
)

Connection.create!(
  user: dani,
  contact: augusto
)

Connection.create!(
  user: dani,
  contact: bruno
)

Connection.create!(
  user: dani,
  contact: pedrinho
)

Connection.create!(
  user: dani,
  contact: pedrao
)

Connection.create!(
  user: dani,
  contact: ariel
)

Connection.create!(
  user: dani,
  contact: leonardo
)

Connection.create!(
  user: dani,
  contact: marcos
)

Connection.create!(
  user: dani,
  contact: carla
)

Connection.create!(
  user: dani,
  contact: antonio
)

Connection.create!(
  user: dani,
  contact: chloe
)

Connection.create!(
  user: dani,
  contact: andre
)

Connection.create!(
  user: dani,
  contact: yuri
)

Connection.create!(
  user: dani,
  contact: nema
)

Connection.create!(
  user: dani,
  contact: viktor
)

Connection.create!(
  user: dani,
  contact: douglas
)

Connection.create!(
  user: dani,
  contact: julia
)


# viktor Contacts
Connection.create!(
  user: viktor,
  contact: anne
)

Connection.create!(
  user: viktor,
  contact: ara
)

Connection.create!(
  user: viktor,
  contact: augusto
)

Connection.create!(
  user: viktor,
  contact: bruno
)

Connection.create!(
  user: viktor,
  contact: pedrinho
)

Connection.create!(
  user: viktor,
  contact: pedrao
)

Connection.create!(
  user: viktor,
  contact: ariel
)

Connection.create!(
  user: viktor,
  contact: leonardo
)

Connection.create!(
  user: viktor,
  contact: marcos
)

Connection.create!(
  user: viktor,
  contact: carla
)

Connection.create!(
  user: viktor,
  contact: antonio
)

Connection.create!(
  user: viktor,
  contact: chloe
)

Connection.create!(
  user: viktor,
  contact: andre
)

Connection.create!(
  user: viktor,
  contact: yuri
)

Connection.create!(
  user: viktor,
  contact: nema
)

Connection.create!(
  user: viktor,
  contact: dani
)

Connection.create!(
  user: viktor,
  contact: douglas
)

Connection.create!(
  user: viktor,
  contact: julia
)


# nema Contacts
Connection.create!(
  user: nema,
  contact: anne
)

Connection.create!(
  user: nema,
  contact: ara
)

Connection.create!(
  user: nema,
  contact: augusto
)

Connection.create!(
  user: nema,
  contact: bruno
)

Connection.create!(
  user: nema,
  contact: pedrinho
)

Connection.create!(
  user: nema,
  contact: pedrao
)

Connection.create!(
  user: nema,
  contact: ariel
)

Connection.create!(
  user: nema,
  contact: leonardo
)

Connection.create!(
  user: nema,
  contact: marcos
)

Connection.create!(
  user: nema,
  contact: carla
)

Connection.create!(
  user: nema,
  contact: antonio
)

Connection.create!(
  user: nema,
  contact: chloe
)

Connection.create!(
  user: nema,
  contact: andre
)

Connection.create!(
  user: nema,
  contact: yuri
)

Connection.create!(
  user: nema,
  contact: viktor
)

Connection.create!(
  user: nema,
  contact: dani
)

Connection.create!(
  user: nema,
  contact: douglas
)

Connection.create!(
  user: nema,
  contact: julia
)


# yuri Contacts
Connection.create!(
  user: yuri,
  contact: anne
)

Connection.create!(
  user: yuri,
  contact: ara
)

Connection.create!(
  user: yuri,
  contact: augusto
)

Connection.create!(
  user: yuri,
  contact: bruno
)

Connection.create!(
  user: yuri,
  contact: pedrinho
)

Connection.create!(
  user: yuri,
  contact: pedrao
)

Connection.create!(
  user: yuri,
  contact: ariel
)

Connection.create!(
  user: yuri,
  contact: leonardo
)

Connection.create!(
  user: yuri,
  contact: marcos
)

Connection.create!(
  user: yuri,
  contact: carla
)

Connection.create!(
  user: yuri,
  contact: antonio
)

Connection.create!(
  user: yuri,
  contact: chloe
)

Connection.create!(
  user: yuri,
  contact: andre
)

Connection.create!(
  user: yuri,
  contact: nema
)

Connection.create!(
  user: yuri,
  contact: viktor
)

Connection.create!(
  user: yuri,
  contact: dani
)

Connection.create!(
  user: yuri,
  contact: douglas
)

Connection.create!(
  user: yuri,
  contact: julia
)


# andre Contacts
Connection.create!(
  user: andre,
  contact: anne
)

Connection.create!(
  user: andre,
  contact: ara
)

Connection.create!(
  user: andre,
  contact: augusto
)

Connection.create!(
  user: andre,
  contact: bruno
)

Connection.create!(
  user: andre,
  contact: pedrinho
)

Connection.create!(
  user: andre,
  contact: pedrao
)

Connection.create!(
  user: andre,
  contact: ariel
)

Connection.create!(
  user: andre,
  contact: leonardo
)

Connection.create!(
  user: andre,
  contact: marcos
)

Connection.create!(
  user: andre,
  contact: carla
)

Connection.create!(
  user: andre,
  contact: antonio
)

Connection.create!(
  user: andre,
  contact: chloe
)

Connection.create!(
  user: andre,
  contact: yuri
)

Connection.create!(
  user: andre,
  contact: nema
)

Connection.create!(
  user: andre,
  contact: viktor
)

Connection.create!(
  user: andre,
  contact: dani
)

Connection.create!(
  user: andre,
  contact: douglas
)

Connection.create!(
  user: andre,
  contact: julia
)


# chloe Contacts
Connection.create!(
  user: chloe,
  contact: anne
)

Connection.create!(
  user: chloe,
  contact: ara
)

Connection.create!(
  user: chloe,
  contact: augusto
)

Connection.create!(
  user: chloe,
  contact: bruno
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
  contact: ariel
)

Connection.create!(
  user: chloe,
  contact: leonardo
)

Connection.create!(
  user: chloe,
  contact: marcos
)

Connection.create!(
  user: chloe,
  contact: carla
)

Connection.create!(
  user: chloe,
  contact: antonio
)

Connection.create!(
  user: chloe,
  contact: andre
)

Connection.create!(
  user: chloe,
  contact: yuri
)

Connection.create!(
  user: chloe,
  contact: nema
)

Connection.create!(
  user: chloe,
  contact: viktor
)

Connection.create!(
  user: chloe,
  contact: dani
)

Connection.create!(
  user: chloe,
  contact: douglas
)

Connection.create!(
  user: chloe,
  contact: julia
)

# antonio Contacts
Connection.create!(
  user: antonio,
  contact: anne
)

Connection.create!(
  user: antonio,
  contact: ara
)

Connection.create!(
  user: antonio,
  contact: augusto
)

Connection.create!(
  user: antonio,
  contact: bruno
)

Connection.create!(
  user: antonio,
  contact: pedrinho
)

Connection.create!(
  user: antonio,
  contact: pedrao
)

Connection.create!(
  user: antonio,
  contact: ariel
)

Connection.create!(
  user: antonio,
  contact: leonardo
)

Connection.create!(
  user: antonio,
  contact: marcos
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
  contact: andre
)

Connection.create!(
  user: antonio,
  contact: yuri
)

Connection.create!(
  user: antonio,
  contact: nema
)

Connection.create!(
  user: antonio,
  contact: viktor
)

Connection.create!(
  user: antonio,
  contact: dani
)

Connection.create!(
  user: antonio,
  contact: douglas
)

Connection.create!(
  user: antonio,
  contact: julia
)


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

# Augusto Contacts
Connection.create!(
  user: augusto,
  contact: anne
)

Connection.create!(
  user: augusto,
  contact: ara
)

Connection.create!(
  user: augusto,
  contact: bruno
)

Connection.create!(
  user: augusto,
  contact: pedrinho
)

Connection.create!(
  user: augusto,
  contact: pedrao
)

Connection.create!(
  user: augusto,
  contact: ariel
)

Connection.create!(
  user: augusto,
  contact: leonardo
)

Connection.create!(
  user: augusto,
  contact: marcos
)

Connection.create!(
  user: augusto,
  contact: carla
)

Connection.create!(
  user: augusto,
  contact: antonio
)

Connection.create!(
  user: augusto,
  contact: chloe
)

Connection.create!(
  user: augusto,
  contact: andre
)

Connection.create!(
  user: augusto,
  contact: yuri
)

Connection.create!(
  user: augusto,
  contact: nema
)

Connection.create!(
  user: augusto,
  contact: viktor
)

Connection.create!(
  user: augusto,
  contact: dani
)

Connection.create!(
  user: augusto,
  contact: douglas
)

Connection.create!(
  user: augusto,
  contact: julia
)

# Pedrinho Contacts
Connection.create!(
  user: pedrinho,
  contact: anne
)

Connection.create!(
  user: pedrinho,
  contact: ara
)

Connection.create!(
  user: pedrinho,
  contact: augusto
)

Connection.create!(
  user: pedrinho,
  contact: bruno
)

Connection.create!(
  user: pedrinho,
  contact: pedrao
)

Connection.create!(
  user: pedrinho,
  contact: ariel
)

Connection.create!(
  user: pedrinho,
  contact: leonardo
)

Connection.create!(
  user: pedrinho,
  contact: marcos
)

Connection.create!(
  user: pedrinho,
  contact: carla
)

Connection.create!(
  user: pedrinho,
  contact: antonio
)

Connection.create!(
  user: pedrinho,
  contact: chloe
)

Connection.create!(
  user: pedrinho,
  contact: andre
)

Connection.create!(
  user: pedrinho,
  contact: yuri
)

Connection.create!(
  user: pedrinho,
  contact: nema
)

Connection.create!(
  user: pedrinho,
  contact: viktor
)

Connection.create!(
  user: pedrinho,
  contact: dani
)

Connection.create!(
  user: pedrinho,
  contact: douglas
)

Connection.create!(
  user: pedrinho,
  contact: julia
)

# Pedrao Contacts
Connection.create!(
  user: pedrao,
  contact: anne
)

Connection.create!(
  user: pedrao,
  contact: ara
)

Connection.create!(
  user: pedrao,
  contact: augusto
)

Connection.create!(
  user: pedrao,
  contact: bruno
)

Connection.create!(
  user: pedrao,
  contact: pedrinho
)

Connection.create!(
  user: pedrao,
  contact: ariel
)

Connection.create!(
  user: pedrao,
  contact: leonardo
)

Connection.create!(
  user: pedrao,
  contact: marcos
)

Connection.create!(
  user: pedrao,
  contact: carla
)

Connection.create!(
  user: pedrao,
  contact: antonio
)

Connection.create!(
  user: pedrao,
  contact: chloe
)

Connection.create!(
  user: pedrao,
  contact: andre
)

Connection.create!(
  user: pedrao,
  contact: yuri
)

Connection.create!(
  user: pedrao,
  contact: nema
)

Connection.create!(
  user: pedrao,
  contact: viktor
)

Connection.create!(
  user: pedrao,
  contact: dani
)

Connection.create!(
  user: pedrao,
  contact: douglas
)

Connection.create!(
  user: pedrao,
  contact: julia
)

# Ariel Contacts
Connection.create!(
  user: ariel,
  contact: anne
)

Connection.create!(
  user: ariel,
  contact: ara
)

Connection.create!(
  user: ariel,
  contact: augusto
)

Connection.create!(
  user: ariel,
  contact: bruno
)

Connection.create!(
  user: ariel,
  contact: pedrinho
)

Connection.create!(
  user: ariel,
  contact: pedrao
)

Connection.create!(
  user: ariel,
  contact: leonardo
)

Connection.create!(
  user: ariel,
  contact: marcos
)

Connection.create!(
  user: ariel,
  contact: carla
)

Connection.create!(
  user: ariel,
  contact: antonio
)

Connection.create!(
  user: ariel,
  contact: chloe
)

Connection.create!(
  user: ariel,
  contact: andre
)

Connection.create!(
  user: ariel,
  contact: yuri
)

Connection.create!(
  user: ariel,
  contact: nema
)

Connection.create!(
  user: ariel,
  contact: viktor
)

Connection.create!(
  user: ariel,
  contact: dani
)

Connection.create!(
  user: ariel,
  contact: douglas
)

Connection.create!(
  user: ariel,
  contact: julia
)

# Leonardo Contacts
Connection.create!(
  user: leonardo,
  contact: anne
)

Connection.create!(
  user: leonardo,
  contact: ara
)

Connection.create!(
  user: leonardo,
  contact: augusto
)

Connection.create!(
  user: leonardo,
  contact: bruno
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
  contact: ariel
)

Connection.create!(
  user: leonardo,
  contact: marcos
)

Connection.create!(
  user: leonardo,
  contact: carla
)

Connection.create!(
  user: leonardo,
  contact: antonio
)

Connection.create!(
  user: leonardo,
  contact: chloe
)

Connection.create!(
  user: leonardo,
  contact: andre
)

Connection.create!(
  user: leonardo,
  contact: yuri
)

Connection.create!(
  user: leonardo,
  contact: nema
)

Connection.create!(
  user: leonardo,
  contact: viktor
)

Connection.create!(
  user: leonardo,
  contact: dani
)

Connection.create!(
  user: leonardo,
  contact: douglas
)

Connection.create!(
  user: leonardo,
  contact: julia
)

# marcos Contacts
Connection.create!(
  user: marcos,
  contact: anne
)

Connection.create!(
  user: marcos,
  contact: ara
)

Connection.create!(
  user: marcos,
  contact: augusto
)

Connection.create!(
  user: marcos,
  contact: bruno
)

Connection.create!(
  user: marcos,
  contact: pedrinho
)

Connection.create!(
  user: marcos,
  contact: pedrao
)

Connection.create!(
  user: marcos,
  contact: ariel
)

Connection.create!(
  user: marcos,
  contact: leonardo
)

Connection.create!(
  user: marcos,
  contact: carla
)

Connection.create!(
  user: marcos,
  contact: antonio
)

Connection.create!(
  user: marcos,
  contact: chloe
)

Connection.create!(
  user: marcos,
  contact: andre
)

Connection.create!(
  user: marcos,
  contact: yuri
)

Connection.create!(
  user: marcos,
  contact: nema
)

Connection.create!(
  user: marcos,
  contact: viktor
)

Connection.create!(
  user: marcos,
  contact: dani
)

Connection.create!(
  user: marcos,
  contact: douglas
)

Connection.create!(
  user: marcos,
  contact: julia
)

# carla Contacts
Connection.create!(
  user: carla,
  contact: anne
)

Connection.create!(
  user: carla,
  contact: ara
)

Connection.create!(
  user: carla,
  contact: augusto
)

Connection.create!(
  user: carla,
  contact: bruno
)

Connection.create!(
  user: carla,
  contact: pedrinho
)

Connection.create!(
  user: carla,
  contact: pedrao
)

Connection.create!(
  user: carla,
  contact: ariel
)

Connection.create!(
  user: carla,
  contact: leonardo
)

Connection.create!(
  user: carla,
  contact: marcos
)

Connection.create!(
  user: carla,
  contact: antonio
)

Connection.create!(
  user: carla,
  contact: chloe
)

Connection.create!(
  user: carla,
  contact: andre
)

Connection.create!(
  user: carla,
  contact: yuri
)

Connection.create!(
  user: carla,
  contact: nema
)

Connection.create!(
  user: carla,
  contact: viktor
)

Connection.create!(
  user: carla,
  contact: dani
)

Connection.create!(
  user: carla,
  contact: douglas
)

Connection.create!(
  user: carla,
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
