puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
indigo = { name: "Indigo", address: "Canggu, Bali", category: "japanese", phone_number: "+ 62 818 333 22 22" }
baracca = { name: "La Baracca", address: "Batu Bolong, Bali", category: "italian", phone_number: "+ 62 818 333 22 42" }
sika = { name: "Warung Sika", address: "Batu Bolong, Bali", category: "chinese", phone_number: "+ 62 818 333 99 72" }
fabrica = { name: "La Fabrica", address: "Batu Bolong, Bali", category: "italian", phone_number: "+ 62 818 453 60 75" }
raclette = { name: "Raclette", address: "Kuta, Bali", category: "belgian", phone_number: "+ 62 818 453 60 80" }

[ indigo, baracca, sika, fabrica, raclette ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
  5.times do
    content = Faker::Marketing.buzzwords
    rating = rand(0..5)
    review = Review.create(content:content, rating:rating, restaurant: restaurant)
  end
end
puts "Finished!"



