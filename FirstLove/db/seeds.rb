# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)





puts "Seeding Users..."

mason = User.create!(username:"mason", password:"123", firstname:"mason", lastname:"white", address:"123 Main Street", image:"https://images.halloweencostumes.com/products/43386/1-2/sexy-giraffe-womens-costume.jpg")

puts "Done Seeding Users"

puts "Seeding Products..."

Product.create!(name:"Giraffe",desc:"Female Giraffe", price:45, discount:1, category:"sexy-giraffe", image:"https://images.halloweencostumes.com/products/43386/1-1/sexy-giraffe-womens-costume.jpg", user_id:mason.id)

puts "Done Seeding Products"


