require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Model associations' do
    it { should have_many(:user_roles) }
    it { should have_many(:roles) }
  end

  describe 'Methods' do
    describe "#is_admin" do
      before do
        @user = FactoryBot.create(:user)
      end

      it 'should exist' do
        expect(@user).to respond_to(:is_admin)
      end

      describe 'should return boolean' do
        it "when role is normal user" do
          result = @user.is_admin
          expect(result).to eq(false)
        end

        it "when role is admin user" do
          @user.roles << FactoryBot.create(:admin_role)
          result = @user.is_admin
          expect(result).to eq(true)
        end

        it "when role is premium user" do
          @user.roles << FactoryBot.create(:premium_role)
          result = @user.is_admin
          expect(result).to eq(false)
        end
      end
    end

    describe 'Methods' do
      describe "#is_premium" do
        before do
          @user = FactoryBot.create(:user)
        end
  
        it 'should exist' do
          expect(@user).to respond_to(:is_premium)
        end
  
        describe 'should return boolean' do
          it "when role is normal user" do
            result = @user.is_premium
            expect(result).to eq(false)
          end
  
          it "when role is admin user" do
            @user.roles << FactoryBot.create(:admin_role)
            result = @user.is_premium
            expect(result).to eq(false)
          end
  
          it "when role is premium user" do
            @user.roles << FactoryBot.create(:premium_role)
            result = @user.is_premium
            expect(result).to eq(true)
          end
        end
      end
    end
  end
end
