# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.new(name: "Restaurant 5", address: "rua 1", category: "chinese")
Restaurant.new(name: "Restaurant 6", address: "rua 2", category: "italian")
Restaurant.new(name: "Restaurant 7", address: "rua 3", category: "japanese")
Restaurant.new(name: "Restaurant 8", address: "rua 4", category: "french")
Restaurant.new(name: "Restaurant 9", address: "rua 5", category: "belgian")
