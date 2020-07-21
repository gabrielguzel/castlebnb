# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Castle.destroy_all

puts "Creating castles..."
castle = { img: "castle.jpg", name: "Castle", price: 1000, details: "some details" , city:"London", address:"blablablabla", user_id: 1}
castle_2 = { img: "castle_2.jpg", name: "Castle", price: 1000, details: "some details" , city:"London", address:"blablablabla", user_id: 1}
castle_3 = { img: "castle_3.jpg", name: "Castle", price: 1000, details: "some details" , city:"London", address:"blablablabla", user_id: 1}
castle_4 = { img: "castle_4.jpg", name: "Castle", price: 1000, details: "some details" , city:"London", address:"blablablabla", user_id: 1}
castle_5 = { img: "castle_5.jpg", name: "Castle", price: 1000, details: "some details" , city:"London", address:"blablablabla", user_id: 1}

[ castle, castle_2, castle_3, castle_4, castle_5 ].each do |attributes|
  castle = Castle.create!(attributes)
  puts "Created #{castle.name}"
end
puts "Finished!"