# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Role.create(name: "Administrator", status: true)
Role.create(name: "Użytkownik", status: true)

User.create(first_name: "Kamil", last_name: "Pek", email: "pekk", password: "System32", role_id: 1, admin: true)
User.create(first_name: "Demo", last_name: "User", email: "demo", password: "euro2012", role_id: 2)

Vechicle.create(name: "Golf", plates: "GKS 0000", productiondate:"2001-09-11", registration:"2001-09-30", lastrevision:"2017-12-18", nextrevison:"2018-12-18", desc:"", mileage:280500, status:true, user_id:1)
Vechicle.create(name: "Passat", plates: "GKS 0001", productiondate:"2010-05-20", registration:"2010-06-10", lastrevision:"2017-08-12", nextrevison:"2018-08-12", desc:"", mileage:190800, status:true, user_id:1)

VechicleParamType.create(name:"Poziom oleju silnikowego", priority:1, status:true)
VechicleParamType.create(name:"Poziom płynu hamulcowego", priority:1, status:true)
VechicleParamType.create(name:"Poziom płynu chłodniczego", priority:1, status:true)

VechicleParam.create(vechicle_param_type_id:1, user_id:1, vechicle_id:1, value:0.9, desc:"ok")
VechicleParam.create(vechicle_param_type_id:2, user_id:1, vechicle_id:1, value:0.95, desc:"ok")
VechicleParam.create(vechicle_param_type_id:3, user_id:1, vechicle_id:1, value:0.8, desc:"ok")

VechicleCost.create(user_id:1, vechicle_id:1, name:"Zmiana opon i wyważanie", cost:60, desc:"")
VechicleCost.create(user_id:1, vechicle_id:2, name:"Łatanie opony", cost:30, desc:"Gwóźdź w tylniej lewej oponie")
