ActiveRecord::Base.transaction do
  Role.destroy_all
  Role.create!(name: 'premium')
  Role.create!(name: 'admin')
end