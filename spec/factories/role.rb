FactoryBot.define do
  factory :admin_role, class: Role do
    name { 'admin' }
  end

  factory :premium_role, class: Role do
    name { 'premium' }
  end
end
