# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bbq_menu = Menu.create(title: "BBQ")
bbq_menu.items << Item.create(name: "hamburger buns")
bbq_menu.items << Item.create(name: "hamburgers")
bbq_menu.items << Item.create(name: "condiments")
bbq_menu.items << Item.create(name: "onions")
bbq_menu.items << Item.create(name: "tomatoes")
bbq_menu.items << Item.create(name: "potato salad")
bbq_menu.items << Item.create(name: "corn")

picnic_menu = Menu.create(title: "Picnic")
picnic_menu.items << Item.create(name: "bread")
picnic_menu.items << Item.create(name: "hummus")
picnic_menu.items << Item.create(name: "cheese")
picnic_menu.items << Item.create(name: "cold cuts")
picnic_menu.items << Item.create(name: "cupcakes")
picnic_menu.items << Item.create(name: "salad")

drink_menu = Menu.create(title: "Drinks")
drink_menu.items << Item.create(name: "water")
drink_menu.items << Item.create(name: "soft drinks")
drink_menu.items << Item.create(name: "juice")
drink_menu.items << Item.create(name: "wine")
drink_menu.items << Item.create(name: "beer")

extras_menu = Menu.create(title: "Extras")
extras_menu.items << Item.create(name: "cutlery")
extras_menu.items << Item.create(name: "napkins")
extras_menu.items << Item.create(name: "plates")
extras_menu.items << Item.create(name: "cups")
