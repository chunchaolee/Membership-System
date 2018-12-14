require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "user does not login" do
    before do
      @product = FactoryBot.create(:product)
    end

    it "#index without login" do
      get :index
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end

    it "#new without login" do
      get :new
      expect(response).to have_http_status(302)
    end

    it "#create without login" do
      post :create
      expect(response).to have_http_status(302)
    end

    it "#edit without login" do
      get :edit, params: { id: @product.id }
      expect(response).to have_http_status(302)
      expect(response).not_to render_template(:edit)
      expect(response).to redirect_to(root_url)
    end

    it "#update without login" do
      patch :update, params: { id: @product.id }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_url)
    end
  end

  describe "user login as normal user" do
    before do
      login_as_normal_user
      @product = FactoryBot.create(:product)
    end

    it "#index" do
      get :index
      expect(response).to render_template(:index)
      expect(response).to have_http_status(200)
    end

    it "#new without authorize" do
      get :new
      expect(response).to have_http_status(302)
      expect(response).not_to render_template(:new)
      expect(response).to redirect_to(root_url)
    end

    it "#create without authorize" do
      post :create
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_url)
    end

    it "#edit without authorize" do
      get :edit, params: { id: @product.id }
      expect(response).to have_http_status(302)
      expect(response).not_to render_template(:edit)
      expect(response).to redirect_to(root_url)
    end

    it "#update without authorize" do
      patch :update, params: { id: @product.id }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_url)
    end
  end

  describe "user login as admin" do
    before do
      login_as_admin_user
      @product = FactoryBot.create(:product)
    end

    it "#new" do
      get :new
      expect(response).to have_http_status(200)
    end

    it "#create" do
      before_prod_count = Product.count
      post :create, params: { product: { name: "test", price: 1000, image: Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/images/test.jpg")) } }
      expect(Product.count).to eq(before_prod_count + 1)
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_path)
    end

    it "#edit" do
      get :edit, params: { id: @product.id }
      expect(response).to have_http_status(200)
      expect(response).to render_template(:edit)
    end

    it "#update" do
      patch :update, params: { id: @product.id, product: { name: "test", price: 1000, image: Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/images/test.jpg")) } }
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(root_path)
    end
  end
end
