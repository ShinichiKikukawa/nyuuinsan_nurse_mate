# coding: utf-8

User.create!( name: "管理者",
              email: "sample@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "患者",
              note: "",
              admin: true)

puts "Admin-user.created!"

User.create!(name: "寺林秀隆先生",
              email: "sample-1@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "医師",
              note: "",
              admin: false)

User.create!(name: "永福瑞恵さん",
              email: "sample-2@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "看護師",
              note: "",
              admin: false)

User.create!(name: "木村知子さん",
              email: "sample-3@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "看護師",
              note: "",
              admin: false)

User.create!(name: "山本さん",
              email: "sample-4@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "看護師",
              note: "",
              admin: false)

User.create!(name: "岡田さん",
              email: "sample-5@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "看護師",
              note: "",
              admin: false)

User.create!(name: "石井さん",
              email: "sample-6@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "看護師",
              note: "",
              admin: false)

User.create!(name: "山田さん",
              email: "sample-7@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "看護師",
              note: "",
              admin: false)

User.create!(name: "福谷裕子さん",
              email: "sample-8@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "薬剤師",
              note: "",
              admin: false)

User.create!(name: "川上奈菜さん",
              email: "sample-9@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "社会福祉士",
              note: "",
              admin: false)

User.create!(name: "北原利恵さん",
              email: "sample-10@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "管理栄養士",
              note: "",
              admin: false)

User.create!(name: "東さん",
              email: "sample-11@email.com",
              password: "password",
              password_confirmation: "password",
              occupation: "管理栄養士",
              note: "",
              admin: false)

  admin_user = User.first
  guest_user = User.find(2)

  10.times do |n|
  puts "User-#{n+1}.created!"
  end

  1.times do |n|
    task_date = Date.today
    company = "所感#{n + 1}"
    description = "注意事項#{n + 1}"

    admin_user.tasks.create!(date: task_date, company: company ,description: description)
    guest_user.tasks.create!(date: task_date, company: company ,description: description)
  puts "karutes.created"
  end

  1.times do |n|
    resarch_name = "薬名#{n + 1}"
    company = "効能#{n + 1}"
    description = "注意事項#{n + 1}"

    admin_user.ng_items.create!(name: resarch_name, company: company, description: description)
    guest_user.ng_items.create!(name: resarch_name, company: company, description: description)
  puts "kusuries.created"
  end