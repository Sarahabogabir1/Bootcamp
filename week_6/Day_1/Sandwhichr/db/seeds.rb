	# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Sandwich.create(name: "Italian",bread_type: "white")
Sandwich.create(name: "French", bread_type: "wheat")

Ingredient.create(name: "olives", calories: 100)
Ingredient.create(name: "ketchup", calories: 800)


