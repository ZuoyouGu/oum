namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 addr: "2310 Murray Ave",
                 phone: "123456",
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      addr = Faker::Address.street_address(true)
      phone = Faker::PhoneNumber.phone_number
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end

    Shop.create!(name: "Heaven Palace",
                 addr: "2641 Forbes Ave")
    50.times do |n|
      name  = Faker::Name.name+" Heaven Palace"
      addr = Faker::Address.street_address(false)
      Shop.create!(name: name,
                   addr: addr)
    end
    shops = Shop.all(limit: 6)
    50.times do |n|
      name = Faker::Name.title
      price = 6+(n/10)
      shops.each { |shop| shop.foods.create!(name: name,
      price: price) }
    end
  end
end