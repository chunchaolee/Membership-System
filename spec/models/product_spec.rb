require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validation:" do
    describe 'validates presence of' do
      before do
        @record = Product.new
      end

      it "name" do
        @record.name = ''
        expect(@record).to_not be_valid
        expect(@record.errors[:name]).to include("can't be blank")
      end

      it "price" do
        @record.price = ''
        expect(@record).to_not be_valid
        expect(@record.errors[:price]).to include("can't be blank")
      end

      it "image" do
        @record.image = ''
        expect(@record).to_not be_valid
        expect(@record.errors[:image]).to include("can't be blank")
      end
    end
  end
end
