# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cutlery = Item.create(name: "cutlery")
plates = Item.create(name: "plates")
bread = Item.create(name: "bread")
napkins = Item.create(name: "napkins")
water = Item.create(name: "water")
beer = Item.create(name: "beer")
chips_hummus = Item.create(name: "chips and hummus")
cupcakes = Item.create(name: "cupcakes")

bbq_menu = Menu.create(title: "BBQ")
bbq_menu.items << cutlery
bbq_menu.items << napkins
bbq_menu.items << plates
bbq_menu.items << beer
bbq_menu.items << Item.create(name: "hamburger buns")
bbq_menu.items << Item.create(name: "hamburgers")
bbq_menu.items << Item.create(name: "condiments")
bbq_menu.items << Item.create(name: "onions")
bbq_menu.items << Item.create(name: "tomatoes")
bbq_menu.items << chips_hummus

picnic_menu = Menu.create(title: "Picnic")
picnic_menu.items << cutlery
picnic_menu.items << napkins
picnic_menu.items << plates
picnic_menu.items << bread
picnic_menu.items << beer
picnic_menu.items << water
picnic_menu.items << chips_hummus
picnic_menu.items << cupcakes
picnic_menu.items << Item.create(name: "chicken salad")

appetizer_menu = Menu.create(title: "Appetizers")
appetizer_menu.items << Item.create(name: "deviled eggs")
appetizer_menu.items << Item.create(name: "bruschetta and crostini")
appetizer_menu.items << chips_hummus
appetizer_menu.items << Item.create(name: "chips and guacamole")
appetizer_menu.items << Item.create(name: "cheese and crackers")

dessert_menu = Menu.create(title: "Desserts")
dessert_menu.items << cupcakes
dessert_menu.items << Item.create(name: "cake")
dessert_menu.items << Item.create(name: "pie")
dessert_menu.items << Item.create(name: "cookies")
dessert_menu.items << Item.create(name: "ice cream")

drink_menu = Menu.create(title: "Drinks")
drink_menu.items << water
drink_menu.items << Item.create(name: "soft drinks")
drink_menu.items << Item.create(name: "juice")
drink_menu.items << Item.create(name: "wine")
drink_menu.items << beer

extras_menu = Menu.create(title: "Extras")
extras_menu.items << cutlery
extras_menu.items << napkins
extras_menu.items << plates
extras_menu.items << Item.create(name: "cups")
