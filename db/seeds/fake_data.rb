ActiveRecord::Base.transaction do
  # user
  User.destroy_all
  admin_user = User.create!(email: "admin@ms.com", password: "123456")
  normal_user = User.create!(email: "normal@ms.com", password: "123456")
  premium_user = User.create!(email: "premium@ms.com", password: "123456")
  puts admin_user ? "Admin user 建立成功" : "Admin user 建立失敗"
  puts normal_user ? "normal user 建立成功" : "normal user 建立失敗"
  puts premium_user ? "premium user 建立成功" : "premium user 建立失敗"

  # role
  Role.destroy_all
  premium_role = Role.create!(name: 'premium')
  admin_role = Role.create!(name: 'admin')
  puts admin_role ? "Admin role 建立成功" : "Admin role 建立失敗"
  puts premium_user ? "Premium role 建立成功" : "Premium role 建立失敗"

  # setup user_roles
  admin_user.roles << admin_role
  premium_user.roles << premium_role

  # product
  Product.destroy_all
  30.times do 
    Product.create!(
      name: FFaker::Product.product_name,
      price: rand(10000),
      image: FFaker::Image.file
      )
  end
  puts "目前一共有 #{Product.count} 筆資料"
end