# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Building.destroy_all
Apartment.destroy_all

10.times do |i|
    Building.create(id: Faker::Number.number(digits: 10), nombre_edificio: Faker::Name.name, direccion: Faker::Address.street_name, ciudad: Faker::Nation.capital_city)
end

Departamentos = Apartment.create([{ numero_depto: '1013' , building_id:1 },
    { numero_depto: '810', building_id:1 }, 
    { numero_depto: '705', building_id:2 },
    { numero_depto: '1015', building_id:3 },
    { numero_depto: '508', building_id:2 },
    { numero_depto: '2010', building_id:4 },
    { numero_depto: '306', building_id:3 },
    { numero_depto: '1008', building_id:5 },
    { numero_depto: '508', building_id:2 }
    ])