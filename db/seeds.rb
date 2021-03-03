# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

p bristol = Restaurant.new(name: "Epicure", category: "french")
p london = Restaurant.new(name: "Red Lion", category: "english")
p milano = Restaurant.new(name: "Pizza", category: "italian")
p hamburg = Restaurant.new(name: "Hamburger", category: "german")
p paris = Restaurant.new(name: "Resto", category: "french")


