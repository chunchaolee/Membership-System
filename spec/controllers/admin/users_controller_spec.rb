require 'rails_helper'

RSpec.describe Admin::UsersController, type: :controller do
  describe "Admin user:" do
    before do
      login_as_admin_user
    end

    it "#index" do
      get :index
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
    end

    it "#promotion" do
      post :promotion, params: { user_id: @user.id }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(admin_users_url)
    end

    it "#demotion" do
      delete :demotion, params: { user_id: @user.id }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(admin_users_url)
    end
  end

  describe "User without authorize:" do
    before do
      login_as_normal_user
    end

    it "#index" do
      get :index
      expect(response).to have_http_status(302)
      expect(response).not_to render_template(:index)
      expect(response).to redirect_to(root_url)
    end

    it "#promotion" do
      post :promotion, params: { user_id: @user.id }
      expect(response).to have_http_status(302)
      expect(response).not_to render_template(:index)
      expect(response).to redirect_to(root_url)
    end

    it "#demotion" do
      delete :demotion, params: { user_id: @user.id }
      expect(response).to have_http_status(302)
      expect(response).not_to render_template(:index)
      expect(response).to redirect_to(root_url)
    end
  end
end
