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