# criar entradas pro meu banco de dados
# aka criar restaurantes falsos
require 'faker'

puts "Creating restaurants"
9.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(0..5)
  )
end
puts "Done!"
