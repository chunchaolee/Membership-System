require 'rails_helper'

RSpec.describe "Products", type: :routing do
  it "#index: Home page" do
    expect(get: "/").to route_to("products#index")
  end

  it "#new: New product" do
    expect(get: "/products/new").to route_to("products#new")
  end

  it "#create: creat product" do
    expect(post: "/products").to route_to("products#create")
  end

  it "#edit: Edit the product" do
    expect(get: "/products/1/edit").to route_to(
      controller: "products",
      action: "edit",
      id: "1"
      )
  end

  it "#update: Update product" do
    expect(put: "/products/1").to route_to(
      controller: "products",
      action: "update",
      id: "1"
      )
  end
end
