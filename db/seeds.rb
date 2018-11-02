# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

property_types = ["house", "appartment"]

10.times do
  prop = Property.new
  prop.property_type = property_types.sample
  prop.street = Faker::Address.street_name
  prop.house_number = rand(100)
  prop.zip_code = Faker::Address.zip_code
  prop.city = Faker::Address.city
  prop.living_space = rand(300)
  prop.plot_area = Faker::Address.community
  prop.number_of_rooms = rand(10)
  prop.construction_year = rand(1900..2018)
  prop.description = Faker::ChuckNorris.fact
  prop.save
end


