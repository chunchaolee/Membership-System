FactoryBot.define do
  factory :user, class: User do
    email { FFaker::Internet.email }
    password { FFaker::Internet.password(6) }
  end
end
