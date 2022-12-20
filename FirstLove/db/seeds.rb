puts "Seeding Users..."

mason = User.create!(username:"mason", password:"123", firstname:"mason", lastname:"white", address:"123 Main Street", image:"https://images.halloweencostumes.com/products/43386/1-2/sexy-giraffe-womens-costume.jpg")

puts "Done Seeding Users"

puts "Seeding Products..."

25.times do 
  Product.create!(name:"Giraffe",desc:"Female Giraffe", price:45, discount:1, category:"sexy-giraffe", image:"https://images.halloweencostumes.com/products/43386/1-1/sexy-giraffe-womens-costume.jpg", user_id:mason.id)
end
puts "Done Seeding Products"


