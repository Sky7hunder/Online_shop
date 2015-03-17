# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Category.create! id: 1, name: 'Fruits', position: 1

Product.delete_all
Product.create! id: 1, name: "Banana", price: 0.49, active: true, description: "It's a fruit", category_ids: 1
Product.create! id: 2, name: "Apple", price: 0.29, active: true, description: "It's a fruit"
Product.create! id: 3, name: "Carton of Strawberries", price: 1.99, active: true,  description: "It's a fruit"

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"