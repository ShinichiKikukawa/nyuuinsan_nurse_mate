# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              admin: true)

puts "Admin user.created"

 User.create!(name: "ドラえもん",
               email: "sample-1@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)
 
  User.create!(name: "のび太",
               email: "sample-2@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)
              
  User.create!(name: "しずかちゃん",
               email: "sample-3@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)
              
  User.create!(name: "スネ夫",
               email: "sample-4@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)
              
  User.create!(name: "ジャイアン",
               email: "sample-5@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)
              
  User.create!(name: "のび太ママ",
               email: "sample-6@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)

  User.create!(name: "のび太パパ",
               email: "sample-7@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)
              
  User.create!(name: "ドラミちゃん",
               email: "sample-8@email.com",
               password: "password",
               password_confirmation: "password",
               admin: false)
  
  8.times do |n|
  puts "User#{n+1}.created!"
  end
  
  22.times do |n|
    name  = Faker::Name.name
    email = "sample-#{n+9}@email.com"
    password = "password"
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password,
                 admin: false)
  puts "User#{n+9}.created"
  end

  admin_user = User.first
  guest_user = User.find(2)

  3.times do |n|
    task_name = "利益商品#{n + 1}"
    company = "会社名#{n + 1}"
    store = "店舗名#{n + 1}"
    description = "詳細#{n + 1}"
    admin_user.tasks.create!(name: task_name, company: company,store: store,description: description)
    guest_user.tasks.create!(name: task_name, company: company,store: store,description: description)
  puts "Profit_Items.created"
  end

  3.times do |n|
    resarch_name = "リサーチ済み商品#{n + 1}"
    company = "会社名#{n + 1}"
    store = "店舗名#{n + 1}"
    description = "詳細#{n + 1}"
    admin_user.ng_items.create!(name: resarch_name, company: company,store: store,description: description)
    guest_user.ng_items.create!(name: resarch_name, company: company,store: store,description: description)
  puts "Reseach_Items.created"
  end