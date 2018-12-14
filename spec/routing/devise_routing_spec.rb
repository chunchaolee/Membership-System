require 'rails_helper'

RSpec.describe "Devise::User", type: :routing do
  it "#registrations: sign up" do
    expect(get: "/users/sign_up").to route_to("devise/registrations#new")
  end

  it "#sessions: sign in" do
    expect(get: "/users/sign_in").to route_to("devise/sessions#new")
  end

  it "#sessions: sign out" do
    expect(delete: "/users/sign_out").to route_to("devise/sessions#destroy")
  end

  it "#password: forget password" do
    expect(put: "/users/password").to route_to("devise/passwords#update")
  end
end
