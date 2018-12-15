class Product < ApplicationRecord
  validates_presence_of :name, :price, :image
  mount_uploader :image, ImageUploader
end
