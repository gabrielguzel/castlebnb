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
castle = { img: "castle.jpg", name: "Howard Castle", price: 100, details: "Le château Howard (en anglais : Castle Howard) est une grande résidence baroque située dans le Yorkshire, en Angleterre, à 40 km d'York. C'est l'un des plus grands châteaux du pays. Il fut construit entre 1699 et 1712 pour Charles Howard, 3e comte de Carlisle par John Vanbrugh." , city:"London", address:"1117 Gore Street", user_id: 1}
castle_2 = { img: "castle_2.jpg", name: "Air Force Castle", price: 200, details: "La Castle Air Force Base est une base aérienne américaine du Strategic Air Command active de 1941 à 1995. Elle se trouve à Atwater, dans le comté de Merced en Californie, 185 km au sud de Sacramento. De 1947 à sa fermeture, la base accueille la 93rd Bombardment Wing, qui met en service le bombardier lourd B-52 Stratofortress en 1955." , city:"Paris", address:"Rue de Ophem 776", user_id: 1}
castle_3 = { img: "castle_3.jpg", name: "Dublin Castle", price: 200, details: "Le château de Dublin (Dublin Castle) fut le siège du pouvoir britannique à Dublin, capitale de l'Irlande, de 1171 à 1922. La plupart des bâtiments datent du xviiie siècle, même si un château s'élevait à cet endroit depuis Jean d'Angleterre (1167—1216)." , city:"Bruxelles", address:"Rue de la Prairie 55", user_id: 1}
castle_4 = { img: "castle_4.jpg", name: "Penrith Castle", price: 100, details: "Le château de Penrith (Penrith Castle) est un château du xve siècle situé dans la ville britannique de Penrith, dans le comté anglais de Cumbria, en face de la gare. Il fait aujourd’hui partie des propriétés de l’English Heritage." , city:"Rome", address:"Via Francesco Barbirieni 332", user_id: 1}
castle_5 = { img: "castle_5.jpg", name: "William Castle", price: 300, details: "Castle William était un fort situé sur l'île de Castle Island dans le port de Boston aux États-Unis. En 1634, le gouverneur de la colonie de la baie du Massachusetts, Thomas Dudley, choisit Castle Island pour y construire les défenses côtières de Boston." , city:"Berlin", address:"Makarenkostr 673", user_id: 1}

[ castle, castle_2, castle_3, castle_4, castle_5 ].each do |attributes|
  castle = Castle.create!(attributes)
  puts "Created #{castle.name}"
end
puts "Finished!"