# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ title: 'Chicago' }, { title: 'Copenhagen' }])
#   Mayor.create(title: 'Emanuel', city: cities.first)

Item.create(title: 'Apples',
weight: 5.1,
price: 49.95,
fragile: 0,
locationId: 12,
boxId: 1)

Item.create(title: 'iMac',
weight: 7.2,
price: 1800,
fragile: 1,
locationId: 23,
boxId: 15)
Item.create(title: 'MacBook Air',
weight: 1.8,
price: 1229.99,
fragile: 1,
locationId: 21,
boxId: 11)

Item.create(title: 'MacBook Pro',
weight: 2.2,
price: 1400,
fragile: 1,
locationId: 14,
boxId: 8)

Item.create(title: 'Bricks',
weight: 50,
price: 20,
fragile: 0,
locationId: 2,
boxId: 2)

User.create(email: 'artemankudovich@gmail.com', password: '13245768', name: 'Artem' , is_admin: 1 , is_packer: 0, is_female: 0)
Location.create(lat: '1', lon: '2')
Location.create(lat: '1', lon: '3')
Location.create(lat: '1', lon: '4')
Location.create(lat: '1', lon: '5')
Location.create(lat: '1', lon: '6')
Location.create(lat: '1', lon: '7')
Location.create(lat: '1', lon: '8')
Location.create(lat: '1', lon: '9')
Location.create(lat: '1', lon: '10')
Location.create(lat: '1', lon: '14')
Location.create(lat: '1', lon: '15')
Location.create(lat: '1', lon: '16')
Location.create(lat: '1', lon: '17')
Location.create(lat: '1', lon: '18')
Location.create(lat: '1', lon: '19')
Location.create(lat: '1', lon: '20')
Location.create(lat: '1', lon: '21')
Location.create(lat: '1', lon: '22')
Location.create(lat: '1', lon: '23')
Location.create(lat: '1', lon: '24')
Location.create(lat: '2', lon: '2')
Location.create(lat: '2', lon: '3')
Location.create(lat: '2', lon: '4')
Location.create(lat: '2', lon: '5')
Location.create(lat: '2', lon: '6')
Location.create(lat: '2', lon: '7')
Location.create(lat: '2', lon: '8')
Location.create(lat: '2', lon: '9')
Location.create(lat: '2', lon: '10')
Location.create(lat: '2', lon: '14')
Location.create(lat: '2', lon: '15')
Location.create(lat: '2', lon: '16')
Location.create(lat: '2', lon: '17')
Location.create(lat: '2', lon: '18')
Location.create(lat: '2', lon: '19')
Location.create(lat: '2', lon: '20')
Location.create(lat: '2', lon: '21')
Location.create(lat: '2', lon: '22')
Location.create(lat: '2', lon: '23')
Location.create(lat: '2', lon: '24')



Location.create(lat: '4', lon: '2')
Location.create(lat: '4', lon: '3')
Location.create(lat: '4', lon: '4')
Location.create(lat: '4', lon: '5')
Location.create(lat: '4', lon: '6')
Location.create(lat: '4', lon: '7')
Location.create(lat: '4', lon: '8')
Location.create(lat: '4', lon: '9')
Location.create(lat: '4', lon: '10')
Location.create(lat: '4', lon: '14')
Location.create(lat: '4', lon: '15')
Location.create(lat: '4', lon: '16')
Location.create(lat: '4', lon: '17')
Location.create(lat: '4', lon: '18')
Location.create(lat: '4', lon: '19')
Location.create(lat: '4', lon: '20')
Location.create(lat: '4', lon: '21')
Location.create(lat: '4', lon: '22')
Location.create(lat: '4', lon: '23')
Location.create(lat: '4', lon: '24')
Location.create(lat: '5', lon: '2')
Location.create(lat: '5', lon: '3')
Location.create(lat: '5', lon: '4')
Location.create(lat: '5', lon: '5')
Location.create(lat: '5', lon: '6')
Location.create(lat: '5', lon: '7')
Location.create(lat: '5', lon: '8')
Location.create(lat: '5', lon: '9')
Location.create(lat: '5', lon: '10')
Location.create(lat: '5', lon: '14')
Location.create(lat: '5', lon: '15')
Location.create(lat: '5', lon: '16')
Location.create(lat: '5', lon: '17')
Location.create(lat: '5', lon: '18')
Location.create(lat: '5', lon: '19')
Location.create(lat: '5', lon: '20')
Location.create(lat: '5', lon: '21')
Location.create(lat: '5', lon: '22')
Location.create(lat: '5', lon: '23')
Location.create(lat: '5', lon: '24')



Location.create(lat: '7', lon: '2')
Location.create(lat: '7', lon: '3')
Location.create(lat: '7', lon: '4')
Location.create(lat: '7', lon: '5')
Location.create(lat: '7', lon: '6')
Location.create(lat: '7', lon: '7')
Location.create(lat: '7', lon: '8')
Location.create(lat: '7', lon: '9')
Location.create(lat: '7', lon: '10')
Location.create(lat: '7', lon: '14')
Location.create(lat: '7', lon: '15')
Location.create(lat: '7', lon: '16')
Location.create(lat: '7', lon: '17')
Location.create(lat: '7', lon: '18')
Location.create(lat: '7', lon: '19')
Location.create(lat: '7', lon: '20')
Location.create(lat: '7', lon: '21')
Location.create(lat: '7', lon: '22')
Location.create(lat: '7', lon: '23')
Location.create(lat: '7', lon: '24')
Location.create(lat: '8', lon: '2')
Location.create(lat: '8', lon: '3')
Location.create(lat: '8', lon: '4')
Location.create(lat: '8', lon: '5')
Location.create(lat: '8', lon: '6')
Location.create(lat: '8', lon: '7')
Location.create(lat: '8', lon: '8')
Location.create(lat: '8', lon: '9')
Location.create(lat: '8', lon: '10')
Location.create(lat: '8', lon: '14')
Location.create(lat: '8', lon: '15')
Location.create(lat: '8', lon: '16')
Location.create(lat: '8', lon: '17')
Location.create(lat: '8', lon: '18')
Location.create(lat: '8', lon: '19')
Location.create(lat: '8', lon: '20')
Location.create(lat: '8', lon: '21')
Location.create(lat: '8', lon: '22')
Location.create(lat: '8', lon: '23')
Location.create(lat: '8', lon: '24')

