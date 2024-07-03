# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "faker"

Restaurant.create(name: "Chez Manu", address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: Restaurant::CATEGORIES.sample)
Restaurant.create(name: "Chez Pierre", address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: Restaurant::CATEGORIES.sample)
Restaurant.create(name: "Chez Amael", address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: Restaurant::CATEGORIES.sample)
Restaurant.create(name: "Chez Fredo", address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: Restaurant::CATEGORIES.sample)
Restaurant.create(name: "Chez Qassim", address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: Restaurant::CATEGORIES.sample)

[Chez_Manu, Chez_Pierre, Chez_Amael, Chez_Fredo, Chez_Qassim].each do |attributes|
  Restaurant.create!(attributes)
end
