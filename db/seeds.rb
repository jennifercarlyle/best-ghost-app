# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database..."
Ghost.destroy_all
User.destroy_all


20.times do
  user = User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "123456"
  )
  puts "created #{user.name}"
end

user_array = User.all.sample(16)
p user_array
puts "creating ghosts..."

ghost_1 = Ghost.new(name: "Laurence the Howler", description: "Lawrence is one of the most prolific wailers in this industry, renowned for epic long howls.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_1.photo.attach(io: File.open('app/assets/images/ghost_1.jpeg'), filename: 'ghost_1.jpeg', content_type: 'image/jpeg')
ghost_1.user_id = user_array[1].id
ghost_1.save!

ghost_2 = Ghost.new(name: "Sarah el Typo ", description: "Haunting sticky keys for years and yearsç - be warned!",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_2.photo.attach(io: File.open('app/assets/images/ghost_2.jpeg'), filename: 'ghost_2.jpeg', content_type: 'image/jpeg')
ghost_2.user_id = user_array[2].id
ghost_2.save!

ghost_3 = Ghost.new(name: "Kinky Spence", description: "S&M KINK - only book if you are ready for full-on no holds-barred dungeon rave.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_3.photo.attach(io: File.open('app/assets/images/ghost_3.jpeg'), filename: 'ghost_3.jpeg', content_type: 'image/jpeg')
ghost_3.user_id = user_array[3].id
ghost_3.save!

ghost_4 = Ghost.new(name: "Tiana the Elusive", description: "You might not be able to guarantee that Tiana will turn up but if she does it will be worth it. Spooktacular fun!",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_3.photo.attach(io: File.open('app/assets/images/ghost_3.jpeg'), filename: 'ghost_3.jpeg', content_type: 'image/jpeg')
ghost_4.user_id = user_array[4].id
ghost_4.save!

ghost_5 = Ghost.new(name: "Mr. Veni Questions", description: "Non-stop chatter hauntings, 24/7 questions and comments and if you're Irish you've got no chance.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_5.photo.attach(io: File.open('app/assets/images/ghost_5.jpeg'), filename: 'ghost_5.jpeg', content_type: 'image/jpeg')
ghost_5.user_id = user_array[5].id
ghost_5.save!

ghost_6 = Ghost.new(name: "Ethereal Vera", description: "Ethereal and mysterious. Rare find and brings deep knowledge of the sublime world.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_6.photo.attach(io: File.open('app/assets/images/ghost_6.jpeg'), filename: 'ghost_6.jpeg', content_type: 'image/jpeg')
ghost_6.user_id = user_array[6].id
ghost_6.save!

ghost_7 = Ghost.new(name: "Count Visor Arthur", description: "Spectacular Spook Fest - comes with their very own custom-built ghost visor and never knowingly less that enthusiasm levels of +4000.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_7.photo.attach(io: File.open('app/assets/images/ghost_7.jpeg'), filename: 'ghost_7.jpeg', content_type: 'image/jpeg')
ghost_7.user_id = user_array[7].id
ghost_7.save!

ghost_8 = Ghost.new(name: "Canine Dean", description: "Woof Woof - canine haunting! Dean is an animagi who can morph from ghost to hound and back again in a blink of the eye. Perfect for any pet parties.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_8.photo.attach(io: File.open('app/assets/images/ghost_8.jpeg'), filename: 'ghost_8.jpeg', content_type: 'image/jpeg')
ghost_8.user_id = user_array[8].id
ghost_8.save!

ghost_9 = Ghost.new(name: "1-minute-to-go Chloe", description: "Always delivers with some of the most forensic hauntings ever seen but be prepared for a last-minute entrance. Make sure you book well in advance.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_9.photo.attach(io: File.open('app/assets/images/ghost_10.jpeg'), filename: 'ghost_10.jpeg', content_type: 'image/jpeg')
ghost_9.user_id = user_array[9].id
ghost_9.save!

ghost_10 = Ghost.new(name: "Sweet Metal Joe", description: "Have you ever met a kinder ghost? Will always check in and make sure everyone is ok before spooking their way around. Good with children and pets.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_10.photo.attach(io: File.open('app/assets/images/ghost_10.jpeg'), filename: 'ghost_10.jpeg', content_type: 'image/jpeg')
ghost_10.user_id = user_array[10].id
ghost_10.save!

ghost_11 = Ghost.new(name: "El Classico Cinema Borja", description: "Speciality in haunting old cinemas and movie halls. Has been known to travel through Netflix accounts.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_11.photo.attach(io: File.open('app/assets/images/ghost_11.jpeg'), filename: 'ghost_11.jpeg', content_type: 'image/jpeg')
ghost_11.user_id = user_array[11].id
ghost_11.save!

ghost_12 = Ghost.new(name: "Too-kind-to-haunt-Emma", description: "Not the best at scaring or haunting - too nice. If you need a good heart to heart with a ghost, this is the one.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_12.photo.attach(io: File.open('app/assets/images/ghost_12.jpeg'), filename: 'ghost_12.jpeg', content_type: 'image/jpeg')
ghost_12.user_id = user_array[12].id
ghost_12.save!

ghost_13 = Ghost.new(name: "Nathalia the Sugar Searcher", description: "Candy queen who will haunt your sweet treats shelf.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_13.photo.attach(io: File.open('app/assets/images/ghost_13.jpeg'), filename: 'ghost_13.jpeg', content_type: 'image/jpeg')
ghost_13.user_id = user_array[13].id
ghost_13.save!

ghost_14 = Ghost.new(name: "Eduard Charasmatico", description: "This will be one of the most original and bizarre experiences of your life.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_14.photo.attach(io: File.open('app/assets/images/ghost_14.jpeg'), filename: 'ghost_14.jpeg', content_type: 'image/jpeg')
ghost_14.user_id = user_array[14].id
ghost_14.save!

ghost_15 = Ghost.new(name: "Yonatan the friendly ghost", description: "What can be said for Yonatan - good company and good laughs. Loves a giggle whilst doing a haunting.",
category: %w(friendly humorous terrifying prankster sexy helpful).sample, age: rand(200..700), rate: rand(50..200), location: Faker::Address.street_address)
ghost_15.photo.attach(io: File.open('app/assets/images/ghost_15.jpeg'), filename: 'ghost_15.jpeg', content_type: 'image/jpeg')
ghost_15.user_id = user_array[15].id
ghost_15.save!


puts "finished!"
