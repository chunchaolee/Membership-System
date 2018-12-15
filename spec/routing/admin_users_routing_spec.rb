require 'rails_helper'

RSpec.describe "Admin::User", type: :routing do
  it "#index: user list" do
    expect(get: "/admin/users").to route_to("admin/users#index")
  end

  it "#promotion: Promote user authorize to admin" do
    expect(post: "/admin/users/1/promotion").to route_to(
      controller: "admin/users",
      action: "promotion",
      user_id: "1"
    )
  end

  it "#demotion: demote user authorize to normal from admin" do
    expect(delete: "/admin/users/1/demotion").to route_to(
      controller: "admin/users",
      action: "demotion",
      user_id: "1"
    )
  end
end
