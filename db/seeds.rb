# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0703646166',
    category:     'japanese'
  },
  {
    name:         'Burger King',
    address:      'Skolgatan',
    phone_number: '0707776166',
    category:     'french'
  },
  {
    name:         'Italian Nice',
    address:      'Gurkgränd',
    phone_number: '0700077166',
    category:     'italian'
  },
  {
    name:         'Smått o gott',
    address:      'Near by',
    phone_number: '0707700166',
    category:     'chinese'
  },
  {
    name:         'Annat',
    address:      'where',
    phone_number: '0707700898',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
