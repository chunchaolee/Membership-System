FactoryBot.define do
  factory :product, class: Product do
    name { "test" }
    price { 1000 }
    image { Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/images/test.jpg")) }
  end
end
