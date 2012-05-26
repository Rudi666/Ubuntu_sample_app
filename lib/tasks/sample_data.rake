namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
       admin.toggle!(:admin)
    admin = User.create!(name: "J. R. Karas",
                 email: "jrkaras@excite.com",
                 password: "fzappa",
                 password_confirmation: "fzappa")
       admin.toggle!(:admin)
      99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
