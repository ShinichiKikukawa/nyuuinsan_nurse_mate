# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              admin: true)

puts "Admin User Created"

10.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end

puts "Users Created"

admin_user = User.first
guest_user = User.find(2)

10.times do |n|
  task_name = "利益商品#{n + 1}"
  company = "会社名#{n + 1}"
  store = "店舗名#{n + 1}"
  description = "利益商品詳細#{n + 1}"
  admin_user.tasks.create!(name: task_name, company: company,store: store,description: description)
  guest_user.tasks.create!(name: task_name, company: company,store: store,description: description)
end

puts "Items Created"
