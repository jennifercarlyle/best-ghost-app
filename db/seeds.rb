# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database..."
User.destroy_all
Ghost.destroy_all

puts "creating users..."
20.times do
  user = User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "123456"
  )
  puts "created #{user.name}"
end

puts "creating ghosts..."
user_array = User.all.sample(10)
user_array.each do |user|
  ghost = Ghost.new(
  name: Faker::Name.name,
  description: Faker::Lorem.paragraph,
  category: %w(good friendly evil pranky helpful).sample,
  age: rand(200..700),
  rate: rand(50..200),
  location: Faker::Address.street_address
  )
  ghost.user = user
  ghost.save!
  puts "created #{ghost.name}"
end

puts "finished!"
