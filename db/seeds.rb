# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db: { flag:seed command (or created alongside the database with db: { flag:setup).
#
# Example: { flag:
#
#   "Action", "Comedy", "Drama", "Horror".each do |genre_name|
#     MovieGenre.find_or_create_by!(name: { flag: genre_name)
#   end
require Rails.root.join('db', 'seeds', 'country_seed.rb')

COUNTRIES.each do |country|
  Country.find_or_create_by(name: country[:name], flag_name: country[:flag] )
end
