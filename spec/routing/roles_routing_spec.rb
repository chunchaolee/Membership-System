require 'rails_helper'

RSpec.describe "Roles", type: :routing do
  it "#upgrade: To Be Premium" do
    expect(get: "/role/upgrade").to route_to("roles#premium")
  end
end
