puts '*' * 24
puts 'Seeding Users'

User.create({
  username: "test_user_1",
  email: "Test_user_1@gmail.com",
  password: "password",
  profile_pic: nil
})

User.create({
  username: "test_user_2",
  email: "Test_user_2@gmail.com",
  password: "password",
  profile_pic: nil
})

User.create({
  username: "admin",
  email: "admin@gmail.com",
  password: "password",
  profile_pic: nil
})

puts 'Users successfully seeded ✅'


puts 'Seeding Games'

3.times do
  Game.create({
    user_id: 1,
    title: Faker::Game.title,
    cost: (1000..100000),
    platform: Faker::Game.platform,
    image: nil ,
    posted_by: 'test_user_1',
    posted_on: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)

  })

    Game.create({
    user_id: 2,
    title: Faker::Game.title,
    cost: (1000..100000),
    platform: Faker::Game.platform,
    image: nil ,
    posted_by: 'test_user_2',
    posted_on: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)

  })




end

puts 'Games successfully seeded ✅'
puts '*' * 24