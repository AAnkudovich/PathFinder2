# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ title: 'Chicago' }, { title: 'Copenhagen' }])
#   Mayor.create(title: 'Emanuel', city: cities.first)

# Items for the Shop
Item.create(title: 'Apples',weight: 50.1,price: 49.95,fragile: 0,locationId: 1,boxId: 1,quantity:100,categoryID:2, image:'http://lymanorchards.com/files/7013/6725/1487/apples.jpg')
Item.create(title: 'iMac 21\"',weight: 7.2,price: 1800,fragile: 1,locationId: 2,boxId: 5,quantity:100,categoryID:1, image:'http://www.wired.com/wp-content/uploads/2015/10/imac-gallery-13-1024x768.jpg')
Item.create(title: 'MacBook Air 11',weight: 1.8,price: 1229.99,fragile: 1,locationId: 5,boxId: 6,quantity:100,categoryID:1, image:'http://www1.pcmag.com/media/images/427604-apple-macbook-air-11-inch-2014.jpg?thumb=y')
Item.create(title: 'MacBook Air 13',weight: 1.8,price: 1329.99,fragile: 1,locationId: 5,boxId: 6,quantity:100,categoryID:1, image:'http://cdn1.expertreviews.co.uk/sites/expertreviews/files/6/19/macbook_air_11_e_1155_0.jpg?itok=1AENmzF3')
Item.create(title: 'MacBook Pro 13',weight: 2.2,price: 1400,fragile: 1,locationId: 5,boxId: 6,quantity:100,categoryID:1, image:'http://images.electricpig.co.uk/wp-content/uploads/2009/07/mbp-1.jpg')
Item.create(title: 'MacBook Pro 15',weight: 2.2,price: 1600,fragile: 1,locationId: 6,boxId: 6,quantity:100,categoryID:1, image:'http://cdn.thelaptopbulletin.com/wp-content/uploads/2015/06/Macbook_Pro_Retina_diaply_2015_design2.jpg')
Item.create(title: 'Bricks',weight: 50,price: 20,fragile: 0,locationId: 7,boxId: 1,quantity:100,categoryID:3, image:'http://mailbricks.com/wp-content/uploads/2015/01/bricks.jpg')
Item.create(title: 'Pears',weight: 45,price: 49.95,fragile: 0,locationId: 8,boxId: 1,quantity:100,categoryID:2, image:'http://a3145z1.americdn.com/wp-content/uploads/2014/02/pears-super-fruit-for-many-disorders-and-diseases1.jpg')
Item.create(title: 'Macbook Air Sleeve',weight: 0.5,price: 29.99,fragile: 0,locationId: 9,boxId: 7,quantity:100,categoryID:4, image:'http://notebooks.wpengine.netdna-cdn.com/wp-content/uploads/2012/06/Lusso-Cartella-MacBook-Air-Sleeve-Review-in-use.jpg')
Item.create(title: 'Macbook Pro Sleeve',weight: 0.5,price: 29.99,fragile: 0,locationId: 10,boxId: 7,quantity:100,categoryID:4, image:'http://media2.popsugar-assets.com/files/2012/07/28/3/192/1922507/381486d5a3ef90a8_Gray_and_Mustard/i/MacBook-Pro-Mustard-Lined-Laptop-Sleeve-36.jpeg')
Item.create(title: 'Macbook Air Screen Protector 11',weight: 0.2,price: 19.99,fragile: 1,locationId: 11,boxId: 7,quantity:100,categoryID:4, image:'http://ecx.images-amazon.com/images/I/31x7SKHY01L.jpg')
Item.create(title: 'Macbook Air Screen Protector 13',weight: 0.2,price: 19.99,fragile: 1,locationId: 12,boxId: 7,quantity:100,categoryID:4, image:'http://ecx.images-amazon.com/images/I/41XmtlASwoL._SL500_AA300_.jpg')
Item.create(title: 'Macbook Pro Screen Protector 13',weight: 0.2,price: 19.99,fragile: 1,locationId: 13,boxId: 7,quantity:100,categoryID:4, image:'http://i.ebayimg.com/00/$(KGrHqV,!lME9knLGn2lBPj872LtWg~~_35.JPG')
Item.create(title: 'Macbook Pro Screen Protector 15',weight: 0.2,price: 19.99,fragile: 1,locationId: 14,boxId: 7,quantity:100,categoryID:4, image:'http://ecx.images-amazon.com/images/I/41Ob-6TGAbL._SY300_.jpg')
Item.create(title: 'iMac 24\"',weight: 9,price: 1999.99,fragile: 1,locationId: 15,boxId: 5,quantity:100,categoryID:1, image:'http://www.wired.com/wp-content/uploads/2015/10/imac-gallery-13-1024x768.jpg')
Item.create(title: 'iMac 28\"',weight: 11,price: 2199.99,fragile: 1,locationId: 16,boxId: 5,quantity:100,categoryID:1, image:'http://www.wired.com/wp-content/uploads/2015/10/imac-gallery-13-1024x768.jpg')
Item.create(title: 'Cement',weight:30,price:10,fragile: 0,locationId:17 ,boxId:3,quantity:100,categoryID:3, image:'http://www.navanhireanddiy.ie/media/catalog/category/cement_20bag_1.jpg')
Item.create(title: 'Concrete Block',weight:130 ,price:200 ,fragile:0 ,locationId:18 ,boxId:1 ,quantity:100,categoryID:3, image:'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT5g-lflTtq9w9wRK_cXDwKGXSqeBZlQA_1WEb_5vwSa-1qDu-6')
Item.create(title: 'Galaxy s7 EDGE',weight: 0.6 ,price: 679 ,fragile: 1,locationId:19 ,boxId:7 ,quantity:100,categoryID:1, image:'http://i1-news.softpedia-static.com/images/news2/samsung-kills-galaxy-s7-edge-plus-following-fans-backlash-500024-2.jpg')
Item.create(title: 'Blender',weight: 3,price: 79.99,fragile: 0,locationId:20 ,boxId: 4,quantity:100,categoryID:5, image:'http://www.atljamaica.com/images/CBLE0KITKSB1570ER.jpg')
Item.create(title: 'Sause Pan',weight: 1,price: 25,fragile: 0,locationId:22 ,boxId: 5,quantity:100,categoryID:5, image:'http://www.beka-cookware.com/assets/products/images/13206144_Suave_Saucepan.jpg')
Item.create(title: 'Frying Pan',weight: 1,price: 20,fragile: 0,locationId:24 ,boxId: 5,quantity:100,categoryID:5, image:'https://www.wmfamericas.com/shop/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/9/1/91.2824.1748.jpg')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:25 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:26 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:27 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:28 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:29 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:30 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:31 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:32 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:33 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:36 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:38 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:39 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:40 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:41 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:44 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:45 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:46 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:47 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:48 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:49 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:50 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:60 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:61 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:62 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:63 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:64 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:65 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:66 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:67 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:68 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:69 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:70 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:71 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:72 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:73 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:75 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:76 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:77 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:78 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:79 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:80 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:81 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:82 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:83 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:84 ,boxId: ,quantity:100,categoryID:, image:'')
# Item.create(title: '',weight: ,price: ,fragile: ,locationId:87 ,boxId: ,quantity:100,categoryID:, image:'')









# Administrator
User.create(email: 'artemankudovich@gmail.com', password: '13245768', name: 'Artem' , is_admin: 1 , is_packer: 0, is_female: 0, address: '16 kilkenny street, castlecomer, co. kilkenny')
# Packers
User.create(email: 'artemankudovich@hotmail.com', password: 'ArtemPacker', name: 'ArtemPacker' , is_admin: 0 , is_packer: 1, is_female: 0)
User.create(email: 'artem.ankudovich@alanmoore.ie', password: 'Packer2', name: 'ArtemPacker2' , is_admin: 0 , is_packer: 1, is_female: 0)

# Categories
Category.create(name: 'Electronics')
Category.create(name:'Food')
Category.create(name:'Building Supplies')
Category.create(name: 'Technology Accessories')
Category.create(name: 'Home and Garden')

# vans
Van.create(regPlate: '161D1')
Van.create(regPlate: '161D2')
Van.create(regPlate: '161D3')
Van.create(regPlate: '161D4')
Van.create(regPlate: '161D5')
Van.create(regPlate: '161D6')
# Shelves
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

Box.create(name: 'xs', points: '5')
Box.create(name: 'sm', points: '10')
Box.create(name: 'ml', points: '15')
Box.create(name: 'lx', points: '20')
Box.create(name: 'lxl', points: '25')
Box.create(name: 'xl', points: '30')
Box.create(name: 'xxl', points: '35')


