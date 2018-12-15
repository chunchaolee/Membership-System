require 'rails_helper'

RSpec.describe RolesController, type: :controller do
  describe "Upgrade to Premium:" do
    it "normal user upgrade to premium" do
      login_as_normal_user
      before_roles_size = @user.roles.size
      premium_role = FactoryBot.create(:premium_role)
      get :premium
      expect(@user.roles.size).to eq(before_roles_size + 1)
      expect(response).to have_http_status(302)
    end

    it "premium user try to upgrate again" do
      login_as_premium_user
      before_roles_size = @user.roles.size
      premium_role = FactoryBot.create(:premium_role)
      get :premium
      expect(@user.roles.size).to eq(before_roles_size)
      expect(response).to have_http_status(302)
    end
  end
end
